package com.macro.mall.mapper;

import com.macro.mall.model.ImportData;
import com.macro.mall.model.ImportDataExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ImportDataMapper {
    long countByExample(ImportDataExample example);

    int deleteByExample(ImportDataExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ImportData record);

    int insertSelective(ImportData record);

    List<ImportData> selectByExampleWithBLOBs(ImportDataExample example);

    List<ImportData> selectByExample(ImportDataExample example);

    ImportData selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ImportData record, @Param("example") ImportDataExample example);

    int updateByExampleWithBLOBs(@Param("record") ImportData record, @Param("example") ImportDataExample example);

    int updateByExample(@Param("record") ImportData record, @Param("example") ImportDataExample example);

    int updateByPrimaryKeySelective(ImportData record);

    int updateByPrimaryKeyWithBLOBs(ImportData record);

    int updateByPrimaryKey(ImportData record);
}