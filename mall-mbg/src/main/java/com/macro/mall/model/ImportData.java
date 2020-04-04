package com.macro.mall.model;

import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;
import java.util.Date;

public class ImportData implements Serializable {
    @ApiModelProperty(value = "主键")
    private Integer id;

    @ApiModelProperty(value = "添加时间")
    private Date addtime;

    @ApiModelProperty(value = "导入的月份，用户自定义")
    private Integer importMonth;

    @ApiModelProperty(value = "导入日期，用户自定义")
    private Integer importDay;

    @ApiModelProperty(value = "旺旺号")
    private String wangwangId;

    @ApiModelProperty(value = "A金额")
    private Long aPrice;

    @ApiModelProperty(value = "店名")
    private String storeName;

    @ApiModelProperty(value = "B金额")
    private Long bPrice;

    @ApiModelProperty(value = "佣金")
    private Long commission;

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

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getAddtime() {
        return addtime;
    }

    public void setAddtime(Date addtime) {
        this.addtime = addtime;
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

    public Long getaPrice() {
        return aPrice;
    }

    public void setaPrice(Long aPrice) {
        this.aPrice = aPrice;
    }

    public String getStoreName() {
        return storeName;
    }

    public void setStoreName(String storeName) {
        this.storeName = storeName;
    }

    public Long getbPrice() {
        return bPrice;
    }

    public void setbPrice(Long bPrice) {
        this.bPrice = bPrice;
    }

    public Long getCommission() {
        return commission;
    }

    public void setCommission(Long commission) {
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

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", addtime=").append(addtime);
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
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}