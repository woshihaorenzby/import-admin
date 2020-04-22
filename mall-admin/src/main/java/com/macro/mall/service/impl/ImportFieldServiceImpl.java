package com.macro.mall.service.impl;

import com.macro.mall.mapper.BudgetFieldMapper;
import com.macro.mall.mapper.ImportField1Mapper;
import com.macro.mall.mapper.ImportFieldMapper;
import com.macro.mall.model.*;
import com.macro.mall.service.ImportDataService;
import com.macro.mall.service.ImportFieldService;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.beans.IntrospectionException;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 会员等级管理Service
 * Created by macro on 2018/4/26.
 */
@Service
public class ImportFieldServiceImpl implements ImportFieldService {

    @Autowired
    private ImportFieldMapper importFieldMapper;
    @Autowired
    private BudgetFieldMapper budgetFieldMapper;
    @Autowired
    private ImportField1Mapper importField1Mapper;

    /**
     * 获取所有会员登录
     *
     * @param roleId 角色Id
     */
    @Override
    public List<Map<String,Object>> listAllByRoleId(Long roleId) {
        List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
        ImportField field = this.getObjByRoleId(roleId);
        BudgetField bugBudgetField = this.getBugBudgetObjByRoleId(roleId);
        ImportField1 field1 = this.getObjByRoleId1(roleId);
        List<Object> objects = new ArrayList<>();
        objects.add(field1);
        objects.add(field);
        objects.add(bugBudgetField);
        objects.forEach(obj->{
            try {
                Map<String,Object> m = new HashMap<>();
                List<Map<String,Object>> fList = new ArrayList<>();
                Class clazz = Class.forName(obj.getClass().getName());
                String key = clazz.getSimpleName();
                Field[] fields = clazz.getDeclaredFields();
                for (Field f : fields) {
                    ApiModelProperty apiOperation = f.getAnnotation(ApiModelProperty.class);
                    String value = null;
                    if(apiOperation!=null){
                        value= apiOperation.value();
                    }
                    PropertyDescriptor pd  = new PropertyDescriptor(f.getName(), clazz);
                    Method rM = pd.getReadMethod();
                    Integer num = (Integer) rM.invoke(obj);
                    if(!"id".equals(f.getName())&&!"importMonth".equals(f.getName())&&!"roleId".equals(f.getName())&&!"userId".equals(f.getName())&&!"createuserid".equals(f.getName())){
                        Map<String,Object> map = new HashMap<String, Object>();
                        map.put("name",key+"_"+f.getName());
                        map.put("check",num);
                        map.put("title",value);
                        fList.add(map);
                    }
                }
                String name = "";
                switch (key){
                    case "ImportField":
                        name = "数据";
                        break;
                    case "BudgetField":
                        name = "收支";
                        break;
                    case "ImportField1":
                        name = "信息";
                        break;
                }
                m.put("key",key);
                m.put("name",name);
                m.put("list",fList);
                list.add(m);
            } catch (Exception e) {
                e.printStackTrace();
            }
        });


        return list;
    }

    private BudgetField getBugBudgetObjByRoleId(Long roleId) {
        BudgetField budgetField = this.budgetFieldMapper.getFieldFillterByRoleId(roleId);
        if (budgetField == null) {
            budgetField = new BudgetField(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0,0);
        }
        return budgetField;
    }

    @Override
    public int deleteByExample(ImportFieldExample example) {
        return this.importFieldMapper.deleteByExample(example);
    }

    @Override
    public int insertSelective(ImportField record) {
        return this.importFieldMapper.insertSelective(record);
    }
    public  ImportField getObjByRoleId(Long roleId){
        ImportField field = null;
        if (roleId != null ) {
            List<ImportField> importFields = this.importFieldMapper.listAllByRoleId(roleId);

            if (importFields != null && !importFields.isEmpty()) {
                field = importFields.get(0);
            }
        }
        if (field == null) {
            field = new ImportField(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0);
        }
        return  field;
    }
    public  ImportField1 getObjByRoleId1(Long roleId){
        ImportField1 field = null;
        if (roleId != null ) {
            List<ImportField1> importFields = this.importField1Mapper.listAllByRoleId(roleId);

            if (importFields != null && !importFields.isEmpty()) {
                field = importFields.get(0);
            }
        }
        if (field == null) {
            field = new ImportField1(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0);
        }
        return  field;
    }

}
