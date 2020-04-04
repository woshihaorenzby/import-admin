package com.macro.mall.service;

import com.macro.mall.model.ImportData;
import com.macro.mall.model.ImportDataExample;

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
    List<ImportData> list(Long userId,String keyword, Integer pageNum, Integer pageSize);

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
    boolean update(ImportData importData);
    /**
     * 增加
     * @param importData
     * @return
     */
    boolean save(ImportData importData);
}
