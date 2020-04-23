package com.macro.mall.service.impl;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.macro.mall.common.api.ClassUtil;
import com.macro.mall.dto.BudgetParam;
import com.macro.mall.dto.ImportDateParam;
import com.macro.mall.mapper.BudgetFieldMapper;
import com.macro.mall.mapper.BudgetMapper;
import com.macro.mall.model.*;
import com.macro.mall.service.BudgetService;
import io.swagger.annotations.ApiModelProperty;
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
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class BudgetServiceImpl implements BudgetService {
    @Autowired
    private BudgetMapper budgetMapper;
    @Autowired
    private BudgetFieldMapper budgetFieldMapper;

    @Override
    public List<Budget> list(Long userId, BudgetParam budgetParam, Integer pageNum, Integer pageSize, String fieldName, String sortingType) {
        PageHelper.startPage(pageNum, pageSize);
        BudgetExample example = new BudgetExample();
        if(fieldName!=null&&sortingType!=null&&!"null".equals(fieldName)&&!"null".equals(sortingType)){
            example.setOrderByClause(fieldName+" "+ sortingType);
        }else {
            example.setOrderByClause(" trade_data desc");
        }
        BudgetExample.Criteria criteria = example.createCriteria();
        if(StringUtils.isNotEmpty(budgetParam.getIds())) {
            String ids = budgetParam.getIds();
            String[] split = ids.split(",");
            List<Long> _ids = new ArrayList<>();
            for (String id : split) {
                _ids.add(Long.valueOf(id));
            }
            criteria.andIdIn(_ids);
        }else{
            if(StringUtils.isNotEmpty(budgetParam.getAmountRemark())){
                criteria.andAmountRemarkLike(budgetParam.getAmountRemark());
            }
            if(StringUtils.isNotEmpty(budgetParam.getCheckName())){
                criteria.andCheckNameLike(budgetParam.getCheckName());
            }
            if(StringUtils.isNotEmpty(budgetParam.getIncome())){
                criteria.andIncomeLike(budgetParam.getIncome());
            }
            if(StringUtils.isNotEmpty(budgetParam.getIncomeAccount())){
                criteria.andIncomeAccountLike(budgetParam.getIncomeAccount());
            }
            if(StringUtils.isNotEmpty(budgetParam.getIncomeName())){
                criteria.andIncomeNameLike(budgetParam.getIncomeName());
            }
            if(StringUtils.isNotEmpty(budgetParam.getIncomeRemark())){
                criteria.andIncomeLike(budgetParam.getIncomeRemark());
            }
            if(StringUtils.isNotEmpty(budgetParam.getPayAccount())){
                criteria.andPayAccountLike(budgetParam.getPayAccount());
            }
            if(StringUtils.isNotEmpty(budgetParam.getPayName())){
                criteria.andPayNameLike(budgetParam.getPayName());
            }
            if(StringUtils.isNotEmpty(budgetParam.getPayRemark())){
                criteria.andPayRemark(budgetParam.getPayRemark());
            }
            if(StringUtils.isNotEmpty(budgetParam.getRemark())){
                criteria.andRemark(budgetParam.getRemark());
            }
            if(StringUtils.isNotEmpty(budgetParam.getType())){
                criteria.andTypeLike(budgetParam.getType());
            }
            if(StringUtils.isNotEmpty(budgetParam.getStoreName())){
                criteria.andStoreNameLike(budgetParam.getStoreName());
            }
            if(StringUtils.isNotEmpty(budgetParam.getCheckName())){
                criteria.andCheckNameLike(budgetParam.getCheckName());
            }
            if(StringUtils.isNotEmpty(budgetParam.getAnyColumn())){
                criteria.andAnyColumnLike(budgetParam.getAnyColumn());
            }
            if(budgetParam.getStartDate()!=null){
                criteria.andTradeDataGreaterThanOrEqualTo(budgetParam.getStartDate());
            }
            if(budgetParam.getEndDate()!=null){
                criteria.andTradeDataLessThanOrEqualTo(budgetParam.getEndDate());
            }
        }
        List<Budget> list = this.budgetMapper.selectByExampleWithBLOBs(example);
        BudgetField field = this.budgetFieldMapper.getFieldFillterByUserId(userId);
        this.getByFieldFiltter(list, field);
        return list;
    }
    @Override
    public List<Budget> selectByExampleWithBLOBs(BudgetExample example){
        return this.budgetMapper.selectByExampleWithBLOBs(example);
    }

    @Override
    public List<Budget> listAll(Long userId) {
        return null;
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
    public List<String> upload(String excelArr, String excelData,String userName,Long userId) {
        List<String> list = JSON.parseObject(excelArr, List.class);
        Map<String,Object> map = JSON.parseObject(excelData, Map.class);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        List<String> result = new ArrayList<>();
        list.remove(0);
        if(list!=null&&!list.isEmpty()){
            List<Budget> l = new ArrayList<>();
            int row = 2;
            for (String a: list) {
                StringBuilder sb = new StringBuilder();
                List<String> ar = JSON.parseObject(a, List.class);
                Budget imd = new Budget();
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
                    imd.setTradeData(parse);
                }
//                "交易日期","店名","类别","金额相关备注","支出金额","收入金额","支出方名称","支出方账户","支出方备注","收入方名称","收入方账户","收入方备注","备注","核对人"
//                "年月日","编号","A信息","旺旺号","A金额","店名","B金额","C佣金","B信息","备注1","备注2","备注3"
                if(map.get(ar.get(1))!=null){
                    String storeName = String.valueOf(map.get(ar.get(1)));
                    imd.setStoreName(storeName);
                }
                if(map.get(ar.get(2))!=null){
                    String type = String.valueOf(map.get(ar.get(2)));
                    imd.setType(type);
                }
                if(map.get(ar.get(3))!=null){
                    String amountRemark = String.valueOf(map.get(ar.get(3)));
                    imd.setAmountRemark(amountRemark);
                }
                if(map.get(ar.get(4))!=null){
                    if(isNumeric(String.valueOf(map.get(ar.get(4))))) {
                        String pay = String.valueOf(map.get(ar.get(4)));
                        imd.setPay(pay);
                    }else {
                        sb.append("支出金额不是数值类型;");
                    }
                }
                if(map.get(ar.get(5))!=null){
                    if(isNumeric(String.valueOf(map.get(ar.get(5))))) {
                        String income = String.valueOf(map.get(ar.get(5)));
                        imd.setIncome(income);
                    }else{

                    }
                }
                if(map.get(ar.get(6))!=null){
                        String payName = String.valueOf(map.get(ar.get(6)));
                        imd.setPayName(payName);
                }
                if(map.get(ar.get(7))!=null){
                        String payAccount = String.valueOf(map.get(ar.get(7)));
                        imd.setPayAccount(payAccount);
                }
                if(map.get(ar.get(8))!=null){
                    String payRemark = String.valueOf(map.get(ar.get(7)));
                    imd.setPayRemark(payRemark);
                }
                if(map.get(ar.get(9))!=null){
                    String incomeName = String.valueOf(map.get(ar.get(9)));
                    imd.setIncomeName(incomeName);
                }
                if(map.get(ar.get(10))!=null){
                    String incomeAccount = String.valueOf(map.get(ar.get(10)));
                    imd.setIncomeAccount(incomeAccount);
                }
                if(map.get(ar.get(11))!=null){
                    String incomeRemark = String.valueOf(map.get(ar.get(11)));
                    imd.setIncomeRemark(incomeRemark);
                }
                if(map.get(ar.get(12))!=null){
                    String remark = String.valueOf(map.get(ar.get(12)));
                    imd.setRemark(remark);
                }
                if(map.get(ar.get(13))!=null){
                    String checkName = String.valueOf(map.get(ar.get(13)));
                    imd.setCheckName(checkName);
                }

                imd.setCreateUserId(userId.intValue());
                imd.setCreateUsername(userName);
                l.add(imd);
                if(StringUtils.isNotEmpty(sb.toString())){
                    result.add("excel表第"+row+"行:"+sb.toString());
                }
                row++;
            }
            if(result==null||result.isEmpty()){
                for (Budget imd: l) {
                    this.budgetMapper.insert(imd);
                }
            }
        }else{
            result.add("没有任何有效的数据，请检查excel表");
        }
        return result;
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
    public Budget getBudget(Long id,Long userId) {
        Budget budget = this.budgetMapper.selectByPrimaryKey(id.intValue());
        BudgetField field = this.budgetFieldMapper.getFieldFillterByUserId(userId);
        List<Budget> list = new ArrayList<>();
        list.add(budget);
        this.getByFieldFiltter(list, field);
        return list.get(0);
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
        this.budgetMapper.deleteByPrimaryKey(id.intValue());
        return true;
    }

    @Override
    public boolean update(Long id, Budget budget) {
        int i = this.budgetMapper.updateByPrimaryKeySelective(budget);
        if (i == 0)
            return false;
        else if (i == 1)
            return true;
        return false;
    }

    @Override
    public boolean save(Budget budget) {
        int insert = this.budgetMapper.insert(budget);
        if (insert == 0)
            return false;
        else if (insert == 1)
            return true;
        return false;
    }

    public boolean isNumeric(String str) {
        //Pattern pattern = Pattern.compile("-?[0-9]+.?[0-9]+");//这个有问题，一位的整数不能通过
        Pattern pattern = Pattern.compile("^(\\-|\\+)?\\d+(\\.\\d+)?$");//这个是对的
        Matcher isNum = pattern.matcher(str);
        if (!isNum.matches()) {
            return false;
        }
        return true;
    }
    @Override
    public String doDeleteHis(String ids ,Long userId){
        String _ids = "";
        List<String> hasNotRemoveIds = new ArrayList<>();
        BudgetParam budgetParam = new BudgetParam();
        budgetParam.setIds(ids);
        List<Budget> list = this.list(userId, budgetParam, 1, Integer.MAX_VALUE, null, null);
        for (Budget data: list) {
            if(data.getCreateUserId().equals(userId)){
                this.delete(data.getId().longValue());
            }else{
                hasNotRemoveIds.add(String.valueOf(data.getId()));
            }
        }
        if(hasNotRemoveIds!=null&&!hasNotRemoveIds.isEmpty()){
            _ids = StringUtils.join(hasNotRemoveIds,",");
        }
        return _ids;
    }
    public List<Budget> getByFieldFiltter(List<Budget> list,BudgetField field){
        if(field==null){
            field = new BudgetField();
        }
        if(list!=null&&!list.isEmpty()){
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date date = null;
            try {
                date = sdf.parse("1900-01-01");
            } catch (ParseException e) {
                e.printStackTrace();
            }
            for (Budget a: list) {
                if(field.getAmountremark()==0){
                    a.setAmountRemark("*");
                }
                if(field.getCheckname()==0){
                    a.setCheckName("*");
                }
                if(field.getCreateusername()==0){
                    a.setCreateUsername("*");
                }
                if(field.getIncome()==0){
                    a.setIncome("*");
                }
                if(field.getIncomeaccount()==0){
                    a.setIncomeAccount("*");
                }
                if(field.getIncomename()==0){
                    a.setIncomeName("*");
                }
                if(field.getIncomeremark()==0){
                    a.setIncomeRemark("*");
                }
                if(field.getPay()==0){
                    a.setPay("*");
                }
                if(field.getPayaccount()==0){
                    a.setPayAccount("*");
                }
                if(field.getPayname()==0){
                    a.setPayName("*");
                }
                if(field.getPayremark()==0){
                    a.setPayRemark("*");
                }
                if(field.getRemark()==0){
                    a.setRemark("*");
                }
                if(field.getStorename()==0){
                    a.setStoreName("*");
                }
                if(field.getType()==0){
                    a.setType("*");
                }
                if(field.getTradedata()==0){
                    a.setTradeData(date);
                }

            }
        }
        return list;
    }

}
