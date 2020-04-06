package com.macro.mall.service.impl;

import com.macro.mall.mapper.ImportFieldMapper;
import com.macro.mall.model.ImportField;
import com.macro.mall.model.ImportFieldExample;
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

    /**
     * 获取所有会员登录
     *
     * @param importField 角色Id
     */
    @Override
    public List<Map<String,Object>> listAllByRoleId(ImportField importField) {
        List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
        ImportField field = null;
        if (importField != null && importField.getRoleId() != null) {
            List<ImportField> importFields = this.importFieldMapper.listAllByRoleId(importField);
            if (importFields != null && !importFields.isEmpty()) {
                field = importFields.get(0);
            }
        }
        if (field == null) {
            field = new ImportField(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        }
        try {
            Class clazz = Class.forName("com.macro.mall.model.ImportField");
            Field[] fields = clazz.getDeclaredFields();
            for (Field f : fields) {
                ApiModelProperty apiOperation = f.getAnnotation(ApiModelProperty.class);
                String value = null;
                if(apiOperation!=null){
                    value= apiOperation.value();
                }
                PropertyDescriptor pd  = new PropertyDescriptor(f.getName(), clazz);
                Method rM = pd.getReadMethod();
                Integer num = (Integer) rM.invoke(field);
                if(!"id".equals(f.getName())&&!"importMonth".equals(f.getName())&&!"roleId".equals(f.getName())){
                    Map<String,Object> map = new HashMap<String, Object>();
                    map.put("name",f.getName());
                    map.put("check",num);
                    map.put("title",value);
                    list.add(map);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public int deleteByExample(ImportFieldExample example) {
        return this.importFieldMapper.deleteByExample(example);
    }

    @Override
    public int insertSelective(ImportField record) {
        return this.importFieldMapper.insertSelective(record);
    }

}
