package com.macro.mall.service.impl;

import com.github.pagehelper.PageHelper;
import com.macro.mall.mapper.ImportDataMapper;
import com.macro.mall.model.ImportData;
import com.macro.mall.model.ImportDataExample;
import com.macro.mall.model.UmsMenuExample;
import com.macro.mall.service.ImportDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ImportDataServiceImpl implements ImportDataService {
    @Autowired
    private ImportDataMapper importDataMapper;
    @Override
    public List<ImportData> listAll(Long userId) {
        return null;
    }

    @Override
    public List<ImportData> list(Long userId, String keyword, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        ImportDataExample example = new ImportDataExample();
        example.setOrderByClause("addTime desc");
        example.createCriteria();
        return this.importDataMapper.selectByExampleWithBLOBs(example);
    }
    @Override
    public List<ImportData> selectByExampleWithBLOBs(ImportDataExample example){

        return this.importDataMapper.selectByExampleWithBLOBs(example);
    }
    @Override
    public boolean doImport() {
        return false;
    }

    @Override
    public boolean delete(Long id) {
        return false;
    }

    @Override
    public boolean update(ImportData importData) {
        return false;
    }

    @Override
    public boolean save(ImportData importData) {
        return false;
    }
}
