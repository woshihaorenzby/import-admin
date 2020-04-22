package com.macro.mall.mapper;

import com.macro.mall.model.ImportField;
import com.macro.mall.model.ImportField1;
import com.macro.mall.model.ImportField1Example;
import java.util.List;

import com.macro.mall.model.ImportFieldExample;
import org.apache.ibatis.annotations.Param;

public interface ImportField1Mapper {
    long countByExample(ImportField1Example example);

    int deleteByExample(ImportField1Example example);

    int insert(ImportField1 record);

    int insertSelective(ImportField1 record);

    List<ImportField> selectByExample(ImportField1Example example);

    int updateByExampleSelective(@Param("record") ImportField1 record, @Param("example") ImportField1Example example);

    int updateByExample(@Param("record") ImportField1 record, @Param("example") ImportField1Example example);

    List<ImportField1> listAllByRoleId(@Param("roleId")Long roleId);

    ImportField1 getFieldFillterByUserId(@Param("userId")Long userId);
}