package com.macro.mall.model;

import java.util.ArrayList;
import java.util.List;

public class ImportFieldExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ImportFieldExample() {
        oredCriteria = new ArrayList<Criteria>();
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

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andImportMonthIsNull() {
            addCriterion("import_month is null");
            return (Criteria) this;
        }

        public Criteria andImportMonthIsNotNull() {
            addCriterion("import_month is not null");
            return (Criteria) this;
        }

        public Criteria andImportMonthEqualTo(Integer value) {
            addCriterion("import_month =", value, "importMonth");
            return (Criteria) this;
        }

        public Criteria andImportMonthNotEqualTo(Integer value) {
            addCriterion("import_month <>", value, "importMonth");
            return (Criteria) this;
        }

        public Criteria andImportMonthGreaterThan(Integer value) {
            addCriterion("import_month >", value, "importMonth");
            return (Criteria) this;
        }

        public Criteria andImportMonthGreaterThanOrEqualTo(Integer value) {
            addCriterion("import_month >=", value, "importMonth");
            return (Criteria) this;
        }

        public Criteria andImportMonthLessThan(Integer value) {
            addCriterion("import_month <", value, "importMonth");
            return (Criteria) this;
        }

        public Criteria andImportMonthLessThanOrEqualTo(Integer value) {
            addCriterion("import_month <=", value, "importMonth");
            return (Criteria) this;
        }

        public Criteria andImportMonthIn(List<Integer> values) {
            addCriterion("import_month in", values, "importMonth");
            return (Criteria) this;
        }

        public Criteria andImportMonthNotIn(List<Integer> values) {
            addCriterion("import_month not in", values, "importMonth");
            return (Criteria) this;
        }

        public Criteria andImportMonthBetween(Integer value1, Integer value2) {
            addCriterion("import_month between", value1, value2, "importMonth");
            return (Criteria) this;
        }

        public Criteria andImportMonthNotBetween(Integer value1, Integer value2) {
            addCriterion("import_month not between", value1, value2, "importMonth");
            return (Criteria) this;
        }

        public Criteria andImportDayIsNull() {
            addCriterion("import_day is null");
            return (Criteria) this;
        }

        public Criteria andImportDayIsNotNull() {
            addCriterion("import_day is not null");
            return (Criteria) this;
        }

        public Criteria andImportDayEqualTo(Integer value) {
            addCriterion("import_day =", value, "importDay");
            return (Criteria) this;
        }

        public Criteria andImportDayNotEqualTo(Integer value) {
            addCriterion("import_day <>", value, "importDay");
            return (Criteria) this;
        }

        public Criteria andImportDayGreaterThan(Integer value) {
            addCriterion("import_day >", value, "importDay");
            return (Criteria) this;
        }

        public Criteria andImportDayGreaterThanOrEqualTo(Integer value) {
            addCriterion("import_day >=", value, "importDay");
            return (Criteria) this;
        }

        public Criteria andImportDayLessThan(Integer value) {
            addCriterion("import_day <", value, "importDay");
            return (Criteria) this;
        }

        public Criteria andImportDayLessThanOrEqualTo(Integer value) {
            addCriterion("import_day <=", value, "importDay");
            return (Criteria) this;
        }

        public Criteria andImportDayIn(List<Integer> values) {
            addCriterion("import_day in", values, "importDay");
            return (Criteria) this;
        }

        public Criteria andImportDayNotIn(List<Integer> values) {
            addCriterion("import_day not in", values, "importDay");
            return (Criteria) this;
        }

        public Criteria andImportDayBetween(Integer value1, Integer value2) {
            addCriterion("import_day between", value1, value2, "importDay");
            return (Criteria) this;
        }

        public Criteria andImportDayNotBetween(Integer value1, Integer value2) {
            addCriterion("import_day not between", value1, value2, "importDay");
            return (Criteria) this;
        }

        public Criteria andAInfoIsNull() {
            addCriterion("a_info is null");
            return (Criteria) this;
        }

        public Criteria andAInfoIsNotNull() {
            addCriterion("a_info is not null");
            return (Criteria) this;
        }

        public Criteria andAInfoEqualTo(Integer value) {
            addCriterion("a_info =", value, "aInfo");
            return (Criteria) this;
        }

        public Criteria andAInfoNotEqualTo(Integer value) {
            addCriterion("a_info <>", value, "aInfo");
            return (Criteria) this;
        }

        public Criteria andAInfoGreaterThan(Integer value) {
            addCriterion("a_info >", value, "aInfo");
            return (Criteria) this;
        }

        public Criteria andAInfoGreaterThanOrEqualTo(Integer value) {
            addCriterion("a_info >=", value, "aInfo");
            return (Criteria) this;
        }

        public Criteria andAInfoLessThan(Integer value) {
            addCriterion("a_info <", value, "aInfo");
            return (Criteria) this;
        }

        public Criteria andAInfoLessThanOrEqualTo(Integer value) {
            addCriterion("a_info <=", value, "aInfo");
            return (Criteria) this;
        }

        public Criteria andAInfoIn(List<Integer> values) {
            addCriterion("a_info in", values, "aInfo");
            return (Criteria) this;
        }

        public Criteria andAInfoNotIn(List<Integer> values) {
            addCriterion("a_info not in", values, "aInfo");
            return (Criteria) this;
        }

        public Criteria andAInfoBetween(Integer value1, Integer value2) {
            addCriterion("a_info between", value1, value2, "aInfo");
            return (Criteria) this;
        }

        public Criteria andAInfoNotBetween(Integer value1, Integer value2) {
            addCriterion("a_info not between", value1, value2, "aInfo");
            return (Criteria) this;
        }

        public Criteria andWangwangIdIsNull() {
            addCriterion("wangwang_id is null");
            return (Criteria) this;
        }

        public Criteria andWangwangIdIsNotNull() {
            addCriterion("wangwang_id is not null");
            return (Criteria) this;
        }

        public Criteria andWangwangIdEqualTo(Integer value) {
            addCriterion("wangwang_id =", value, "wangwangId");
            return (Criteria) this;
        }

        public Criteria andWangwangIdNotEqualTo(Integer value) {
            addCriterion("wangwang_id <>", value, "wangwangId");
            return (Criteria) this;
        }

        public Criteria andWangwangIdGreaterThan(Integer value) {
            addCriterion("wangwang_id >", value, "wangwangId");
            return (Criteria) this;
        }

        public Criteria andWangwangIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("wangwang_id >=", value, "wangwangId");
            return (Criteria) this;
        }

        public Criteria andWangwangIdLessThan(Integer value) {
            addCriterion("wangwang_id <", value, "wangwangId");
            return (Criteria) this;
        }

        public Criteria andWangwangIdLessThanOrEqualTo(Integer value) {
            addCriterion("wangwang_id <=", value, "wangwangId");
            return (Criteria) this;
        }

        public Criteria andWangwangIdIn(List<Integer> values) {
            addCriterion("wangwang_id in", values, "wangwangId");
            return (Criteria) this;
        }

        public Criteria andWangwangIdNotIn(List<Integer> values) {
            addCriterion("wangwang_id not in", values, "wangwangId");
            return (Criteria) this;
        }

        public Criteria andWangwangIdBetween(Integer value1, Integer value2) {
            addCriterion("wangwang_id between", value1, value2, "wangwangId");
            return (Criteria) this;
        }

        public Criteria andWangwangIdNotBetween(Integer value1, Integer value2) {
            addCriterion("wangwang_id not between", value1, value2, "wangwangId");
            return (Criteria) this;
        }

        public Criteria andAPriceIsNull() {
            addCriterion("a_price is null");
            return (Criteria) this;
        }

        public Criteria andAPriceIsNotNull() {
            addCriterion("a_price is not null");
            return (Criteria) this;
        }

        public Criteria andAPriceEqualTo(Integer value) {
            addCriterion("a_price =", value, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceNotEqualTo(Integer value) {
            addCriterion("a_price <>", value, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceGreaterThan(Integer value) {
            addCriterion("a_price >", value, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceGreaterThanOrEqualTo(Integer value) {
            addCriterion("a_price >=", value, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceLessThan(Integer value) {
            addCriterion("a_price <", value, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceLessThanOrEqualTo(Integer value) {
            addCriterion("a_price <=", value, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceIn(List<Integer> values) {
            addCriterion("a_price in", values, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceNotIn(List<Integer> values) {
            addCriterion("a_price not in", values, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceBetween(Integer value1, Integer value2) {
            addCriterion("a_price between", value1, value2, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceNotBetween(Integer value1, Integer value2) {
            addCriterion("a_price not between", value1, value2, "aPrice");
            return (Criteria) this;
        }

        public Criteria andStoreNameIsNull() {
            addCriterion("store_name is null");
            return (Criteria) this;
        }

        public Criteria andStoreNameIsNotNull() {
            addCriterion("store_name is not null");
            return (Criteria) this;
        }

        public Criteria andStoreNameEqualTo(Integer value) {
            addCriterion("store_name =", value, "storeName");
            return (Criteria) this;
        }

        public Criteria andStoreNameNotEqualTo(Integer value) {
            addCriterion("store_name <>", value, "storeName");
            return (Criteria) this;
        }

        public Criteria andStoreNameGreaterThan(Integer value) {
            addCriterion("store_name >", value, "storeName");
            return (Criteria) this;
        }

        public Criteria andStoreNameGreaterThanOrEqualTo(Integer value) {
            addCriterion("store_name >=", value, "storeName");
            return (Criteria) this;
        }

        public Criteria andStoreNameLessThan(Integer value) {
            addCriterion("store_name <", value, "storeName");
            return (Criteria) this;
        }

        public Criteria andStoreNameLessThanOrEqualTo(Integer value) {
            addCriterion("store_name <=", value, "storeName");
            return (Criteria) this;
        }

        public Criteria andStoreNameIn(List<Integer> values) {
            addCriterion("store_name in", values, "storeName");
            return (Criteria) this;
        }

        public Criteria andStoreNameNotIn(List<Integer> values) {
            addCriterion("store_name not in", values, "storeName");
            return (Criteria) this;
        }

        public Criteria andStoreNameBetween(Integer value1, Integer value2) {
            addCriterion("store_name between", value1, value2, "storeName");
            return (Criteria) this;
        }

        public Criteria andStoreNameNotBetween(Integer value1, Integer value2) {
            addCriterion("store_name not between", value1, value2, "storeName");
            return (Criteria) this;
        }

        public Criteria andBPriceIsNull() {
            addCriterion("b_price is null");
            return (Criteria) this;
        }

        public Criteria andBPriceIsNotNull() {
            addCriterion("b_price is not null");
            return (Criteria) this;
        }

        public Criteria andBPriceEqualTo(Integer value) {
            addCriterion("b_price =", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceNotEqualTo(Integer value) {
            addCriterion("b_price <>", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceGreaterThan(Integer value) {
            addCriterion("b_price >", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceGreaterThanOrEqualTo(Integer value) {
            addCriterion("b_price >=", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceLessThan(Integer value) {
            addCriterion("b_price <", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceLessThanOrEqualTo(Integer value) {
            addCriterion("b_price <=", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceIn(List<Integer> values) {
            addCriterion("b_price in", values, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceNotIn(List<Integer> values) {
            addCriterion("b_price not in", values, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceBetween(Integer value1, Integer value2) {
            addCriterion("b_price between", value1, value2, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceNotBetween(Integer value1, Integer value2) {
            addCriterion("b_price not between", value1, value2, "bPrice");
            return (Criteria) this;
        }

        public Criteria andCommissionIsNull() {
            addCriterion("commission is null");
            return (Criteria) this;
        }

        public Criteria andCommissionIsNotNull() {
            addCriterion("commission is not null");
            return (Criteria) this;
        }

        public Criteria andCommissionEqualTo(Integer value) {
            addCriterion("commission =", value, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionNotEqualTo(Integer value) {
            addCriterion("commission <>", value, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionGreaterThan(Integer value) {
            addCriterion("commission >", value, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionGreaterThanOrEqualTo(Integer value) {
            addCriterion("commission >=", value, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionLessThan(Integer value) {
            addCriterion("commission <", value, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionLessThanOrEqualTo(Integer value) {
            addCriterion("commission <=", value, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionIn(List<Integer> values) {
            addCriterion("commission in", values, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionNotIn(List<Integer> values) {
            addCriterion("commission not in", values, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionBetween(Integer value1, Integer value2) {
            addCriterion("commission between", value1, value2, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionNotBetween(Integer value1, Integer value2) {
            addCriterion("commission not between", value1, value2, "commission");
            return (Criteria) this;
        }

        public Criteria andBInfoIsNull() {
            addCriterion("b_info is null");
            return (Criteria) this;
        }

        public Criteria andBInfoIsNotNull() {
            addCriterion("b_info is not null");
            return (Criteria) this;
        }

        public Criteria andBInfoEqualTo(Integer value) {
            addCriterion("b_info =", value, "bInfo");
            return (Criteria) this;
        }

        public Criteria andBInfoNotEqualTo(Integer value) {
            addCriterion("b_info <>", value, "bInfo");
            return (Criteria) this;
        }

        public Criteria andBInfoGreaterThan(Integer value) {
            addCriterion("b_info >", value, "bInfo");
            return (Criteria) this;
        }

        public Criteria andBInfoGreaterThanOrEqualTo(Integer value) {
            addCriterion("b_info >=", value, "bInfo");
            return (Criteria) this;
        }

        public Criteria andBInfoLessThan(Integer value) {
            addCriterion("b_info <", value, "bInfo");
            return (Criteria) this;
        }

        public Criteria andBInfoLessThanOrEqualTo(Integer value) {
            addCriterion("b_info <=", value, "bInfo");
            return (Criteria) this;
        }

        public Criteria andBInfoIn(List<Integer> values) {
            addCriterion("b_info in", values, "bInfo");
            return (Criteria) this;
        }

        public Criteria andBInfoNotIn(List<Integer> values) {
            addCriterion("b_info not in", values, "bInfo");
            return (Criteria) this;
        }

        public Criteria andBInfoBetween(Integer value1, Integer value2) {
            addCriterion("b_info between", value1, value2, "bInfo");
            return (Criteria) this;
        }

        public Criteria andBInfoNotBetween(Integer value1, Integer value2) {
            addCriterion("b_info not between", value1, value2, "bInfo");
            return (Criteria) this;
        }

        public Criteria andRemark1IsNull() {
            addCriterion("remark_1 is null");
            return (Criteria) this;
        }

        public Criteria andRemark1IsNotNull() {
            addCriterion("remark_1 is not null");
            return (Criteria) this;
        }

        public Criteria andRemark1EqualTo(Integer value) {
            addCriterion("remark_1 =", value, "remark1");
            return (Criteria) this;
        }

        public Criteria andRemark1NotEqualTo(Integer value) {
            addCriterion("remark_1 <>", value, "remark1");
            return (Criteria) this;
        }

        public Criteria andRemark1GreaterThan(Integer value) {
            addCriterion("remark_1 >", value, "remark1");
            return (Criteria) this;
        }

        public Criteria andRemark1GreaterThanOrEqualTo(Integer value) {
            addCriterion("remark_1 >=", value, "remark1");
            return (Criteria) this;
        }

        public Criteria andRemark1LessThan(Integer value) {
            addCriterion("remark_1 <", value, "remark1");
            return (Criteria) this;
        }

        public Criteria andRemark1LessThanOrEqualTo(Integer value) {
            addCriterion("remark_1 <=", value, "remark1");
            return (Criteria) this;
        }

        public Criteria andRemark1In(List<Integer> values) {
            addCriterion("remark_1 in", values, "remark1");
            return (Criteria) this;
        }

        public Criteria andRemark1NotIn(List<Integer> values) {
            addCriterion("remark_1 not in", values, "remark1");
            return (Criteria) this;
        }

        public Criteria andRemark1Between(Integer value1, Integer value2) {
            addCriterion("remark_1 between", value1, value2, "remark1");
            return (Criteria) this;
        }

        public Criteria andRemark1NotBetween(Integer value1, Integer value2) {
            addCriterion("remark_1 not between", value1, value2, "remark1");
            return (Criteria) this;
        }

        public Criteria andRemark2IsNull() {
            addCriterion("remark_2 is null");
            return (Criteria) this;
        }

        public Criteria andRemark2IsNotNull() {
            addCriterion("remark_2 is not null");
            return (Criteria) this;
        }

        public Criteria andRemark2EqualTo(Integer value) {
            addCriterion("remark_2 =", value, "remark2");
            return (Criteria) this;
        }

        public Criteria andRemark2NotEqualTo(Integer value) {
            addCriterion("remark_2 <>", value, "remark2");
            return (Criteria) this;
        }

        public Criteria andRemark2GreaterThan(Integer value) {
            addCriterion("remark_2 >", value, "remark2");
            return (Criteria) this;
        }

        public Criteria andRemark2GreaterThanOrEqualTo(Integer value) {
            addCriterion("remark_2 >=", value, "remark2");
            return (Criteria) this;
        }

        public Criteria andRemark2LessThan(Integer value) {
            addCriterion("remark_2 <", value, "remark2");
            return (Criteria) this;
        }

        public Criteria andRemark2LessThanOrEqualTo(Integer value) {
            addCriterion("remark_2 <=", value, "remark2");
            return (Criteria) this;
        }

        public Criteria andRemark2In(List<Integer> values) {
            addCriterion("remark_2 in", values, "remark2");
            return (Criteria) this;
        }

        public Criteria andRemark2NotIn(List<Integer> values) {
            addCriterion("remark_2 not in", values, "remark2");
            return (Criteria) this;
        }

        public Criteria andRemark2Between(Integer value1, Integer value2) {
            addCriterion("remark_2 between", value1, value2, "remark2");
            return (Criteria) this;
        }

        public Criteria andRemark2NotBetween(Integer value1, Integer value2) {
            addCriterion("remark_2 not between", value1, value2, "remark2");
            return (Criteria) this;
        }

        public Criteria andRemark3IsNull() {
            addCriterion("remark_3 is null");
            return (Criteria) this;
        }

        public Criteria andRemark3IsNotNull() {
            addCriterion("remark_3 is not null");
            return (Criteria) this;
        }

        public Criteria andRemark3EqualTo(Integer value) {
            addCriterion("remark_3 =", value, "remark3");
            return (Criteria) this;
        }

        public Criteria andRemark3NotEqualTo(Integer value) {
            addCriterion("remark_3 <>", value, "remark3");
            return (Criteria) this;
        }

        public Criteria andRemark3GreaterThan(Integer value) {
            addCriterion("remark_3 >", value, "remark3");
            return (Criteria) this;
        }

        public Criteria andRemark3GreaterThanOrEqualTo(Integer value) {
            addCriterion("remark_3 >=", value, "remark3");
            return (Criteria) this;
        }

        public Criteria andRemark3LessThan(Integer value) {
            addCriterion("remark_3 <", value, "remark3");
            return (Criteria) this;
        }

        public Criteria andRemark3LessThanOrEqualTo(Integer value) {
            addCriterion("remark_3 <=", value, "remark3");
            return (Criteria) this;
        }

        public Criteria andRemark3In(List<Integer> values) {
            addCriterion("remark_3 in", values, "remark3");
            return (Criteria) this;
        }

        public Criteria andRemark3NotIn(List<Integer> values) {
            addCriterion("remark_3 not in", values, "remark3");
            return (Criteria) this;
        }

        public Criteria andRemark3Between(Integer value1, Integer value2) {
            addCriterion("remark_3 between", value1, value2, "remark3");
            return (Criteria) this;
        }

        public Criteria andRemark3NotBetween(Integer value1, Integer value2) {
            addCriterion("remark_3 not between", value1, value2, "remark3");
            return (Criteria) this;
        }

        public Criteria andRoleIdIsNull() {
            addCriterion("role_id is null");
            return (Criteria) this;
        }

        public Criteria andRoleIdIsNotNull() {
            addCriterion("role_id is not null");
            return (Criteria) this;
        }

        public Criteria andRoleIdEqualTo(Integer value) {
            addCriterion("role_id =", value, "roleId");
            return (Criteria) this;
        }

        public Criteria andRoleIdNotEqualTo(Integer value) {
            addCriterion("role_id <>", value, "roleId");
            return (Criteria) this;
        }

        public Criteria andRoleIdGreaterThan(Integer value) {
            addCriterion("role_id >", value, "roleId");
            return (Criteria) this;
        }

        public Criteria andRoleIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("role_id >=", value, "roleId");
            return (Criteria) this;
        }

        public Criteria andRoleIdLessThan(Integer value) {
            addCriterion("role_id <", value, "roleId");
            return (Criteria) this;
        }

        public Criteria andRoleIdLessThanOrEqualTo(Integer value) {
            addCriterion("role_id <=", value, "roleId");
            return (Criteria) this;
        }

        public Criteria andRoleIdIn(List<Integer> values) {
            addCriterion("role_id in", values, "roleId");
            return (Criteria) this;
        }

        public Criteria andRoleIdNotIn(List<Integer> values) {
            addCriterion("role_id not in", values, "roleId");
            return (Criteria) this;
        }

        public Criteria andRoleIdBetween(Integer value1, Integer value2) {
            addCriterion("role_id between", value1, value2, "roleId");
            return (Criteria) this;
        }

        public Criteria andRoleIdNotBetween(Integer value1, Integer value2) {
            addCriterion("role_id not between", value1, value2, "roleId");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

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