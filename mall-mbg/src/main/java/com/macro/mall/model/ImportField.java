package com.macro.mall.model;

import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;

public class ImportField implements Serializable {
    private Integer id =0;

    @ApiModelProperty(value = "导入月")
    private Integer importMonth =0;

    @ApiModelProperty(value = "导入日/月")
    private Integer importDay =0;

    @ApiModelProperty(value = "A信息")
    private Integer aInfo =0;

    @ApiModelProperty(value = "旺旺")
    private Integer wangwangId =0;

    @ApiModelProperty(value = "A金额")
    private Integer aPrice = 0;

    @ApiModelProperty(value = "店铺名称")
    private Integer storeName =0;

    @ApiModelProperty(value = "B金额")
    private Integer bPrice =0;

    @ApiModelProperty(value = "佣金")
    private Integer commission =0;

    @ApiModelProperty(value = "B信息")
    private Integer bInfo =0;

    @ApiModelProperty(value = "备注1")
    private Integer remark1 =0;

    @ApiModelProperty(value = "备注2")
    private Integer remark2 =0;

    @ApiModelProperty(value = "备注3")
    private Integer remark3 =0;

    @ApiModelProperty(value = "角色id")
    private Long roleId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getImportMonth() {
        return importMonth;
    }

    public void setImportMonth(Integer importMonth) {
        this.importMonth = importMonth;
    }

    public Integer getImportDay() {
        return importDay;
    }

    public void setImportDay(Integer importDay) {
        this.importDay = importDay;
    }

    public Integer getAInfo() {
        return aInfo;
    }

    public void setAInfo(Integer aInfo) {
        this.aInfo = aInfo;
    }

    public Integer getWangwangId() {
        return wangwangId;
    }

    public void setWangwangId(Integer wangwangId) {
        this.wangwangId = wangwangId;
    }

    public Integer getAPrice() {
        return aPrice;
    }

    public void setAPrice(Integer aPrice) {
        this.aPrice = aPrice;
    }

    public Integer getStoreName() {
        return storeName;
    }

    public void setStoreName(Integer storeName) {
        this.storeName = storeName;
    }

    public Integer getBPrice() {
        return bPrice;
    }

    public void setBPrice(Integer bPrice) {
        this.bPrice = bPrice;
    }

    public Integer getCommission() {
        return commission;
    }

    public void setCommission(Integer commission) {
        this.commission = commission;
    }

    public Integer getBInfo() {
        return bInfo;
    }

    public void setBInfo(Integer bInfo) {
        this.bInfo = bInfo;
    }

    public Integer getRemark1() {
        return remark1;
    }

    public void setRemark1(Integer remark1) {
        this.remark1 = remark1;
    }

    public Integer getRemark2() {
        return remark2;
    }

    public void setRemark2(Integer remark2) {
        this.remark2 = remark2;
    }

    public Integer getRemark3() {
        return remark3;
    }

    public void setRemark3(Integer remark3) {
        this.remark3 = remark3;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public ImportField() {}

    public ImportField(Integer id, Integer importMonth, Integer importDay, Integer aInfo, Integer wangwangId, Integer aPrice, Integer storeName, Integer bPrice, Integer commission, Integer bInfo, Integer remark1, Integer remark2, Integer remark3) {
        this.id = id;
        this.importMonth = importMonth;
        this.importDay = importDay;
        this.aInfo = aInfo;
        this.wangwangId = wangwangId;
        this.aPrice = aPrice;
        this.storeName = storeName;
        this.bPrice = bPrice;
        this.commission = commission;
        this.bInfo = bInfo;
        this.remark1 = remark1;
        this.remark2 = remark2;
        this.remark3 = remark3;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", importMonth=").append(importMonth);
        sb.append(", importDay=").append(importDay);
        sb.append(", aInfo=").append(aInfo);
        sb.append(", wangwangId=").append(wangwangId);
        sb.append(", aPrice=").append(aPrice);
        sb.append(", storeName=").append(storeName);
        sb.append(", bPrice=").append(bPrice);
        sb.append(", commission=").append(commission);
        sb.append(", bInfo=").append(bInfo);
        sb.append(", remark1=").append(remark1);
        sb.append(", remark2=").append(remark2);
        sb.append(", remark3=").append(remark3);
        sb.append(", roleId=").append(roleId);
        sb.append("]");
        return sb.toString();
    }
}