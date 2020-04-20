package com.macro.mall.model;

import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;
import java.util.Date;

public class Budget implements Serializable {
    @ApiModelProperty(value = "主键")
    private Integer id;

    @ApiModelProperty(value = "交易日期")
    private Date tradeData;

    @ApiModelProperty(value = "店名")
    private String storeName;

    @ApiModelProperty(value = "类别")
    private String type;

    @ApiModelProperty(value = "支出金额")
    private String pay;

    @ApiModelProperty(value = "收入金额")
    private String income;

    @ApiModelProperty(value = "支出方名称")
    private String payName;

    @ApiModelProperty(value = "支出方账户")
    private String payAccount;

    @ApiModelProperty(value = "收入方名称")
    private String incomeName;

    @ApiModelProperty(value = "收入方账户")
    private String incomeAccount;

    @ApiModelProperty(value = "核对人")
    private String checkName;

    @ApiModelProperty(value = "创建人ID")
    private Integer createUserId;

    @ApiModelProperty(value = "创建人")
    private String createUsername;

    @ApiModelProperty(value = "金额相关备注")
    private String amountRemark;

    @ApiModelProperty(value = "支出方备注")
    private String payRemark;

    @ApiModelProperty(value = "收入方备注")
    private String incomeRemark;

    @ApiModelProperty(value = "备注")
    private String remark;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getTradeData() {
        return tradeData;
    }

    public void setTradeData(Date tradeData) {
        this.tradeData = tradeData;
    }

    public String getStoreName() {
        return storeName;
    }

    public void setStoreName(String storeName) {
        this.storeName = storeName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getPay() {
        return pay;
    }

    public void setPay(String pay) {
        this.pay = pay;
    }

    public String getIncome() {
        return income;
    }

    public void setIncome(String income) {
        this.income = income;
    }

    public String getPayName() {
        return payName;
    }

    public void setPayName(String payName) {
        this.payName = payName;
    }

    public String getPayAccount() {
        return payAccount;
    }

    public void setPayAccount(String payAccount) {
        this.payAccount = payAccount;
    }

    public String getIncomeName() {
        return incomeName;
    }

    public void setIncomeName(String incomeName) {
        this.incomeName = incomeName;
    }

    public String getIncomeAccount() {
        return incomeAccount;
    }

    public void setIncomeAccount(String incomeAccount) {
        this.incomeAccount = incomeAccount;
    }

    public String getCheckName() {
        return checkName;
    }

    public void setCheckName(String checkName) {
        this.checkName = checkName;
    }

    public Integer getCreateUserId() {
        return createUserId;
    }

    public void setCreateUserId(Integer createUserId) {
        this.createUserId = createUserId;
    }

    public String getCreateUsername() {
        return createUsername;
    }

    public void setCreateUsername(String createUsername) {
        this.createUsername = createUsername;
    }

    public String getAmountRemark() {
        return amountRemark;
    }

    public void setAmountRemark(String amountRemark) {
        this.amountRemark = amountRemark;
    }

    public String getPayRemark() {
        return payRemark;
    }

    public void setPayRemark(String payRemark) {
        this.payRemark = payRemark;
    }

    public String getIncomeRemark() {
        return incomeRemark;
    }

    public void setIncomeRemark(String incomeRemark) {
        this.incomeRemark = incomeRemark;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", tradeData=").append(tradeData);
        sb.append(", storeName=").append(storeName);
        sb.append(", type=").append(type);
        sb.append(", pay=").append(pay);
        sb.append(", income=").append(income);
        sb.append(", payName=").append(payName);
        sb.append(", payAccount=").append(payAccount);
        sb.append(", incomeName=").append(incomeName);
        sb.append(", incomeAccount=").append(incomeAccount);
        sb.append(", checkName=").append(checkName);
        sb.append(", createUserId=").append(createUserId);
        sb.append(", createUsername=").append(createUsername);
        sb.append(", amountRemark=").append(amountRemark);
        sb.append(", payRemark=").append(payRemark);
        sb.append(", incomeRemark=").append(incomeRemark);
        sb.append(", remark=").append(remark);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}