package com.macro.mall.model;

import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;

public class BudgetField implements Serializable {
    @ApiModelProperty(value = "主键")
    private Integer id=0;

    @ApiModelProperty(value = "交易日期")
    private Integer tradedata=0;

    @ApiModelProperty(value = "店名")
    private Integer storename=0;

    @ApiModelProperty(value = "类型")
    private Integer type=0;

    @ApiModelProperty(value = "支出金额")
    private Integer pay=0;

    @ApiModelProperty(value = "收入金额")
    private Integer income=0;

    @ApiModelProperty(value = "支出方名称")
    private Integer payname=0;

    @ApiModelProperty(value = "支出方账户")
    private Integer payaccount=0;

    @ApiModelProperty(value = "收入方名称")
    private Integer incomename=0;

    @ApiModelProperty(value = "收入方账户")
    private Integer incomeaccount=0;

    @ApiModelProperty(value = "核对人")
    private Integer checkname=0;

    @ApiModelProperty(value = "创建人ID")
    private Integer createuserid=0;

    @ApiModelProperty(value = "创建人")
    private Integer createusername=0;

    @ApiModelProperty(value = "金额相关备注")
    private Integer amountremark=0;

    @ApiModelProperty(value = "支出方备注")
    private Integer payremark=0;

    @ApiModelProperty(value = "收入方备注")
    private Integer incomeremark=0;

    @ApiModelProperty(value = "备注")
    private Integer remark=0;

    @ApiModelProperty(value = "userId")
    private Integer userId=0;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTradedata() {
        return tradedata;
    }

    public void setTradedata(Integer tradedata) {
        this.tradedata = tradedata;
    }

    public Integer getStorename() {
        return storename;
    }

    public void setStorename(Integer storename) {
        this.storename = storename;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getPay() {
        return pay;
    }

    public void setPay(Integer pay) {
        this.pay = pay;
    }

    public Integer getIncome() {
        return income;
    }

    public void setIncome(Integer income) {
        this.income = income;
    }

    public Integer getPayname() {
        return payname;
    }

    public void setPayname(Integer payname) {
        this.payname = payname;
    }

    public Integer getPayaccount() {
        return payaccount;
    }

    public void setPayaccount(Integer payaccount) {
        this.payaccount = payaccount;
    }

    public Integer getIncomename() {
        return incomename;
    }

    public void setIncomename(Integer incomename) {
        this.incomename = incomename;
    }

    public Integer getIncomeaccount() {
        return incomeaccount;
    }

    public void setIncomeaccount(Integer incomeaccount) {
        this.incomeaccount = incomeaccount;
    }

    public Integer getCheckname() {
        return checkname;
    }

    public void setCheckname(Integer checkname) {
        this.checkname = checkname;
    }

    public Integer getCreateuserid() {
        return createuserid;
    }

    public void setCreateuserid(Integer createuserid) {
        this.createuserid = createuserid;
    }

    public Integer getCreateusername() {
        return createusername;
    }

    public void setCreateusername(Integer createusername) {
        this.createusername = createusername;
    }

    public Integer getAmountremark() {
        return amountremark;
    }

    public void setAmountremark(Integer amountremark) {
        this.amountremark = amountremark;
    }

    public Integer getPayremark() {
        return payremark;
    }

    public void setPayremark(Integer payremark) {
        this.payremark = payremark;
    }

    public Integer getIncomeremark() {
        return incomeremark;
    }

    public void setIncomeremark(Integer incomeremark) {
        this.incomeremark = incomeremark;
    }

    public Integer getRemark() {
        return remark;
    }

    public void setRemark(Integer remark) {
        this.remark = remark;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public BudgetField() {
    }

    public BudgetField(Integer tradedata, Integer storename, Integer type, Integer pay, Integer income, Integer payname, Integer payaccount, Integer incomename, Integer incomeaccount, Integer checkname, Integer createuserid, Integer createusername, Integer amountremark, Integer payremark, Integer incomeremark, Integer remark, Integer userId) {
        this.id = id;
        this.tradedata = tradedata;
        this.storename = storename;
        this.type = type;
        this.pay = pay;
        this.income = income;
        this.payname = payname;
        this.payaccount = payaccount;
        this.incomename = incomename;
        this.incomeaccount = incomeaccount;
        this.checkname = checkname;
        this.createuserid = createuserid;
        this.createusername = createusername;
        this.amountremark = amountremark;
        this.payremark = payremark;
        this.incomeremark = incomeremark;
        this.remark = remark;
        this.userId = userId;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", tradedata=").append(tradedata);
        sb.append(", storename=").append(storename);
        sb.append(", type=").append(type);
        sb.append(", pay=").append(pay);
        sb.append(", income=").append(income);
        sb.append(", payname=").append(payname);
        sb.append(", payaccount=").append(payaccount);
        sb.append(", incomename=").append(incomename);
        sb.append(", incomeaccount=").append(incomeaccount);
        sb.append(", checkname=").append(checkname);
        sb.append(", createuserid=").append(createuserid);
        sb.append(", createusername=").append(createusername);
        sb.append(", amountremark=").append(amountremark);
        sb.append(", payremark=").append(payremark);
        sb.append(", incomeremark=").append(incomeremark);
        sb.append(", remark=").append(remark);
        sb.append(", userId=").append(userId);
        sb.append("]");
        return sb.toString();
    }
}