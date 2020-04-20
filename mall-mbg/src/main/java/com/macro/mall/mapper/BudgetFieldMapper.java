package com.macro.mall.mapper;

import com.macro.mall.model.BudgetField;
import com.macro.mall.model.BudgetFieldExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BudgetFieldMapper {
    long countByExample(BudgetFieldExample example);

    int deleteByExample(BudgetFieldExample example);

    int insert(BudgetField record);

    int insertSelective(BudgetField record);

    List<BudgetField> selectByExample(BudgetFieldExample example);

    int updateByExampleSelective(@Param("record") BudgetField record, @Param("example") BudgetFieldExample example);

    int updateByExample(@Param("record") BudgetField record, @Param("example") BudgetFieldExample example);

    BudgetField getFieldFillterByUserId(@Param("userId") Long userId);
}