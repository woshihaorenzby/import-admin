package com.macro.mall.service;

import com.macro.mall.dto.BudgetParam;
import com.macro.mall.dto.ImportDateParam;
import com.macro.mall.model.Budget;
import com.macro.mall.model.BudgetExample;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 导入信息的管理
 */
public interface BudgetService {
    /**
     * 分页查询
     * @param example
     * @return
     */
    List<Budget> selectByExampleWithBLOBs(BudgetExample example);
    /**
     * 查询所有专题
     */
    List<Budget> listAll(Long userId);

    /**
     * 分页查询专题
     */
    List<Budget> list(Long userId, BudgetParam budgetParam, Integer pageNum, Integer pageSize, String fieldName, String sortingType);

    /**
     * 导入
     * @return
     */
    boolean doImport();

    /**
     * 删除
     * @param id
     * @return
     */
    boolean delete(Long id);

    /**
     * 删除
     * @param budget
     * @return
     */
    boolean update(Long id, Budget budget);
    /**
     * 增加
     * @param Budget
     * @return
     */
    boolean save(Budget Budget);

    void export(HttpServletResponse response, List<?> importlist, String[] attributeNames);

    /**
     * 导入并保存
     *
     * @param excelArr
     * @param excelData
     * @return
     */
    List<String> upload(String excelArr, String excelData, String userName, Long userId);

    /**
     * 通过ids进行删除
     *
     * @param ids
     * @return
     */
    Integer doDeleteByIds(String ids);

    /**
     *
     * @param id
     * @return
     */
    Budget getBudget(Long id);

    String doDeleteHis(String ids, Long userId);
}
