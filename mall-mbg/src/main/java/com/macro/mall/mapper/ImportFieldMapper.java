package com.macro.mall.mapper;

import com.macro.mall.model.ImportField;
import com.macro.mall.model.ImportFieldExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ImportFieldMapper {
    long countByExample(ImportFieldExample example);

    int deleteByExample(ImportFieldExample example);

    int insert(ImportField record);

    int insertSelective(ImportField record);

    List<ImportField> selectByExample(ImportFieldExample example);

    int updateByExampleSelective(@Param("record") ImportField record, @Param("example") ImportFieldExample example);

    int updateByExample(@Param("record") ImportField record, @Param("example") ImportFieldExample example);

    List<ImportField> listAllByRoleId(ImportField importField);
}