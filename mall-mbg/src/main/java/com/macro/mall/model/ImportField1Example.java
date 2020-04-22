package com.macro.mall.model;

import java.util.ArrayList;
import java.util.List;

public class ImportField1Example {
    protected String orderByClause;

    protected boolean distinct;

    protected List<ImportField1Example.Criteria> oredCriteria;

    public ImportField1Example() {
        oredCriteria = new ArrayList<ImportField1Example.Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<ImportField1Example.Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(ImportField1Example.Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public ImportField1Example.Criteria or() {
        ImportField1Example.Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public ImportField1Example.Criteria createCriteria() {
        ImportField1Example.Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected ImportField1Example.Criteria createCriteriaInternal() {
        ImportField1Example.Criteria criteria = new ImportField1Example.Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<ImportField1Example.Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<ImportField1Example.Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<ImportField1Example.Criterion> getAllCriteria() {
            return criteria;
        }

        public List<ImportField1Example.Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new ImportField1Example.Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new ImportField1Example.Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new ImportField1Example.Criterion(condition, value1, value2));
        }

        public ImportField1Example.Criteria andIdIsNull() {
            addCriterion("id is null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportMonthIsNull() {
            addCriterion("import_month is null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportMonthIsNotNull() {
            addCriterion("import_month is not null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportMonthEqualTo(Integer value) {
            addCriterion("import_month =", value, "importMonth");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportMonthNotEqualTo(Integer value) {
            addCriterion("import_month <>", value, "importMonth");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportMonthGreaterThan(Integer value) {
            addCriterion("import_month >", value, "importMonth");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportMonthGreaterThanOrEqualTo(Integer value) {
            addCriterion("import_month >=", value, "importMonth");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportMonthLessThan(Integer value) {
            addCriterion("import_month <", value, "importMonth");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportMonthLessThanOrEqualTo(Integer value) {
            addCriterion("import_month <=", value, "importMonth");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportMonthIn(List<Integer> values) {
            addCriterion("import_month in", values, "importMonth");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportMonthNotIn(List<Integer> values) {
            addCriterion("import_month not in", values, "importMonth");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportMonthBetween(Integer value1, Integer value2) {
            addCriterion("import_month between", value1, value2, "importMonth");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportMonthNotBetween(Integer value1, Integer value2) {
            addCriterion("import_month not between", value1, value2, "importMonth");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportDayIsNull() {
            addCriterion("import_day is null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportDayIsNotNull() {
            addCriterion("import_day is not null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportDayEqualTo(Integer value) {
            addCriterion("import_day =", value, "importDay");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportDayNotEqualTo(Integer value) {
            addCriterion("import_day <>", value, "importDay");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportDayGreaterThan(Integer value) {
            addCriterion("import_day >", value, "importDay");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportDayGreaterThanOrEqualTo(Integer value) {
            addCriterion("import_day >=", value, "importDay");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportDayLessThan(Integer value) {
            addCriterion("import_day <", value, "importDay");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportDayLessThanOrEqualTo(Integer value) {
            addCriterion("import_day <=", value, "importDay");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportDayIn(List<Integer> values) {
            addCriterion("import_day in", values, "importDay");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportDayNotIn(List<Integer> values) {
            addCriterion("import_day not in", values, "importDay");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportDayBetween(Integer value1, Integer value2) {
            addCriterion("import_day between", value1, value2, "importDay");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andImportDayNotBetween(Integer value1, Integer value2) {
            addCriterion("import_day not between", value1, value2, "importDay");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAInfoIsNull() {
            addCriterion("a_info is null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAInfoIsNotNull() {
            addCriterion("a_info is not null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAInfoEqualTo(Integer value) {
            addCriterion("a_info =", value, "aInfo");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAInfoNotEqualTo(Integer value) {
            addCriterion("a_info <>", value, "aInfo");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAInfoGreaterThan(Integer value) {
            addCriterion("a_info >", value, "aInfo");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAInfoGreaterThanOrEqualTo(Integer value) {
            addCriterion("a_info >=", value, "aInfo");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAInfoLessThan(Integer value) {
            addCriterion("a_info <", value, "aInfo");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAInfoLessThanOrEqualTo(Integer value) {
            addCriterion("a_info <=", value, "aInfo");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAInfoIn(List<Integer> values) {
            addCriterion("a_info in", values, "aInfo");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAInfoNotIn(List<Integer> values) {
            addCriterion("a_info not in", values, "aInfo");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAInfoBetween(Integer value1, Integer value2) {
            addCriterion("a_info between", value1, value2, "aInfo");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAInfoNotBetween(Integer value1, Integer value2) {
            addCriterion("a_info not between", value1, value2, "aInfo");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andWangwangIdIsNull() {
            addCriterion("wangwang_id is null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andWangwangIdIsNotNull() {
            addCriterion("wangwang_id is not null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andWangwangIdEqualTo(Integer value) {
            addCriterion("wangwang_id =", value, "wangwangId");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andWangwangIdNotEqualTo(Integer value) {
            addCriterion("wangwang_id <>", value, "wangwangId");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andWangwangIdGreaterThan(Integer value) {
            addCriterion("wangwang_id >", value, "wangwangId");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andWangwangIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("wangwang_id >=", value, "wangwangId");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andWangwangIdLessThan(Integer value) {
            addCriterion("wangwang_id <", value, "wangwangId");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andWangwangIdLessThanOrEqualTo(Integer value) {
            addCriterion("wangwang_id <=", value, "wangwangId");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andWangwangIdIn(List<Integer> values) {
            addCriterion("wangwang_id in", values, "wangwangId");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andWangwangIdNotIn(List<Integer> values) {
            addCriterion("wangwang_id not in", values, "wangwangId");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andWangwangIdBetween(Integer value1, Integer value2) {
            addCriterion("wangwang_id between", value1, value2, "wangwangId");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andWangwangIdNotBetween(Integer value1, Integer value2) {
            addCriterion("wangwang_id not between", value1, value2, "wangwangId");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAPriceIsNull() {
            addCriterion("a_price is null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAPriceIsNotNull() {
            addCriterion("a_price is not null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAPriceEqualTo(Integer value) {
            addCriterion("a_price =", value, "aPrice");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAPriceNotEqualTo(Integer value) {
            addCriterion("a_price <>", value, "aPrice");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAPriceGreaterThan(Integer value) {
            addCriterion("a_price >", value, "aPrice");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAPriceGreaterThanOrEqualTo(Integer value) {
            addCriterion("a_price >=", value, "aPrice");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAPriceLessThan(Integer value) {
            addCriterion("a_price <", value, "aPrice");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAPriceLessThanOrEqualTo(Integer value) {
            addCriterion("a_price <=", value, "aPrice");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAPriceIn(List<Integer> values) {
            addCriterion("a_price in", values, "aPrice");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAPriceNotIn(List<Integer> values) {
            addCriterion("a_price not in", values, "aPrice");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAPriceBetween(Integer value1, Integer value2) {
            addCriterion("a_price between", value1, value2, "aPrice");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andAPriceNotBetween(Integer value1, Integer value2) {
            addCriterion("a_price not between", value1, value2, "aPrice");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andStoreNameIsNull() {
            addCriterion("store_name is null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andStoreNameIsNotNull() {
            addCriterion("store_name is not null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andStoreNameEqualTo(Integer value) {
            addCriterion("store_name =", value, "storeName");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andStoreNameNotEqualTo(Integer value) {
            addCriterion("store_name <>", value, "storeName");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andStoreNameGreaterThan(Integer value) {
            addCriterion("store_name >", value, "storeName");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andStoreNameGreaterThanOrEqualTo(Integer value) {
            addCriterion("store_name >=", value, "storeName");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andStoreNameLessThan(Integer value) {
            addCriterion("store_name <", value, "storeName");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andStoreNameLessThanOrEqualTo(Integer value) {
            addCriterion("store_name <=", value, "storeName");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andStoreNameIn(List<Integer> values) {
            addCriterion("store_name in", values, "storeName");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andStoreNameNotIn(List<Integer> values) {
            addCriterion("store_name not in", values, "storeName");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andStoreNameBetween(Integer value1, Integer value2) {
            addCriterion("store_name between", value1, value2, "storeName");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andStoreNameNotBetween(Integer value1, Integer value2) {
            addCriterion("store_name not between", value1, value2, "storeName");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBPriceIsNull() {
            addCriterion("b_price is null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBPriceIsNotNull() {
            addCriterion("b_price is not null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBPriceEqualTo(Integer value) {
            addCriterion("b_price =", value, "bPrice");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBPriceNotEqualTo(Integer value) {
            addCriterion("b_price <>", value, "bPrice");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBPriceGreaterThan(Integer value) {
            addCriterion("b_price >", value, "bPrice");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBPriceGreaterThanOrEqualTo(Integer value) {
            addCriterion("b_price >=", value, "bPrice");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBPriceLessThan(Integer value) {
            addCriterion("b_price <", value, "bPrice");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBPriceLessThanOrEqualTo(Integer value) {
            addCriterion("b_price <=", value, "bPrice");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBPriceIn(List<Integer> values) {
            addCriterion("b_price in", values, "bPrice");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBPriceNotIn(List<Integer> values) {
            addCriterion("b_price not in", values, "bPrice");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBPriceBetween(Integer value1, Integer value2) {
            addCriterion("b_price between", value1, value2, "bPrice");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBPriceNotBetween(Integer value1, Integer value2) {
            addCriterion("b_price not between", value1, value2, "bPrice");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andCommissionIsNull() {
            addCriterion("commission is null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andCommissionIsNotNull() {
            addCriterion("commission is not null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andCommissionEqualTo(Integer value) {
            addCriterion("commission =", value, "commission");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andCommissionNotEqualTo(Integer value) {
            addCriterion("commission <>", value, "commission");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andCommissionGreaterThan(Integer value) {
            addCriterion("commission >", value, "commission");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andCommissionGreaterThanOrEqualTo(Integer value) {
            addCriterion("commission >=", value, "commission");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andCommissionLessThan(Integer value) {
            addCriterion("commission <", value, "commission");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andCommissionLessThanOrEqualTo(Integer value) {
            addCriterion("commission <=", value, "commission");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andCommissionIn(List<Integer> values) {
            addCriterion("commission in", values, "commission");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andCommissionNotIn(List<Integer> values) {
            addCriterion("commission not in", values, "commission");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andCommissionBetween(Integer value1, Integer value2) {
            addCriterion("commission between", value1, value2, "commission");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andCommissionNotBetween(Integer value1, Integer value2) {
            addCriterion("commission not between", value1, value2, "commission");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBInfoIsNull() {
            addCriterion("b_info is null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBInfoIsNotNull() {
            addCriterion("b_info is not null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBInfoEqualTo(Integer value) {
            addCriterion("b_info =", value, "bInfo");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBInfoNotEqualTo(Integer value) {
            addCriterion("b_info <>", value, "bInfo");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBInfoGreaterThan(Integer value) {
            addCriterion("b_info >", value, "bInfo");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBInfoGreaterThanOrEqualTo(Integer value) {
            addCriterion("b_info >=", value, "bInfo");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBInfoLessThan(Integer value) {
            addCriterion("b_info <", value, "bInfo");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBInfoLessThanOrEqualTo(Integer value) {
            addCriterion("b_info <=", value, "bInfo");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBInfoIn(List<Integer> values) {
            addCriterion("b_info in", values, "bInfo");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBInfoNotIn(List<Integer> values) {
            addCriterion("b_info not in", values, "bInfo");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBInfoBetween(Integer value1, Integer value2) {
            addCriterion("b_info between", value1, value2, "bInfo");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andBInfoNotBetween(Integer value1, Integer value2) {
            addCriterion("b_info not between", value1, value2, "bInfo");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark1IsNull() {
            addCriterion("remark_1 is null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark1IsNotNull() {
            addCriterion("remark_1 is not null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark1EqualTo(Integer value) {
            addCriterion("remark_1 =", value, "remark1");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark1NotEqualTo(Integer value) {
            addCriterion("remark_1 <>", value, "remark1");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark1GreaterThan(Integer value) {
            addCriterion("remark_1 >", value, "remark1");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark1GreaterThanOrEqualTo(Integer value) {
            addCriterion("remark_1 >=", value, "remark1");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark1LessThan(Integer value) {
            addCriterion("remark_1 <", value, "remark1");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark1LessThanOrEqualTo(Integer value) {
            addCriterion("remark_1 <=", value, "remark1");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark1In(List<Integer> values) {
            addCriterion("remark_1 in", values, "remark1");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark1NotIn(List<Integer> values) {
            addCriterion("remark_1 not in", values, "remark1");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark1Between(Integer value1, Integer value2) {
            addCriterion("remark_1 between", value1, value2, "remark1");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark1NotBetween(Integer value1, Integer value2) {
            addCriterion("remark_1 not between", value1, value2, "remark1");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark2IsNull() {
            addCriterion("remark_2 is null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark2IsNotNull() {
            addCriterion("remark_2 is not null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark2EqualTo(Integer value) {
            addCriterion("remark_2 =", value, "remark2");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark2NotEqualTo(Integer value) {
            addCriterion("remark_2 <>", value, "remark2");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark2GreaterThan(Integer value) {
            addCriterion("remark_2 >", value, "remark2");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark2GreaterThanOrEqualTo(Integer value) {
            addCriterion("remark_2 >=", value, "remark2");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark2LessThan(Integer value) {
            addCriterion("remark_2 <", value, "remark2");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark2LessThanOrEqualTo(Integer value) {
            addCriterion("remark_2 <=", value, "remark2");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark2In(List<Integer> values) {
            addCriterion("remark_2 in", values, "remark2");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark2NotIn(List<Integer> values) {
            addCriterion("remark_2 not in", values, "remark2");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark2Between(Integer value1, Integer value2) {
            addCriterion("remark_2 between", value1, value2, "remark2");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark2NotBetween(Integer value1, Integer value2) {
            addCriterion("remark_2 not between", value1, value2, "remark2");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark3IsNull() {
            addCriterion("remark_3 is null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark3IsNotNull() {
            addCriterion("remark_3 is not null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark3EqualTo(Integer value) {
            addCriterion("remark_3 =", value, "remark3");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark3NotEqualTo(Integer value) {
            addCriterion("remark_3 <>", value, "remark3");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark3GreaterThan(Integer value) {
            addCriterion("remark_3 >", value, "remark3");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark3GreaterThanOrEqualTo(Integer value) {
            addCriterion("remark_3 >=", value, "remark3");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark3LessThan(Integer value) {
            addCriterion("remark_3 <", value, "remark3");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark3LessThanOrEqualTo(Integer value) {
            addCriterion("remark_3 <=", value, "remark3");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark3In(List<Integer> values) {
            addCriterion("remark_3 in", values, "remark3");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark3NotIn(List<Integer> values) {
            addCriterion("remark_3 not in", values, "remark3");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark3Between(Integer value1, Integer value2) {
            addCriterion("remark_3 between", value1, value2, "remark3");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRemark3NotBetween(Integer value1, Integer value2) {
            addCriterion("remark_3 not between", value1, value2, "remark3");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRoleIdIsNull() {
            addCriterion("role_id is null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRoleIdIsNotNull() {
            addCriterion("role_id is not null");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRoleIdEqualTo(Long value) {
            addCriterion("role_id =", value, "roleId");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRoleIdNotEqualTo(Long value) {
            addCriterion("role_id <>", value, "roleId");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRoleIdGreaterThan(Long value) {
            addCriterion("role_id >", value, "roleId");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRoleIdGreaterThanOrEqualTo(Long value) {
            addCriterion("role_id >=", value, "roleId");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRoleIdLessThan(Long value) {
            addCriterion("role_id <", value, "roleId");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRoleIdLessThanOrEqualTo(Long value) {
            addCriterion("role_id <=", value, "roleId");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRoleIdIn(List<Long> values) {
            addCriterion("role_id in", values, "roleId");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRoleIdNotIn(List<Long> values) {
            addCriterion("role_id not in", values, "roleId");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRoleIdBetween(Long value1, Long value2) {
            addCriterion("role_id between", value1, value2, "roleId");
            return (ImportField1Example.Criteria) this;
        }

        public ImportField1Example.Criteria andRoleIdNotBetween(Long value1, Long value2) {
            addCriterion("role_id not between", value1, value2, "roleId");
            return (ImportField1Example.Criteria) this;
        }
    }

    public static class Criteria extends ImportField1Example.GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}