package com.macro.mall.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class ImportDataExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ImportDataExample() {
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

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Long value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Long value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Long value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Long value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Long value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Long value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Long> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Long> values) {
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

        public Criteria andAddtimeIsNull() {
            addCriterion("addTime is null");
            return (Criteria) this;
        }

        public Criteria andAddtimeIsNotNull() {
            addCriterion("addTime is not null");
            return (Criteria) this;
        }

        public Criteria andAddtimeEqualTo(Date value) {
            addCriterionForJDBCDate("addTime =", value, "addtime");
            return (Criteria) this;
        }

        public Criteria andAddtimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("addTime <>", value, "addtime");
            return (Criteria) this;
        }

        public Criteria andAddtimeGreaterThan(Date value) {
            addCriterionForJDBCDate("addTime >", value, "addtime");
            return (Criteria) this;
        }

        public Criteria andAddtimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("addTime >=", value, "addtime");
            return (Criteria) this;
        }

        public Criteria andAddtimeLessThan(Date value) {
            addCriterionForJDBCDate("addTime <", value, "addtime");
            return (Criteria) this;
        }

        public Criteria andAddtimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("addTime <=", value, "addtime");
            return (Criteria) this;
        }

        public Criteria andAddtimeIn(List<Date> values) {
            addCriterionForJDBCDate("addTime in", values, "addtime");
            return (Criteria) this;
        }

        public Criteria andAddtimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("addTime not in", values, "addtime");
            return (Criteria) this;
        }

        public Criteria andAddtimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("addTime between", value1, value2, "addtime");
            return (Criteria) this;
        }

        public Criteria andAddtimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("addTime not between", value1, value2, "addtime");
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

        public Criteria andWangwangIdIsNull() {
            addCriterion("wangwang_id is null");
            return (Criteria) this;
        }

        public Criteria andWangwangIdIsNotNull() {
            addCriterion("wangwang_id is not null");
            return (Criteria) this;
        }

        public Criteria andWangwangIdEqualTo(String value) {
            addCriterion("wangwang_id =", value, "wangwangId");
            return (Criteria) this;
        }

        public Criteria andWangwangIdNotEqualTo(String value) {
            addCriterion("wangwang_id <>", value, "wangwangId");
            return (Criteria) this;
        }

        public Criteria andWangwangIdGreaterThan(String value) {
            addCriterion("wangwang_id >", value, "wangwangId");
            return (Criteria) this;
        }

        public Criteria andWangwangIdGreaterThanOrEqualTo(String value) {
            addCriterion("wangwang_id >=", value, "wangwangId");
            return (Criteria) this;
        }

        public Criteria andWangwangIdLessThan(String value) {
            addCriterion("wangwang_id <", value, "wangwangId");
            return (Criteria) this;
        }

        public Criteria andWangwangIdLessThanOrEqualTo(String value) {
            addCriterion("wangwang_id <=", value, "wangwangId");
            return (Criteria) this;
        }

        public Criteria andWangwangIdLike(String value) {
            addCriterion("wangwang_id like", "%"+value+"%", "wangwangId");
            return (Criteria) this;
        }

        public Criteria andWangwangIdNotLike(String value) {
            addCriterion("wangwang_id not like", value, "wangwangId");
            return (Criteria) this;
        }

        public Criteria andWangwangIdIn(List<String> values) {
            addCriterion("wangwang_id in", values, "wangwangId");
            return (Criteria) this;
        }

        public Criteria andWangwangIdNotIn(List<String> values) {
            addCriterion("wangwang_id not in", values, "wangwangId");
            return (Criteria) this;
        }

        public Criteria andWangwangIdBetween(String value1, String value2) {
            addCriterion("wangwang_id between", value1, value2, "wangwangId");
            return (Criteria) this;
        }

        public Criteria andWangwangIdNotBetween(String value1, String value2) {
            addCriterion("wangwang_id not between", value1, value2, "wangwangId");
            return (Criteria) this;
        }
        public Criteria andAInfoLike(String value) {
            addCriterion("a_info like", "%"+value+"%", "aInfo");
            return (Criteria) this;
        }
        public Criteria andBInfoLike(String value) {
            addCriterion("b_info like", "%"+value+"%", "bInfo");
            return (Criteria) this;
        }
        public Criteria andRemark1(String value) {
            addCriterion("remark_1 like", "%"+value+"%", "remark1");
            return (Criteria) this;
        }
        public Criteria andRemark2(String value) {
            addCriterion("remark_2 like", "%"+value+"%", "remark2");
            return (Criteria) this;
        }
        public Criteria andRemark3(String value) {
            addCriterion("remark_3 like", "%"+value+"%", "remark3");
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

        public Criteria andAPriceEqualTo(BigDecimal value) {
            addCriterion("a_price =", value, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceNotEqualTo(BigDecimal value) {
            addCriterion("a_price <>", value, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceGreaterThan(BigDecimal value) {
            addCriterion("a_price >", value, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("a_price >=", value, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceLessThan(BigDecimal value) {
            addCriterion("a_price <", value, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceLessThanOrEqualTo(BigDecimal value) {
            addCriterion("a_price <=", value, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceIn(List<BigDecimal> values) {
            addCriterion("a_price in", values, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceNotIn(List<BigDecimal> values) {
            addCriterion("a_price not in", values, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("a_price between", value1, value2, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceNotBetween(BigDecimal value1, BigDecimal value2) {
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

        public Criteria andStoreNameEqualTo(String value) {
            addCriterion("store_name =", value, "storeName");
            return (Criteria) this;
        }

        public Criteria andStoreNameNotEqualTo(String value) {
            addCriterion("store_name <>", value, "storeName");
            return (Criteria) this;
        }

        public Criteria andStoreNameGreaterThan(String value) {
            addCriterion("store_name >", value, "storeName");
            return (Criteria) this;
        }

        public Criteria andStoreNameGreaterThanOrEqualTo(String value) {
            addCriterion("store_name >=", value, "storeName");
            return (Criteria) this;
        }

        public Criteria andStoreNameLessThan(String value) {
            addCriterion("store_name <", value, "storeName");
            return (Criteria) this;
        }

        public Criteria andStoreNameLessThanOrEqualTo(String value) {
            addCriterion("store_name <=", value, "storeName");
            return (Criteria) this;
        }

        public Criteria andStoreNameLike(String value) {
            addCriterion("store_name like", "%"+value+"%", "storeName");
            return (Criteria) this;
        }

        public Criteria andStoreNameNotLike(String value) {
            addCriterion("store_name not like", value, "storeName");
            return (Criteria) this;
        }

        public Criteria andStoreNameIn(List<String> values) {
            addCriterion("store_name in", values, "storeName");
            return (Criteria) this;
        }

        public Criteria andStoreNameNotIn(List<String> values) {
            addCriterion("store_name not in", values, "storeName");
            return (Criteria) this;
        }

        public Criteria andStoreNameBetween(String value1, String value2) {
            addCriterion("store_name between", value1, value2, "storeName");
            return (Criteria) this;
        }

        public Criteria andStoreNameNotBetween(String value1, String value2) {
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

        public Criteria andBPriceEqualTo(BigDecimal value) {
            addCriterion("b_price =", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceNotEqualTo(BigDecimal value) {
            addCriterion("b_price <>", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceGreaterThan(BigDecimal value) {
            addCriterion("b_price >", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("b_price >=", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceLessThan(BigDecimal value) {
            addCriterion("b_price <", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceLessThanOrEqualTo(BigDecimal value) {
            addCriterion("b_price <=", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceIn(List<BigDecimal> values) {
            addCriterion("b_price in", values, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceNotIn(List<BigDecimal> values) {
            addCriterion("b_price not in", values, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("b_price between", value1, value2, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceNotBetween(BigDecimal value1, BigDecimal value2) {
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

        public Criteria andCommissionEqualTo(BigDecimal value) {
            addCriterion("commission =", value, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionNotEqualTo(BigDecimal value) {
            addCriterion("commission <>", value, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionGreaterThan(BigDecimal value) {
            addCriterion("commission >", value, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("commission >=", value, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionLessThan(BigDecimal value) {
            addCriterion("commission <", value, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionLessThanOrEqualTo(BigDecimal value) {
            addCriterion("commission <=", value, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionIn(List<BigDecimal> values) {
            addCriterion("commission in", values, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionNotIn(List<BigDecimal> values) {
            addCriterion("commission not in", values, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("commission between", value1, value2, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("commission not between", value1, value2, "commission");
            return (Criteria) this;
        }

        public Criteria andPrice1strIsNull() {
            addCriterion("price1str is null");
            return (Criteria) this;
        }

        public Criteria andPrice1strIsNotNull() {
            addCriterion("price1str is not null");
            return (Criteria) this;
        }

        public Criteria andPrice1strEqualTo(String value) {
            addCriterion("price1str =", value, "price1str");
            return (Criteria) this;
        }

        public Criteria andPrice1strNotEqualTo(String value) {
            addCriterion("price1str <>", value, "price1str");
            return (Criteria) this;
        }

        public Criteria andPrice1strGreaterThan(String value) {
            addCriterion("price1str >", value, "price1str");
            return (Criteria) this;
        }

        public Criteria andPrice1strGreaterThanOrEqualTo(String value) {
            addCriterion("price1str >=", value, "price1str");
            return (Criteria) this;
        }

        public Criteria andPrice1strLessThan(String value) {
            addCriterion("price1str <", value, "price1str");
            return (Criteria) this;
        }

        public Criteria andPrice1strLessThanOrEqualTo(String value) {
            addCriterion("price1str <=", value, "price1str");
            return (Criteria) this;
        }

        public Criteria andPrice1strLike(String value) {
            addCriterion("price1str like", value, "price1str");
            return (Criteria) this;
        }

        public Criteria andPrice1strNotLike(String value) {
            addCriterion("price1str not like", value, "price1str");
            return (Criteria) this;
        }

        public Criteria andPrice1strIn(List<String> values) {
            addCriterion("price1str in", values, "price1str");
            return (Criteria) this;
        }

        public Criteria andPrice1strNotIn(List<String> values) {
            addCriterion("price1str not in", values, "price1str");
            return (Criteria) this;
        }

        public Criteria andPrice1strBetween(String value1, String value2) {
            addCriterion("price1str between", value1, value2, "price1str");
            return (Criteria) this;
        }

        public Criteria andPrice1strNotBetween(String value1, String value2) {
            addCriterion("price1str not between", value1, value2, "price1str");
            return (Criteria) this;
        }

        public Criteria andPrice2strIsNull() {
            addCriterion("price2str is null");
            return (Criteria) this;
        }

        public Criteria andPrice2strIsNotNull() {
            addCriterion("price2str is not null");
            return (Criteria) this;
        }

        public Criteria andPrice2strEqualTo(String value) {
            addCriterion("price2str =", value, "price2str");
            return (Criteria) this;
        }

        public Criteria andPrice2strNotEqualTo(String value) {
            addCriterion("price2str <>", value, "price2str");
            return (Criteria) this;
        }

        public Criteria andPrice2strGreaterThan(String value) {
            addCriterion("price2str >", value, "price2str");
            return (Criteria) this;
        }

        public Criteria andPrice2strGreaterThanOrEqualTo(String value) {
            addCriterion("price2str >=", value, "price2str");
            return (Criteria) this;
        }

        public Criteria andPrice2strLessThan(String value) {
            addCriterion("price2str <", value, "price2str");
            return (Criteria) this;
        }

        public Criteria andPrice2strLessThanOrEqualTo(String value) {
            addCriterion("price2str <=", value, "price2str");
            return (Criteria) this;
        }

        public Criteria andPrice2strLike(String value) {
            addCriterion("price2str like", value, "price2str");
            return (Criteria) this;
        }

        public Criteria andPrice2strNotLike(String value) {
            addCriterion("price2str not like", value, "price2str");
            return (Criteria) this;
        }

        public Criteria andPrice2strIn(List<String> values) {
            addCriterion("price2str in", values, "price2str");
            return (Criteria) this;
        }

        public Criteria andPrice2strNotIn(List<String> values) {
            addCriterion("price2str not in", values, "price2str");
            return (Criteria) this;
        }

        public Criteria andPrice2strBetween(String value1, String value2) {
            addCriterion("price2str between", value1, value2, "price2str");
            return (Criteria) this;
        }

        public Criteria andPrice2strNotBetween(String value1, String value2) {
            addCriterion("price2str not between", value1, value2, "price2str");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdIsNull() {
            addCriterion("create_user_id is null");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdIsNotNull() {
            addCriterion("create_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdEqualTo(Integer value) {
            addCriterion("create_user_id =", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdNotEqualTo(Integer value) {
            addCriterion("create_user_id <>", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdGreaterThan(Integer value) {
            addCriterion("create_user_id >", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("create_user_id >=", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdLessThan(Integer value) {
            addCriterion("create_user_id <", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("create_user_id <=", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdIn(List<Integer> values) {
            addCriterion("create_user_id in", values, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdNotIn(List<Integer> values) {
            addCriterion("create_user_id not in", values, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdBetween(Integer value1, Integer value2) {
            addCriterion("create_user_id between", value1, value2, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("create_user_id not between", value1, value2, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUsernameIsNull() {
            addCriterion("create_username is null");
            return (Criteria) this;
        }

        public Criteria andCreateUsernameIsNotNull() {
            addCriterion("create_username is not null");
            return (Criteria) this;
        }

        public Criteria andCreateUsernameEqualTo(String value) {
            addCriterion("create_username =", value, "createUsername");
            return (Criteria) this;
        }

        public Criteria andCreateUsernameNotEqualTo(String value) {
            addCriterion("create_username <>", value, "createUsername");
            return (Criteria) this;
        }

        public Criteria andCreateUsernameGreaterThan(String value) {
            addCriterion("create_username >", value, "createUsername");
            return (Criteria) this;
        }

        public Criteria andCreateUsernameGreaterThanOrEqualTo(String value) {
            addCriterion("create_username >=", value, "createUsername");
            return (Criteria) this;
        }

        public Criteria andCreateUsernameLessThan(String value) {
            addCriterion("create_username <", value, "createUsername");
            return (Criteria) this;
        }

        public Criteria andCreateUsernameLessThanOrEqualTo(String value) {
            addCriterion("create_username <=", value, "createUsername");
            return (Criteria) this;
        }

        public Criteria andCreateUsernameLike(String value) {
            addCriterion("create_username like", value, "createUsername");
            return (Criteria) this;
        }

        public Criteria andCreateUsernameNotLike(String value) {
            addCriterion("create_username not like", value, "createUsername");
            return (Criteria) this;
        }

        public Criteria andCreateUsernameIn(List<String> values) {
            addCriterion("create_username in", values, "createUsername");
            return (Criteria) this;
        }

        public Criteria andCreateUsernameNotIn(List<String> values) {
            addCriterion("create_username not in", values, "createUsername");
            return (Criteria) this;
        }

        public Criteria andCreateUsernameBetween(String value1, String value2) {
            addCriterion("create_username between", value1, value2, "createUsername");
            return (Criteria) this;
        }

        public Criteria andCreateUsernameNotBetween(String value1, String value2) {
            addCriterion("create_username not between", value1, value2, "createUsername");
            return (Criteria) this;
        }

        public Criteria andCodeIsNull() {
            addCriterion("code is null");
            return (Criteria) this;
        }

        public Criteria andCodeIsNotNull() {
            addCriterion("code is not null");
            return (Criteria) this;
        }

        public Criteria andCodeEqualTo(String value) {
            addCriterion("code =", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeNotEqualTo(String value) {
            addCriterion("code <>", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeGreaterThan(String value) {
            addCriterion("code >", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeGreaterThanOrEqualTo(String value) {
            addCriterion("code >=", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeLessThan(String value) {
            addCriterion("code <", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeLessThanOrEqualTo(String value) {
            addCriterion("code <=", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeLike(String value) {
            addCriterion("code like", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeNotLike(String value) {
            addCriterion("code not like", value, "code");
            return (Criteria) this;
        }

        public Criteria andCodeIn(List<String> values) {
            addCriterion("code in", values, "code");
            return (Criteria) this;
        }

        public Criteria andCodeNotIn(List<String> values) {
            addCriterion("code not in", values, "code");
            return (Criteria) this;
        }

        public Criteria andCodeBetween(String value1, String value2) {
            addCriterion("code between", value1, value2, "code");
            return (Criteria) this;
        }

        public Criteria andCodeNotBetween(String value1, String value2) {
            addCriterion("code not between", value1, value2, "code");
            return (Criteria) this;
        }

        public Criteria andCommissionStrIsNull() {
            addCriterion("commission_str is null");
            return (Criteria) this;
        }

        public Criteria andCommissionStrIsNotNull() {
            addCriterion("commission_str is not null");
            return (Criteria) this;
        }

        public Criteria andCommissionStrEqualTo(String value) {
            addCriterion("commission_str =", value, "commissionStr");
            return (Criteria) this;
        }

        public Criteria andCommissionStrNotEqualTo(String value) {
            addCriterion("commission_str <>", value, "commissionStr");
            return (Criteria) this;
        }

        public Criteria andCommissionStrGreaterThan(String value) {
            addCriterion("commission_str >", value, "commissionStr");
            return (Criteria) this;
        }

        public Criteria andCommissionStrGreaterThanOrEqualTo(String value) {
            addCriterion("commission_str >=", value, "commissionStr");
            return (Criteria) this;
        }

        public Criteria andCommissionStrLessThan(String value) {
            addCriterion("commission_str <", value, "commissionStr");
            return (Criteria) this;
        }

        public Criteria andCommissionStrLessThanOrEqualTo(String value) {
            addCriterion("commission_str <=", value, "commissionStr");
            return (Criteria) this;
        }

        public Criteria andCommissionStrLike(String value) {
            addCriterion("commission_str like", value, "commissionStr");
            return (Criteria) this;
        }

        public Criteria andCommissionStrNotLike(String value) {
            addCriterion("commission_str not like", value, "commissionStr");
            return (Criteria) this;
        }

        public Criteria andCommissionStrIn(List<String> values) {
            addCriterion("commission_str in", values, "commissionStr");
            return (Criteria) this;
        }

        public Criteria andCommissionStrNotIn(List<String> values) {
            addCriterion("commission_str not in", values, "commissionStr");
            return (Criteria) this;
        }

        public Criteria andCommissionStrBetween(String value1, String value2) {
            addCriterion("commission_str between", value1, value2, "commissionStr");
            return (Criteria) this;
        }

        public Criteria andCommissionStrNotBetween(String value1, String value2) {
            addCriterion("commission_str not between", value1, value2, "commissionStr");
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