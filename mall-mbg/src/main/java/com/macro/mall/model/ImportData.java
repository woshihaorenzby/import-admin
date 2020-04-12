package com.macro.mall.model;

import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class ImportData implements Serializable {
    @ApiModelProperty(value = "编号")
    private Integer id;

    @ApiModelProperty(value = "日期")
    private Date addTime;

    @ApiModelProperty(value = "导入的月份，用户自定义")
    private Integer importMonth;

    @ApiModelProperty(value = "添加日期")
    private Integer importDay;

    @ApiModelProperty(value = "旺旺号")
    private String wangwangId;

    @ApiModelProperty(value = "A金额")
    private BigDecimal aPrice;

    @ApiModelProperty(value = "店名")
    private String storeName;

    @ApiModelProperty(value = "B金额")
    private BigDecimal bPrice;

    @ApiModelProperty(value = "佣金")
    private BigDecimal commission;

    @ApiModelProperty(value = "A信息")
    private String aInfo;

    @ApiModelProperty(value = "B信息")
    private String bInfo;

    @ApiModelProperty(value = "备注1")
    private String remark1;

    @ApiModelProperty(value = "备注2")
    private String remark2;

    @ApiModelProperty(value = "备注3")
    private String remark3;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
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

    public String getWangwangId() {
        return wangwangId;
    }

    public void setWangwangId(String wangwangId) {
        this.wangwangId = wangwangId;
    }

    public BigDecimal getaPrice() {
        return aPrice;
    }

    public void setaPrice(BigDecimal aPrice) {
        this.aPrice = aPrice;
    }

    public String getStoreName() {
        return storeName;
    }

    public void setStoreName(String storeName) {
        this.storeName = storeName;
    }

    public BigDecimal getbPrice() {
        return bPrice;
    }

    public void setbPrice(BigDecimal bPrice) {
        this.bPrice = bPrice;
    }

    public BigDecimal getCommission() {
        return commission;
    }

    public void setCommission(BigDecimal commission) {
        this.commission = commission;
    }

    public String getaInfo() {
        return aInfo;
    }

    public void setaInfo(String aInfo) {
        this.aInfo = aInfo;
    }

    public String getbInfo() {
        return bInfo;
    }

    public void setbInfo(String bInfo) {
        this.bInfo = bInfo;
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
    public String isBInfo(){
        return this.bInfo;
    }
    public String isAInfo(){
        return this.aInfo;
    }
    public BigDecimal isBPrice(){
        return this.bPrice;
    }
    public BigDecimal isAPrice(){
        return this.aPrice;
    }
    public void setBInfo(String bInfo){
        this.bInfo = bInfo;
    }
    public void setAInfo(String aInfo){
        this.aInfo = aInfo;
    }
    public void setBPrice(BigDecimal bPrice){
        this.bPrice = bPrice;
    }
    public void setAPrice(BigDecimal aPrice){
        this.aPrice = aPrice;
    }
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", addTime=").append(addTime);
        sb.append(", importMonth=").append(importMonth);
        sb.append(", importDay=").append(importDay);
        sb.append(", wangwangId=").append(wangwangId);
        sb.append(", aPrice=").append(aPrice);
        sb.append(", storeName=").append(storeName);
        sb.append(", bPrice=").append(bPrice);
        sb.append(", commission=").append(commission);
        sb.append(", aInfo=").append(aInfo);
        sb.append(", bInfo=").append(bInfo);
        sb.append(", remark1=").append(remark1);
        sb.append(", remark2=").append(remark2);
        sb.append(", remark3=").append(remark3);
        sb.append("]");
        return sb.toString();
    }
}