package com.macro.mall.service;

import com.macro.mall.dto.ImportDateParam;
import com.macro.mall.model.ImportData;
import com.macro.mall.model.ImportDataExample;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 导入信息的管理
 */
public interface ImportDataService {
    /**
     * 分页查询
     * @param example
     * @return
     */
    List<ImportData> selectByExampleWithBLOBs(ImportDataExample example);
    /**
     * 查询所有专题
     */
    List<ImportData> listAll(Long userId);

    /**
     * 分页查询专题
     */
    List<ImportData> list(Long userId, ImportDateParam importDateParam, Integer pageNum, Integer pageSize,String fieldName,String sortingType);

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
     * @param importData
     * @return
     */
    boolean update(Long id,ImportData importData);
    /**
     * 增加
     * @param importData
     * @return
     */
    boolean save(ImportData importData);

    void export(HttpServletResponse response, List<?> importlist, String[] attributeNames);

    /**
     * 导入并保存
     *
     * @param excelArr
     * @param excelData
     * @return
     */
    Integer upload(String excelArr, String excelData);

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
    ImportData getImportData(Long id);

}
