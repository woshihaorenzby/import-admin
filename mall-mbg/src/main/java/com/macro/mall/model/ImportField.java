package com.macro.mall.model;

import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;

public class ImportField implements Serializable {
    private Integer id;

    @ApiModelProperty(value = "是否显示导入月，一般与import_day保持一致")
    private Integer importMonth;

    @ApiModelProperty(value = "是否显示导入月，一般与import_month保持一致")
    private Integer importDay;

    @ApiModelProperty(value = "是否显示a信息")
    private Integer aInfo;

    @ApiModelProperty(value = "是否显示旺旺号")
    private Integer wangwangId;

    @ApiModelProperty(value = "是否显示a金额")
    private Integer aPrice;

    @ApiModelProperty(value = "是否显示店铺名称")
    private Integer storeName;

    @ApiModelProperty(value = "是否显示b金额")
    private Integer bPrice;

    @ApiModelProperty(value = "是否显示佣金")
    private Integer commission;

    @ApiModelProperty(value = "是否显示b信息")
    private Integer bInfo;

    @ApiModelProperty(value = "是否显示备注1")
    private Integer remark1;

    @ApiModelProperty(value = "是否显示备注2")
    private Integer remark2;

    @ApiModelProperty(value = "是否显示备注3")
    private Integer remark3;

    @ApiModelProperty(value = "角色id")
    private Integer roleId;

    private static final long serialVersionUID = 1L;

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

    public Integer getaInfo() {
        return aInfo;
    }

    public void setaInfo(Integer aInfo) {
        this.aInfo = aInfo;
    }

    public Integer getWangwangId() {
        return wangwangId;
    }

    public void setWangwangId(Integer wangwangId) {
        this.wangwangId = wangwangId;
    }

    public Integer getaPrice() {
        return aPrice;
    }

    public void setaPrice(Integer aPrice) {
        this.aPrice = aPrice;
    }

    public Integer getStoreName() {
        return storeName;
    }

    public void setStoreName(Integer storeName) {
        this.storeName = storeName;
    }

    public Integer getbPrice() {
        return bPrice;
    }

    public void setbPrice(Integer bPrice) {
        this.bPrice = bPrice;
    }

    public Integer getCommission() {
        return commission;
    }

    public void setCommission(Integer commission) {
        this.commission = commission;
    }

    public Integer getbInfo() {
        return bInfo;
    }

    public void setbInfo(Integer bInfo) {
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

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
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
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}