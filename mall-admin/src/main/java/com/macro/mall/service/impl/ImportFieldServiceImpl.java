package com.macro.mall.service.impl;

import com.macro.mall.mapper.ImportFieldMapper;
import com.macro.mall.model.ImportField;
import com.macro.mall.service.ImportDataService;
import com.macro.mall.service.ImportFieldService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
     * @param importField 角色Id
     */
    @Override
    public ImportField listAllByRoleId(ImportField importField){
        ImportField field = null;
        if(importField!=null&&importField.getRoleId()!=null){
            List<ImportField> importFields = this.importFieldMapper.listAllByRoleId(importField);
            if(importFields!=null&&!importFields.isEmpty()){
                field = importFields.get(0);
            }
        }
        if(field==null){
            field = new ImportField(0,0,0,0,0,0,0,0,0,0,0,0,0);
        }
        return field;
    }
}
