package com.macro.mall.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 修改订单费用信息参数
 * Created by macro on 2018/10/29.
 */
public class ImportDateParam {
    private String ids;
    private String wangwangId;
    private Date startDate;
    private Date endDate;
    private String storeName;
    private String Info1;
    private String Info2;
    private String remark1;
    private String remark2;
    private String remark3;
    private String code;
    private String anyColumn;
    private String createUserName;

    public String getIds() {
        return ids;
    }

    public void setIds(String ids) {
        this.ids = ids;
    }

    public String getWangwangId() {
        return wangwangId;
    }

    public void setWangwangId(String wangwangId) {
        this.wangwangId = wangwangId;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getStoreName() {
        return storeName;
    }

    public void setStoreName(String storeName) {
        this.storeName = storeName;
    }

    public String getInfo1() {
        return Info1;
    }

    public void setInfo1(String info1) {
        Info1 = info1;
    }

    public String getInfo2() {
        return Info2;
    }

    public void setInfo2(String info2) {
        Info2 = info2;
    }

    public String getRemark1() {
        return remark1;
    }

    public void setRemark1(String remark1) {
        this.remark1 = remark1;
    }

    public String getRemark2() {
        return remark2;
    }

    public void setRemark2(String remark2) {
        this.remark2 = remark2;
    }

    public String getRemark3() {
        return remark3;
    }

    public void setRemark3(String remark3) {
        this.remark3 = remark3;
    }

    public String getCreateUserName() {
        return createUserName;
    }

    public void setCreateUserName(String createUserName) {
        this.createUserName = createUserName;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getAnyColumn() {
        return anyColumn;
    }

    public void setAnyColumn(String anyColumn) {
        this.anyColumn = anyColumn;
    }
}
