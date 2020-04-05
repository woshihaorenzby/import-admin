package com.macro.mall.service;

import com.macro.mall.model.ImportField;
import com.macro.mall.model.UmsMemberLevel;

import java.util.List;

/**
 * 会员等级管理Service
 * Created by macro on 2018/4/26.
 */
public interface ImportFieldService {
    /**
     * 获取所有会员登录
     * @param importField 是否为默认会员
     */
    ImportField listAllByRoleId(ImportField importField);
}
