package com.macro.mall.model;

import java.util.ArrayList;
import java.util.List;

public class BudgetFieldExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public BudgetFieldExample() {
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

        public Criteria andTradedataIsNull() {
            addCriterion("tradeData is null");
            return (Criteria) this;
        }

        public Criteria andTradedataIsNotNull() {
            addCriterion("tradeData is not null");
            return (Criteria) this;
        }

        public Criteria andTradedataEqualTo(Integer value) {
            addCriterion("tradeData =", value, "tradedata");
            return (Criteria) this;
        }

        public Criteria andTradedataNotEqualTo(Integer value) {
            addCriterion("tradeData <>", value, "tradedata");
            return (Criteria) this;
        }

        public Criteria andTradedataGreaterThan(Integer value) {
            addCriterion("tradeData >", value, "tradedata");
            return (Criteria) this;
        }

        public Criteria andTradedataGreaterThanOrEqualTo(Integer value) {
            addCriterion("tradeData >=", value, "tradedata");
            return (Criteria) this;
        }

        public Criteria andTradedataLessThan(Integer value) {
            addCriterion("tradeData <", value, "tradedata");
            return (Criteria) this;
        }

        public Criteria andTradedataLessThanOrEqualTo(Integer value) {
            addCriterion("tradeData <=", value, "tradedata");
            return (Criteria) this;
        }

        public Criteria andTradedataIn(List<Integer> values) {
            addCriterion("tradeData in", values, "tradedata");
            return (Criteria) this;
        }

        public Criteria andTradedataNotIn(List<Integer> values) {
            addCriterion("tradeData not in", values, "tradedata");
            return (Criteria) this;
        }

        public Criteria andTradedataBetween(Integer value1, Integer value2) {
            addCriterion("tradeData between", value1, value2, "tradedata");
            return (Criteria) this;
        }

        public Criteria andTradedataNotBetween(Integer value1, Integer value2) {
            addCriterion("tradeData not between", value1, value2, "tradedata");
            return (Criteria) this;
        }

        public Criteria andStorenameIsNull() {
            addCriterion("storeName is null");
            return (Criteria) this;
        }

        public Criteria andStorenameIsNotNull() {
            addCriterion("storeName is not null");
            return (Criteria) this;
        }

        public Criteria andStorenameEqualTo(Integer value) {
            addCriterion("storeName =", value, "storename");
            return (Criteria) this;
        }

        public Criteria andStorenameNotEqualTo(Integer value) {
            addCriterion("storeName <>", value, "storename");
            return (Criteria) this;
        }

        public Criteria andStorenameGreaterThan(Integer value) {
            addCriterion("storeName >", value, "storename");
            return (Criteria) this;
        }

        public Criteria andStorenameGreaterThanOrEqualTo(Integer value) {
            addCriterion("storeName >=", value, "storename");
            return (Criteria) this;
        }

        public Criteria andStorenameLessThan(Integer value) {
            addCriterion("storeName <", value, "storename");
            return (Criteria) this;
        }

        public Criteria andStorenameLessThanOrEqualTo(Integer value) {
            addCriterion("storeName <=", value, "storename");
            return (Criteria) this;
        }

        public Criteria andStorenameIn(List<Integer> values) {
            addCriterion("storeName in", values, "storename");
            return (Criteria) this;
        }

        public Criteria andStorenameNotIn(List<Integer> values) {
            addCriterion("storeName not in", values, "storename");
            return (Criteria) this;
        }

        public Criteria andStorenameBetween(Integer value1, Integer value2) {
            addCriterion("storeName between", value1, value2, "storename");
            return (Criteria) this;
        }

        public Criteria andStorenameNotBetween(Integer value1, Integer value2) {
            addCriterion("storeName not between", value1, value2, "storename");
            return (Criteria) this;
        }

        public Criteria andTypeIsNull() {
            addCriterion("type is null");
            return (Criteria) this;
        }

        public Criteria andTypeIsNotNull() {
            addCriterion("type is not null");
            return (Criteria) this;
        }

        public Criteria andTypeEqualTo(Integer value) {
            addCriterion("type =", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotEqualTo(Integer value) {
            addCriterion("type <>", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThan(Integer value) {
            addCriterion("type >", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("type >=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThan(Integer value) {
            addCriterion("type <", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThanOrEqualTo(Integer value) {
            addCriterion("type <=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeIn(List<Integer> values) {
            addCriterion("type in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotIn(List<Integer> values) {
            addCriterion("type not in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeBetween(Integer value1, Integer value2) {
            addCriterion("type between", value1, value2, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("type not between", value1, value2, "type");
            return (Criteria) this;
        }

        public Criteria andPayIsNull() {
            addCriterion("pay is null");
            return (Criteria) this;
        }

        public Criteria andPayIsNotNull() {
            addCriterion("pay is not null");
            return (Criteria) this;
        }

        public Criteria andPayEqualTo(Integer value) {
            addCriterion("pay =", value, "pay");
            return (Criteria) this;
        }

        public Criteria andPayNotEqualTo(Integer value) {
            addCriterion("pay <>", value, "pay");
            return (Criteria) this;
        }

        public Criteria andPayGreaterThan(Integer value) {
            addCriterion("pay >", value, "pay");
            return (Criteria) this;
        }

        public Criteria andPayGreaterThanOrEqualTo(Integer value) {
            addCriterion("pay >=", value, "pay");
            return (Criteria) this;
        }

        public Criteria andPayLessThan(Integer value) {
            addCriterion("pay <", value, "pay");
            return (Criteria) this;
        }

        public Criteria andPayLessThanOrEqualTo(Integer value) {
            addCriterion("pay <=", value, "pay");
            return (Criteria) this;
        }

        public Criteria andPayIn(List<Integer> values) {
            addCriterion("pay in", values, "pay");
            return (Criteria) this;
        }

        public Criteria andPayNotIn(List<Integer> values) {
            addCriterion("pay not in", values, "pay");
            return (Criteria) this;
        }

        public Criteria andPayBetween(Integer value1, Integer value2) {
            addCriterion("pay between", value1, value2, "pay");
            return (Criteria) this;
        }

        public Criteria andPayNotBetween(Integer value1, Integer value2) {
            addCriterion("pay not between", value1, value2, "pay");
            return (Criteria) this;
        }

        public Criteria andIncomeIsNull() {
            addCriterion("income is null");
            return (Criteria) this;
        }

        public Criteria andIncomeIsNotNull() {
            addCriterion("income is not null");
            return (Criteria) this;
        }

        public Criteria andIncomeEqualTo(Integer value) {
            addCriterion("income =", value, "income");
            return (Criteria) this;
        }

        public Criteria andIncomeNotEqualTo(Integer value) {
            addCriterion("income <>", value, "income");
            return (Criteria) this;
        }

        public Criteria andIncomeGreaterThan(Integer value) {
            addCriterion("income >", value, "income");
            return (Criteria) this;
        }

        public Criteria andIncomeGreaterThanOrEqualTo(Integer value) {
            addCriterion("income >=", value, "income");
            return (Criteria) this;
        }

        public Criteria andIncomeLessThan(Integer value) {
            addCriterion("income <", value, "income");
            return (Criteria) this;
        }

        public Criteria andIncomeLessThanOrEqualTo(Integer value) {
            addCriterion("income <=", value, "income");
            return (Criteria) this;
        }

        public Criteria andIncomeIn(List<Integer> values) {
            addCriterion("income in", values, "income");
            return (Criteria) this;
        }

        public Criteria andIncomeNotIn(List<Integer> values) {
            addCriterion("income not in", values, "income");
            return (Criteria) this;
        }

        public Criteria andIncomeBetween(Integer value1, Integer value2) {
            addCriterion("income between", value1, value2, "income");
            return (Criteria) this;
        }

        public Criteria andIncomeNotBetween(Integer value1, Integer value2) {
            addCriterion("income not between", value1, value2, "income");
            return (Criteria) this;
        }

        public Criteria andPaynameIsNull() {
            addCriterion("payName is null");
            return (Criteria) this;
        }

        public Criteria andPaynameIsNotNull() {
            addCriterion("payName is not null");
            return (Criteria) this;
        }

        public Criteria andPaynameEqualTo(Integer value) {
            addCriterion("payName =", value, "payname");
            return (Criteria) this;
        }

        public Criteria andPaynameNotEqualTo(Integer value) {
            addCriterion("payName <>", value, "payname");
            return (Criteria) this;
        }

        public Criteria andPaynameGreaterThan(Integer value) {
            addCriterion("payName >", value, "payname");
            return (Criteria) this;
        }

        public Criteria andPaynameGreaterThanOrEqualTo(Integer value) {
            addCriterion("payName >=", value, "payname");
            return (Criteria) this;
        }

        public Criteria andPaynameLessThan(Integer value) {
            addCriterion("payName <", value, "payname");
            return (Criteria) this;
        }

        public Criteria andPaynameLessThanOrEqualTo(Integer value) {
            addCriterion("payName <=", value, "payname");
            return (Criteria) this;
        }

        public Criteria andPaynameIn(List<Integer> values) {
            addCriterion("payName in", values, "payname");
            return (Criteria) this;
        }

        public Criteria andPaynameNotIn(List<Integer> values) {
            addCriterion("payName not in", values, "payname");
            return (Criteria) this;
        }

        public Criteria andPaynameBetween(Integer value1, Integer value2) {
            addCriterion("payName between", value1, value2, "payname");
            return (Criteria) this;
        }

        public Criteria andPaynameNotBetween(Integer value1, Integer value2) {
            addCriterion("payName not between", value1, value2, "payname");
            return (Criteria) this;
        }

        public Criteria andPayaccountIsNull() {
            addCriterion("payAccount is null");
            return (Criteria) this;
        }

        public Criteria andPayaccountIsNotNull() {
            addCriterion("payAccount is not null");
            return (Criteria) this;
        }

        public Criteria andPayaccountEqualTo(Integer value) {
            addCriterion("payAccount =", value, "payaccount");
            return (Criteria) this;
        }

        public Criteria andPayaccountNotEqualTo(Integer value) {
            addCriterion("payAccount <>", value, "payaccount");
            return (Criteria) this;
        }

        public Criteria andPayaccountGreaterThan(Integer value) {
            addCriterion("payAccount >", value, "payaccount");
            return (Criteria) this;
        }

        public Criteria andPayaccountGreaterThanOrEqualTo(Integer value) {
            addCriterion("payAccount >=", value, "payaccount");
            return (Criteria) this;
        }

        public Criteria andPayaccountLessThan(Integer value) {
            addCriterion("payAccount <", value, "payaccount");
            return (Criteria) this;
        }

        public Criteria andPayaccountLessThanOrEqualTo(Integer value) {
            addCriterion("payAccount <=", value, "payaccount");
            return (Criteria) this;
        }

        public Criteria andPayaccountIn(List<Integer> values) {
            addCriterion("payAccount in", values, "payaccount");
            return (Criteria) this;
        }

        public Criteria andPayaccountNotIn(List<Integer> values) {
            addCriterion("payAccount not in", values, "payaccount");
            return (Criteria) this;
        }

        public Criteria andPayaccountBetween(Integer value1, Integer value2) {
            addCriterion("payAccount between", value1, value2, "payaccount");
            return (Criteria) this;
        }

        public Criteria andPayaccountNotBetween(Integer value1, Integer value2) {
            addCriterion("payAccount not between", value1, value2, "payaccount");
            return (Criteria) this;
        }

        public Criteria andIncomenameIsNull() {
            addCriterion("incomeName is null");
            return (Criteria) this;
        }

        public Criteria andIncomenameIsNotNull() {
            addCriterion("incomeName is not null");
            return (Criteria) this;
        }

        public Criteria andIncomenameEqualTo(Integer value) {
            addCriterion("incomeName =", value, "incomename");
            return (Criteria) this;
        }

        public Criteria andIncomenameNotEqualTo(Integer value) {
            addCriterion("incomeName <>", value, "incomename");
            return (Criteria) this;
        }

        public Criteria andIncomenameGreaterThan(Integer value) {
            addCriterion("incomeName >", value, "incomename");
            return (Criteria) this;
        }

        public Criteria andIncomenameGreaterThanOrEqualTo(Integer value) {
            addCriterion("incomeName >=", value, "incomename");
            return (Criteria) this;
        }

        public Criteria andIncomenameLessThan(Integer value) {
            addCriterion("incomeName <", value, "incomename");
            return (Criteria) this;
        }

        public Criteria andIncomenameLessThanOrEqualTo(Integer value) {
            addCriterion("incomeName <=", value, "incomename");
            return (Criteria) this;
        }

        public Criteria andIncomenameIn(List<Integer> values) {
            addCriterion("incomeName in", values, "incomename");
            return (Criteria) this;
        }

        public Criteria andIncomenameNotIn(List<Integer> values) {
            addCriterion("incomeName not in", values, "incomename");
            return (Criteria) this;
        }

        public Criteria andIncomenameBetween(Integer value1, Integer value2) {
            addCriterion("incomeName between", value1, value2, "incomename");
            return (Criteria) this;
        }

        public Criteria andIncomenameNotBetween(Integer value1, Integer value2) {
            addCriterion("incomeName not between", value1, value2, "incomename");
            return (Criteria) this;
        }

        public Criteria andIncomeaccountIsNull() {
            addCriterion("incomeAccount is null");
            return (Criteria) this;
        }

        public Criteria andIncomeaccountIsNotNull() {
            addCriterion("incomeAccount is not null");
            return (Criteria) this;
        }

        public Criteria andIncomeaccountEqualTo(Integer value) {
            addCriterion("incomeAccount =", value, "incomeaccount");
            return (Criteria) this;
        }

        public Criteria andIncomeaccountNotEqualTo(Integer value) {
            addCriterion("incomeAccount <>", value, "incomeaccount");
            return (Criteria) this;
        }

        public Criteria andIncomeaccountGreaterThan(Integer value) {
            addCriterion("incomeAccount >", value, "incomeaccount");
            return (Criteria) this;
        }

        public Criteria andIncomeaccountGreaterThanOrEqualTo(Integer value) {
            addCriterion("incomeAccount >=", value, "incomeaccount");
            return (Criteria) this;
        }

        public Criteria andIncomeaccountLessThan(Integer value) {
            addCriterion("incomeAccount <", value, "incomeaccount");
            return (Criteria) this;
        }

        public Criteria andIncomeaccountLessThanOrEqualTo(Integer value) {
            addCriterion("incomeAccount <=", value, "incomeaccount");
            return (Criteria) this;
        }

        public Criteria andIncomeaccountIn(List<Integer> values) {
            addCriterion("incomeAccount in", values, "incomeaccount");
            return (Criteria) this;
        }

        public Criteria andIncomeaccountNotIn(List<Integer> values) {
            addCriterion("incomeAccount not in", values, "incomeaccount");
            return (Criteria) this;
        }

        public Criteria andIncomeaccountBetween(Integer value1, Integer value2) {
            addCriterion("incomeAccount between", value1, value2, "incomeaccount");
            return (Criteria) this;
        }

        public Criteria andIncomeaccountNotBetween(Integer value1, Integer value2) {
            addCriterion("incomeAccount not between", value1, value2, "incomeaccount");
            return (Criteria) this;
        }

        public Criteria andChecknameIsNull() {
            addCriterion("checkName is null");
            return (Criteria) this;
        }

        public Criteria andChecknameIsNotNull() {
            addCriterion("checkName is not null");
            return (Criteria) this;
        }

        public Criteria andChecknameEqualTo(Integer value) {
            addCriterion("checkName =", value, "checkname");
            return (Criteria) this;
        }

        public Criteria andChecknameNotEqualTo(Integer value) {
            addCriterion("checkName <>", value, "checkname");
            return (Criteria) this;
        }

        public Criteria andChecknameGreaterThan(Integer value) {
            addCriterion("checkName >", value, "checkname");
            return (Criteria) this;
        }

        public Criteria andChecknameGreaterThanOrEqualTo(Integer value) {
            addCriterion("checkName >=", value, "checkname");
            return (Criteria) this;
        }

        public Criteria andChecknameLessThan(Integer value) {
            addCriterion("checkName <", value, "checkname");
            return (Criteria) this;
        }

        public Criteria andChecknameLessThanOrEqualTo(Integer value) {
            addCriterion("checkName <=", value, "checkname");
            return (Criteria) this;
        }

        public Criteria andChecknameIn(List<Integer> values) {
            addCriterion("checkName in", values, "checkname");
            return (Criteria) this;
        }

        public Criteria andChecknameNotIn(List<Integer> values) {
            addCriterion("checkName not in", values, "checkname");
            return (Criteria) this;
        }

        public Criteria andChecknameBetween(Integer value1, Integer value2) {
            addCriterion("checkName between", value1, value2, "checkname");
            return (Criteria) this;
        }

        public Criteria andChecknameNotBetween(Integer value1, Integer value2) {
            addCriterion("checkName not between", value1, value2, "checkname");
            return (Criteria) this;
        }

        public Criteria andCreateuseridIsNull() {
            addCriterion("createUserId is null");
            return (Criteria) this;
        }

        public Criteria andCreateuseridIsNotNull() {
            addCriterion("createUserId is not null");
            return (Criteria) this;
        }

        public Criteria andCreateuseridEqualTo(Integer value) {
            addCriterion("createUserId =", value, "createuserid");
            return (Criteria) this;
        }

        public Criteria andCreateuseridNotEqualTo(Integer value) {
            addCriterion("createUserId <>", value, "createuserid");
            return (Criteria) this;
        }

        public Criteria andCreateuseridGreaterThan(Integer value) {
            addCriterion("createUserId >", value, "createuserid");
            return (Criteria) this;
        }

        public Criteria andCreateuseridGreaterThanOrEqualTo(Integer value) {
            addCriterion("createUserId >=", value, "createuserid");
            return (Criteria) this;
        }

        public Criteria andCreateuseridLessThan(Integer value) {
            addCriterion("createUserId <", value, "createuserid");
            return (Criteria) this;
        }

        public Criteria andCreateuseridLessThanOrEqualTo(Integer value) {
            addCriterion("createUserId <=", value, "createuserid");
            return (Criteria) this;
        }

        public Criteria andCreateuseridIn(List<Integer> values) {
            addCriterion("createUserId in", values, "createuserid");
            return (Criteria) this;
        }

        public Criteria andCreateuseridNotIn(List<Integer> values) {
            addCriterion("createUserId not in", values, "createuserid");
            return (Criteria) this;
        }

        public Criteria andCreateuseridBetween(Integer value1, Integer value2) {
            addCriterion("createUserId between", value1, value2, "createuserid");
            return (Criteria) this;
        }

        public Criteria andCreateuseridNotBetween(Integer value1, Integer value2) {
            addCriterion("createUserId not between", value1, value2, "createuserid");
            return (Criteria) this;
        }

        public Criteria andCreateusernameIsNull() {
            addCriterion("createUsername is null");
            return (Criteria) this;
        }

        public Criteria andCreateusernameIsNotNull() {
            addCriterion("createUsername is not null");
            return (Criteria) this;
        }

        public Criteria andCreateusernameEqualTo(Integer value) {
            addCriterion("createUsername =", value, "createusername");
            return (Criteria) this;
        }

        public Criteria andCreateusernameNotEqualTo(Integer value) {
            addCriterion("createUsername <>", value, "createusername");
            return (Criteria) this;
        }

        public Criteria andCreateusernameGreaterThan(Integer value) {
            addCriterion("createUsername >", value, "createusername");
            return (Criteria) this;
        }

        public Criteria andCreateusernameGreaterThanOrEqualTo(Integer value) {
            addCriterion("createUsername >=", value, "createusername");
            return (Criteria) this;
        }

        public Criteria andCreateusernameLessThan(Integer value) {
            addCriterion("createUsername <", value, "createusername");
            return (Criteria) this;
        }

        public Criteria andCreateusernameLessThanOrEqualTo(Integer value) {
            addCriterion("createUsername <=", value, "createusername");
            return (Criteria) this;
        }

        public Criteria andCreateusernameIn(List<Integer> values) {
            addCriterion("createUsername in", values, "createusername");
            return (Criteria) this;
        }

        public Criteria andCreateusernameNotIn(List<Integer> values) {
            addCriterion("createUsername not in", values, "createusername");
            return (Criteria) this;
        }

        public Criteria andCreateusernameBetween(Integer value1, Integer value2) {
            addCriterion("createUsername between", value1, value2, "createusername");
            return (Criteria) this;
        }

        public Criteria andCreateusernameNotBetween(Integer value1, Integer value2) {
            addCriterion("createUsername not between", value1, value2, "createusername");
            return (Criteria) this;
        }

        public Criteria andAmountremarkIsNull() {
            addCriterion("amountRemark is null");
            return (Criteria) this;
        }

        public Criteria andAmountremarkIsNotNull() {
            addCriterion("amountRemark is not null");
            return (Criteria) this;
        }

        public Criteria andAmountremarkEqualTo(Integer value) {
            addCriterion("amountRemark =", value, "amountremark");
            return (Criteria) this;
        }

        public Criteria andAmountremarkNotEqualTo(Integer value) {
            addCriterion("amountRemark <>", value, "amountremark");
            return (Criteria) this;
        }

        public Criteria andAmountremarkGreaterThan(Integer value) {
            addCriterion("amountRemark >", value, "amountremark");
            return (Criteria) this;
        }

        public Criteria andAmountremarkGreaterThanOrEqualTo(Integer value) {
            addCriterion("amountRemark >=", value, "amountremark");
            return (Criteria) this;
        }

        public Criteria andAmountremarkLessThan(Integer value) {
            addCriterion("amountRemark <", value, "amountremark");
            return (Criteria) this;
        }

        public Criteria andAmountremarkLessThanOrEqualTo(Integer value) {
            addCriterion("amountRemark <=", value, "amountremark");
            return (Criteria) this;
        }

        public Criteria andAmountremarkIn(List<Integer> values) {
            addCriterion("amountRemark in", values, "amountremark");
            return (Criteria) this;
        }

        public Criteria andAmountremarkNotIn(List<Integer> values) {
            addCriterion("amountRemark not in", values, "amountremark");
            return (Criteria) this;
        }

        public Criteria andAmountremarkBetween(Integer value1, Integer value2) {
            addCriterion("amountRemark between", value1, value2, "amountremark");
            return (Criteria) this;
        }

        public Criteria andAmountremarkNotBetween(Integer value1, Integer value2) {
            addCriterion("amountRemark not between", value1, value2, "amountremark");
            return (Criteria) this;
        }

        public Criteria andPayremarkIsNull() {
            addCriterion("payRemark is null");
            return (Criteria) this;
        }

        public Criteria andPayremarkIsNotNull() {
            addCriterion("payRemark is not null");
            return (Criteria) this;
        }

        public Criteria andPayremarkEqualTo(Integer value) {
            addCriterion("payRemark =", value, "payremark");
            return (Criteria) this;
        }

        public Criteria andPayremarkNotEqualTo(Integer value) {
            addCriterion("payRemark <>", value, "payremark");
            return (Criteria) this;
        }

        public Criteria andPayremarkGreaterThan(Integer value) {
            addCriterion("payRemark >", value, "payremark");
            return (Criteria) this;
        }

        public Criteria andPayremarkGreaterThanOrEqualTo(Integer value) {
            addCriterion("payRemark >=", value, "payremark");
            return (Criteria) this;
        }

        public Criteria andPayremarkLessThan(Integer value) {
            addCriterion("payRemark <", value, "payremark");
            return (Criteria) this;
        }

        public Criteria andPayremarkLessThanOrEqualTo(Integer value) {
            addCriterion("payRemark <=", value, "payremark");
            return (Criteria) this;
        }

        public Criteria andPayremarkIn(List<Integer> values) {
            addCriterion("payRemark in", values, "payremark");
            return (Criteria) this;
        }

        public Criteria andPayremarkNotIn(List<Integer> values) {
            addCriterion("payRemark not in", values, "payremark");
            return (Criteria) this;
        }

        public Criteria andPayremarkBetween(Integer value1, Integer value2) {
            addCriterion("payRemark between", value1, value2, "payremark");
            return (Criteria) this;
        }

        public Criteria andPayremarkNotBetween(Integer value1, Integer value2) {
            addCriterion("payRemark not between", value1, value2, "payremark");
            return (Criteria) this;
        }

        public Criteria andIncomeremarkIsNull() {
            addCriterion("incomeRemark is null");
            return (Criteria) this;
        }

        public Criteria andIncomeremarkIsNotNull() {
            addCriterion("incomeRemark is not null");
            return (Criteria) this;
        }

        public Criteria andIncomeremarkEqualTo(Integer value) {
            addCriterion("incomeRemark =", value, "incomeremark");
            return (Criteria) this;
        }

        public Criteria andIncomeremarkNotEqualTo(Integer value) {
            addCriterion("incomeRemark <>", value, "incomeremark");
            return (Criteria) this;
        }

        public Criteria andIncomeremarkGreaterThan(Integer value) {
            addCriterion("incomeRemark >", value, "incomeremark");
            return (Criteria) this;
        }

        public Criteria andIncomeremarkGreaterThanOrEqualTo(Integer value) {
            addCriterion("incomeRemark >=", value, "incomeremark");
            return (Criteria) this;
        }

        public Criteria andIncomeremarkLessThan(Integer value) {
            addCriterion("incomeRemark <", value, "incomeremark");
            return (Criteria) this;
        }

        public Criteria andIncomeremarkLessThanOrEqualTo(Integer value) {
            addCriterion("incomeRemark <=", value, "incomeremark");
            return (Criteria) this;
        }

        public Criteria andIncomeremarkIn(List<Integer> values) {
            addCriterion("incomeRemark in", values, "incomeremark");
            return (Criteria) this;
        }

        public Criteria andIncomeremarkNotIn(List<Integer> values) {
            addCriterion("incomeRemark not in", values, "incomeremark");
            return (Criteria) this;
        }

        public Criteria andIncomeremarkBetween(Integer value1, Integer value2) {
            addCriterion("incomeRemark between", value1, value2, "incomeremark");
            return (Criteria) this;
        }

        public Criteria andIncomeremarkNotBetween(Integer value1, Integer value2) {
            addCriterion("incomeRemark not between", value1, value2, "incomeremark");
            return (Criteria) this;
        }

        public Criteria andRemarkIsNull() {
            addCriterion("remark is null");
            return (Criteria) this;
        }

        public Criteria andRemarkIsNotNull() {
            addCriterion("remark is not null");
            return (Criteria) this;
        }

        public Criteria andRemarkEqualTo(Integer value) {
            addCriterion("remark =", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotEqualTo(Integer value) {
            addCriterion("remark <>", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkGreaterThan(Integer value) {
            addCriterion("remark >", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkGreaterThanOrEqualTo(Integer value) {
            addCriterion("remark >=", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLessThan(Integer value) {
            addCriterion("remark <", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkLessThanOrEqualTo(Integer value) {
            addCriterion("remark <=", value, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkIn(List<Integer> values) {
            addCriterion("remark in", values, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotIn(List<Integer> values) {
            addCriterion("remark not in", values, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkBetween(Integer value1, Integer value2) {
            addCriterion("remark between", value1, value2, "remark");
            return (Criteria) this;
        }

        public Criteria andRemarkNotBetween(Integer value1, Integer value2) {
            addCriterion("remark not between", value1, value2, "remark");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(Integer value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(Integer value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(Integer value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(Integer value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<Integer> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<Integer> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(Integer value1, Integer value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("user_id not between", value1, value2, "userId");
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