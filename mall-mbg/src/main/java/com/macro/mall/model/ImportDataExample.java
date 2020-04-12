package com.macro.mall.model;

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

        public Criteria andAPriceEqualTo(Long value) {
            addCriterion("a_price =", value, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceNotEqualTo(Long value) {
            addCriterion("a_price <>", value, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceGreaterThan(Long value) {
            addCriterion("a_price >", value, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceGreaterThanOrEqualTo(Long value) {
            addCriterion("a_price >=", value, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceLessThan(Long value) {
            addCriterion("a_price <", value, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceLessThanOrEqualTo(Long value) {
            addCriterion("a_price <=", value, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceIn(List<Long> values) {
            addCriterion("a_price in", values, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceNotIn(List<Long> values) {
            addCriterion("a_price not in", values, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceBetween(Long value1, Long value2) {
            addCriterion("a_price between", value1, value2, "aPrice");
            return (Criteria) this;
        }

        public Criteria andAPriceNotBetween(Long value1, Long value2) {
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

        public Criteria andBPriceEqualTo(Long value) {
            addCriterion("b_price =", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceNotEqualTo(Long value) {
            addCriterion("b_price <>", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceGreaterThan(Long value) {
            addCriterion("b_price >", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceGreaterThanOrEqualTo(Long value) {
            addCriterion("b_price >=", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceLessThan(Long value) {
            addCriterion("b_price <", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceLessThanOrEqualTo(Long value) {
            addCriterion("b_price <=", value, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceIn(List<Long> values) {
            addCriterion("b_price in", values, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceNotIn(List<Long> values) {
            addCriterion("b_price not in", values, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceBetween(Long value1, Long value2) {
            addCriterion("b_price between", value1, value2, "bPrice");
            return (Criteria) this;
        }

        public Criteria andBPriceNotBetween(Long value1, Long value2) {
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

        public Criteria andCommissionEqualTo(Long value) {
            addCriterion("commission =", value, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionNotEqualTo(Long value) {
            addCriterion("commission <>", value, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionGreaterThan(Long value) {
            addCriterion("commission >", value, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionGreaterThanOrEqualTo(Long value) {
            addCriterion("commission >=", value, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionLessThan(Long value) {
            addCriterion("commission <", value, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionLessThanOrEqualTo(Long value) {
            addCriterion("commission <=", value, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionIn(List<Long> values) {
            addCriterion("commission in", values, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionNotIn(List<Long> values) {
            addCriterion("commission not in", values, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionBetween(Long value1, Long value2) {
            addCriterion("commission between", value1, value2, "commission");
            return (Criteria) this;
        }

        public Criteria andCommissionNotBetween(Long value1, Long value2) {
            addCriterion("commission not between", value1, value2, "commission");
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