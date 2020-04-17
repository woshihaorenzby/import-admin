package com.macro.mall.service.impl;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.macro.mall.common.api.ClassUtil;
import com.macro.mall.dto.ImportDateParam;
import com.macro.mall.mapper.ImportDataMapper;
import com.macro.mall.mapper.ImportFieldMapper;
import com.macro.mall.model.ImportData;
import com.macro.mall.model.ImportDataExample;
import com.macro.mall.model.ImportField;
import com.macro.mall.service.ImportDataService;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletResponse;
import java.beans.IntrospectionException;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class ImportDataServiceImpl implements ImportDataService {
    @Autowired
    private ImportDataMapper importDataMapper;
    @Autowired
    private ImportFieldMapper importFieldMapper;
    @Override
    public List<ImportData> listAll(Long userId) {
        return null;
    }

    @Override
    public List<ImportData> list(Long userId, ImportDateParam importDateParam, Integer pageNum, Integer pageSize,String fieldName,String sortingType) {
        PageHelper.startPage(pageNum, pageSize);
        ImportDataExample example = new ImportDataExample();
        if(fieldName!=null&&sortingType!=null&&!"null".equals(fieldName)&&!"null".equals(sortingType)){
            if(fieldName.equals("aPrice")){
                fieldName = "a_price";
            }
            if(fieldName.equals("bPrice")){
                fieldName = "b_price";
            }
            example.setOrderByClause(fieldName+" "+ sortingType);
        }else {
            example.setOrderByClause(" addTime desc");
        }
        ImportDataExample.Criteria criteria = example.createCriteria();
        if(StringUtils.isNotEmpty(importDateParam.getIds())) {
            String ids = importDateParam.getIds();
            String[] split = ids.split(",");
            List<Long> _ids = new ArrayList<>();
            for (String id : split) {
                _ids.add(Long.valueOf(id));
            }
            criteria.andIdIn(_ids);
        }else{
            if(StringUtils.isNotEmpty(importDateParam.getInfo1())){
                criteria.andAInfoLike(importDateParam.getInfo1());
            }
            if(StringUtils.isNotEmpty(importDateParam.getWangwangId())){
                criteria.andWangwangIdLike(importDateParam.getWangwangId());
            }
            if(StringUtils.isNotEmpty(importDateParam.getInfo2())){
                criteria.andBInfoLike(importDateParam.getInfo2());
            }
            if(StringUtils.isNotEmpty(importDateParam.getStoreName())){
                criteria.andStoreNameLike(importDateParam.getStoreName());
            }
            if(StringUtils.isNotEmpty(importDateParam.getRemark1())){
                criteria.andRemark1(importDateParam.getRemark1());
            }
            if(StringUtils.isNotEmpty(importDateParam.getRemark2())){
                criteria.andRemark2(importDateParam.getRemark2());
            }
            if(StringUtils.isNotEmpty(importDateParam.getRemark3())){
                criteria.andRemark3(importDateParam.getRemark3());
            }
            if(importDateParam.getStartDate()!=null){
                criteria.andAddtimeGreaterThanOrEqualTo(importDateParam.getStartDate());
            }
            if(importDateParam.getEndDate()!=null){
                criteria.andAddtimeLessThanOrEqualTo(importDateParam.getEndDate());
            }
        }
        List<ImportData> list = this.importDataMapper.selectByExampleWithBLOBs(example);
        ImportField field = this.importFieldMapper.getFieldFillterByUserId(userId);
        if(field==null){
            field = new ImportField();
        }
        if(list!=null&&!list.isEmpty()){
            for (ImportData a: list) {
                if(field.getAInfo()==0){
                    a.setaInfo("*");
                }
                if(field.getAPrice()==0){
                    a.setaPrice(new BigDecimal(-1));
                }
                if(field.getBInfo()==0){
                    a.setbInfo("*");
                }
                if(field.getBPrice()==0){
                    a.setaPrice(new BigDecimal(-1));
                }
                if(field.getCommission()==0){
                    a.setCommission(new BigDecimal(-1));
                }
                if(field.getImportDay()==0){
                    a.setAddTime(null);
                }
                if(field.getRemark1()==0){
                    a.setRemark1("*");
                }
                if(field.getRemark2()==0){
                    a.setRemark2("*");
                }
                if(field.getRemark3()==0){
                    a.setRemark3("*");
                }
                if(field.getStoreName()==0){
                    a.setStoreName("*");
                }
                if(field.getWangwangId()==0){
                    a.setWangwangId("*");
                }
            }
        }
        return list;
    }
    @Override
    public List<ImportData> selectByExampleWithBLOBs(ImportDataExample example){

        return this.importDataMapper.selectByExampleWithBLOBs(example);
    }

    /**
     * 将传入的数据导出excel表并下载
     * @param response 返回的HttpServletResponse
     * @param importlist 要导出的对象的集合
     * @param attributeNames 含有每个对象属性在excel表中对应的标题字符串的数组（请按对象中属性排序调整字符串在数组中的位置）
     */
    @Override
    public void export(HttpServletResponse response, List<?> importlist, String[] attributeNames) {
        //获取数据集
        List<?> datalist = importlist;

        //声明一个工作薄
        HSSFWorkbook workbook = new HSSFWorkbook();
        //生成一个表格
        HSSFSheet sheet = workbook.createSheet();
        //设置表格默认列宽度为15个字节
        sheet.setDefaultColumnWidth((short) 18);
        List<Method> methodList = new ArrayList<>();
        Map<String, Field> apiModelPropertyField = new HashMap<>();
        //获取字段名数组
        String[] tableAttributeName = attributeNames;
        if(importlist!=null&&!importlist.isEmpty()){
            //获取对象属性
            Field[] fields = ClassUtil.getClassAttribute(importlist.get(0));
            try {
                apiModelPropertyField= ClassUtil.getApiModelPropertyField(fields);
            } catch (Exception e) {
                e.printStackTrace();
            }
            //获取对象get方法
            methodList = ClassUtil.getMethodGet(importlist.get(0));
        }

        //循环字段名数组，创建标题行
        Row row = sheet.createRow(0);
        for (int j = 0; j< tableAttributeName.length; j++){
            //创建列
            Cell cell = row.createCell(j);
            //设置单元类型为String
            cell.setCellType(CellType.STRING);
            cell.setCellValue(transCellType(tableAttributeName[j]));
        }
        if(importlist!=null&&!importlist.isEmpty()){
            for (int i = 0;i<datalist.size();i++){
                //因为第一行已经用于创建标题行，故从第二行开始创建
                row = sheet.createRow(i+1);
                //如果是第一行就让其为标题行
                Object targetObj = datalist.get(i);
                for (int j = 0;j<tableAttributeName.length;j++){
                    //创建列
                    Cell cell = row.createCell(j);
                    cell.setCellType(CellType.STRING);
                    Field field = apiModelPropertyField.get(tableAttributeName[j]);
                    try {
                        Object value = "";
                        if(field!=null){
                            value= ClassUtil.getValueByField(field,targetObj);
                        }
                        cell.setCellValue(transCellType(value));
                    } catch (IllegalAccessException e) {
                        e.printStackTrace();
                    } catch (InvocationTargetException e) {
                        e.printStackTrace();
                    } catch (IntrospectionException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        //创建普通行
        response.setContentType("application/octet-stream");
        //默认Excel名称
        response.setHeader("Content-Disposition", "attachment;fileName="+"test.xls");
        response.addHeader("fileName","我是好人.xls");

        try {
//            PrintWriter writer = response.getWriter();
//            writer.write(JSON.toJSONString(CommonResult.success(null)));
            response.flushBuffer();
            workbook.write(response.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    @Override
    public Integer upload(String excelArr, String excelData,String userName,Long userId) {
        Integer i= 0;
        List<String> list = JSON.parseObject(excelArr, List.class);
        Map<String,Object> map = JSON.parseObject(excelData, Map.class);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        if(list!=null&&!list.isEmpty()){
            list.remove(0);
            for (String a: list) {
                List<String> ar = JSON.parseObject(a, List.class);
                ImportData imd = new ImportData();
                if(map.get(ar.get(0))!=null){
                    String date = String.valueOf(map.get(ar.get(0)));
                    Date parse = new Date();
                    try {
                        if(StringUtils.isNotEmpty(date)){
                            parse = sdf.parse(date);
                        }
                    } catch (ParseException e) {
                        e.printStackTrace();
                    }
                    imd.setAddTime(parse);
                }
//                "年月日","编号","A信息","旺旺号","A金额","店名","B金额","C佣金","B信息","备注1","备注2","备注3"
                if(map.get(ar.get(1))!=null){
                    String code = String.valueOf(map.get(ar.get(1)));
                    imd.setWangwangId(code);
                }
                if(map.get(ar.get(4))!=null){
                    String aInfo = String.valueOf(map.get(ar.get(4)));
                    imd.setaInfo(aInfo);
                }
                if(map.get(ar.get(1))!=null){
                    String wangwangId = String.valueOf(map.get(ar.get(1)));
                    imd.setWangwangId(wangwangId);
                }
                if(map.get(ar.get(2))!=null){
                    BigDecimal commission =new BigDecimal(String.valueOf(map.get(ar.get(2))));
                    imd.setCommission(commission);
                }


                if(map.get(ar.get(5))!=null){
                    BigDecimal bPrice = new BigDecimal(String.valueOf(map.get(ar.get(5))));
                    imd.setbPrice(bPrice);
                }
                if(map.get(ar.get(6))!=null){
                    String bInfo = String.valueOf(map.get(ar.get(6)));
                    imd.setbInfo(bInfo);
                }
                if(map.get(ar.get(7))!=null){
                    String storeName = String.valueOf(map.get(ar.get(7)));
                    imd.setStoreName(storeName);
                }
                if(map.get(ar.get(8))!=null){
                    String remark1 = String.valueOf(map.get(ar.get(8)));
                    imd.setRemark1(remark1);
                }
                if(map.get(ar.get(9))!=null){
                    String remark2 = String.valueOf(map.get(ar.get(9)));
                    imd.setRemark2(remark2);
                }
                if(map.get(ar.get(10))!=null){
                    String remark3 = String.valueOf(map.get(ar.get(10)));
                    imd.setRemark3(remark3);
                }
                this.importDataMapper.insert(imd);
            }
        }
        return i;
    }

    @Override
    public Integer doDeleteByIds(String ids) {
        Integer i = 0;
        if(StringUtils.isNotEmpty(ids)){
            String[] split = ids.split(",");
            for (String id: split) {
                this.delete(Long.valueOf(id));
            }
        }
        return i;
    }

    @Override
    public ImportData getImportData(Long id) {
        return this.importDataMapper.selectByPrimaryKey(id.intValue());
    }

    private static String transCellType(Object value){
        String str = null;
        if (value instanceof Date){
            Date date = (Date) value;
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            str = sdf.format(date);
        }else{
            str = String.valueOf(value);
            if (str == "null"){
                str = "";
            }
        }

        return str;
    }

    @Override
    public boolean doImport() {
        return false;
    }

    @Override
    public boolean delete(Long id) {
        this.importDataMapper.deleteByPrimaryKey(id.intValue());
        return true;
    }

    @Override
    public boolean update(Long id, ImportData importData) {
        int i = this.importDataMapper.updateByPrimaryKeyWithBLOBs(importData);
        if (i == 0)
            return false;
        else if (i == 1)
            return true;
        return false;
    }

    @Override
    public boolean save(ImportData importData) {
        importData.setAddTime(new Date());
        int insert = this.importDataMapper.insert(importData);
        if (insert == 0)
            return false;
        else if (insert == 1)
            return true;
        return false;
    }
}
