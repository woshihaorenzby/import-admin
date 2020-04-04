create table cms_help
(
    id          bigint auto_increment
        primary key,
    category_id bigint       null,
    icon        varchar(500) null,
    title       varchar(100) null,
    show_status int(1)       null,
    create_time datetime     null,
    read_count  int(1)       null,
    content     text         null
)
    comment '帮助表' charset = utf8;


create table cms_help_category
(
    id          bigint auto_increment
        primary key,
    name        varchar(100) null,
    icon        varchar(500) null comment '分类图标',
    help_count  int          null comment '专题数量',
    show_status int(2)       null,
    sort        int          null
)
    comment '帮助分类表' charset = utf8;


create table cms_member_report
(
    id                 bigint       null,
    report_type        int(1)       null comment '举报类型：0->商品评价；1->话题内容；2->用户评论',
    report_member_name varchar(100) null comment '举报人',
    create_time        datetime     null,
    report_object      varchar(100) null,
    report_status      int(1)       null comment '举报状态：0->未处理；1->已处理',
    handle_status      int(1)       null comment '处理结果：0->无效；1->有效；2->恶意',
    note               varchar(200) null
)
    comment '用户举报表' charset = utf8;


create table cms_prefrence_area
(
    id          bigint auto_increment
        primary key,
    name        varchar(255)   null,
    sub_title   varchar(255)   null,
    pic         varbinary(500) null comment '展示图片',
    sort        int            null,
    show_status int(1)         null
)
    comment '优选专区' charset = utf8;

INSERT INTO import.cms_prefrence_area (id, name, sub_title, pic, sort, show_status) VALUES (1, '让音质更出众', '音质不打折 完美现场感', null, null, 1);
INSERT INTO import.cms_prefrence_area (id, name, sub_title, pic, sort, show_status) VALUES (2, '让音质更出众22', '让音质更出众22', null, null, null);
INSERT INTO import.cms_prefrence_area (id, name, sub_title, pic, sort, show_status) VALUES (3, '让音质更出众33', null, null, null, null);
INSERT INTO import.cms_prefrence_area (id, name, sub_title, pic, sort, show_status) VALUES (4, '让音质更出众44', null, null, null, null);
create table cms_prefrence_area_product_relation
(
    id                bigint auto_increment
        primary key,
    prefrence_area_id bigint null,
    product_id        bigint null
)
    comment '优选专区和产品关系表' charset = utf8;

INSERT INTO import.cms_prefrence_area_product_relation (id, prefrence_area_id, product_id) VALUES (1, 1, 12);
INSERT INTO import.cms_prefrence_area_product_relation (id, prefrence_area_id, product_id) VALUES (2, 1, 13);
INSERT INTO import.cms_prefrence_area_product_relation (id, prefrence_area_id, product_id) VALUES (3, 1, 14);
INSERT INTO import.cms_prefrence_area_product_relation (id, prefrence_area_id, product_id) VALUES (4, 1, 18);
INSERT INTO import.cms_prefrence_area_product_relation (id, prefrence_area_id, product_id) VALUES (5, 1, 7);
INSERT INTO import.cms_prefrence_area_product_relation (id, prefrence_area_id, product_id) VALUES (6, 2, 7);
INSERT INTO import.cms_prefrence_area_product_relation (id, prefrence_area_id, product_id) VALUES (7, 1, 22);
INSERT INTO import.cms_prefrence_area_product_relation (id, prefrence_area_id, product_id) VALUES (24, 1, 23);
create table cms_subject
(
    id               bigint auto_increment
        primary key,
    category_id      bigint        null,
    title            varchar(100)  null,
    pic              varchar(500)  null comment '专题主图',
    product_count    int           null comment '关联产品数量',
    recommend_status int(1)        null,
    create_time      datetime      null,
    collect_count    int           null,
    read_count       int           null,
    comment_count    int           null,
    album_pics       varchar(1000) null comment '画册图片用逗号分割',
    description      varchar(1000) null,
    show_status      int(1)        null comment '显示状态：0->不显示；1->显示',
    content          text          null,
    forward_count    int           null comment '转发数',
    category_name    varchar(200)  null comment '专题分类名称'
)
    comment '专题表' charset = utf8;

INSERT INTO import.cms_subject (id, category_id, title, pic, product_count, recommend_status, create_time, collect_count, read_count, comment_count, album_pics, description, show_status, content, forward_count, category_name) VALUES (1, 1, 'polo衬衫的也时尚', null, null, null, '2018-11-11 13:26:55', null, null, null, null, null, null, null, null, '服装专题');
INSERT INTO import.cms_subject (id, category_id, title, pic, product_count, recommend_status, create_time, collect_count, read_count, comment_count, album_pics, description, show_status, content, forward_count, category_name) VALUES (2, 2, '大牌手机低价秒', null, null, null, '2018-11-12 13:27:00', null, null, null, null, null, null, null, null, '手机专题');
INSERT INTO import.cms_subject (id, category_id, title, pic, product_count, recommend_status, create_time, collect_count, read_count, comment_count, album_pics, description, show_status, content, forward_count, category_name) VALUES (3, 2, '晓龙845新品上市', null, null, null, '2018-11-13 13:27:05', null, null, null, null, null, null, null, null, '手机专题');
INSERT INTO import.cms_subject (id, category_id, title, pic, product_count, recommend_status, create_time, collect_count, read_count, comment_count, album_pics, description, show_status, content, forward_count, category_name) VALUES (4, 1, '夏天应该穿什么', null, null, null, '2018-11-01 13:27:09', null, null, null, null, null, null, null, null, '服装专题');
INSERT INTO import.cms_subject (id, category_id, title, pic, product_count, recommend_status, create_time, collect_count, read_count, comment_count, album_pics, description, show_status, content, forward_count, category_name) VALUES (5, 1, '夏季精选', null, null, null, '2018-11-06 13:27:18', null, null, null, null, null, null, null, null, '服装专题');
INSERT INTO import.cms_subject (id, category_id, title, pic, product_count, recommend_status, create_time, collect_count, read_count, comment_count, album_pics, description, show_status, content, forward_count, category_name) VALUES (6, 2, '品牌手机降价', null, null, null, '2018-11-07 13:27:21', null, null, null, null, null, null, null, null, '手机专题');
create table cms_subject_category
(
    id            bigint auto_increment
        primary key,
    name          varchar(100) null,
    icon          varchar(500) null comment '分类图标',
    subject_count int          null comment '专题数量',
    show_status   int(2)       null,
    sort          int          null
)
    comment '专题分类表' charset = utf8;

INSERT INTO import.cms_subject_category (id, name, icon, subject_count, show_status, sort) VALUES (1, '服装专题', null, null, null, null);
INSERT INTO import.cms_subject_category (id, name, icon, subject_count, show_status, sort) VALUES (2, '手机专题', null, null, null, null);
create table cms_subject_comment
(
    id               bigint auto_increment
        primary key,
    subject_id       bigint        null,
    member_nick_name varchar(255)  null,
    member_icon      varchar(255)  null,
    content          varchar(1000) null,
    create_time      datetime      null,
    show_status      int(1)        null
)
    comment '专题评论表' charset = utf8;


create table cms_subject_product_relation
(
    id         bigint auto_increment
        primary key,
    subject_id bigint null,
    product_id bigint null
)
    comment '专题商品关系表' charset = utf8;

INSERT INTO import.cms_subject_product_relation (id, subject_id, product_id) VALUES (1, 1, 12);
INSERT INTO import.cms_subject_product_relation (id, subject_id, product_id) VALUES (2, 1, 13);
INSERT INTO import.cms_subject_product_relation (id, subject_id, product_id) VALUES (3, 1, 14);
INSERT INTO import.cms_subject_product_relation (id, subject_id, product_id) VALUES (4, 1, 18);
INSERT INTO import.cms_subject_product_relation (id, subject_id, product_id) VALUES (5, 1, 7);
INSERT INTO import.cms_subject_product_relation (id, subject_id, product_id) VALUES (6, 2, 7);
INSERT INTO import.cms_subject_product_relation (id, subject_id, product_id) VALUES (7, 1, 22);
INSERT INTO import.cms_subject_product_relation (id, subject_id, product_id) VALUES (29, 1, 23);
INSERT INTO import.cms_subject_product_relation (id, subject_id, product_id) VALUES (30, 4, 23);
INSERT INTO import.cms_subject_product_relation (id, subject_id, product_id) VALUES (31, 5, 23);
INSERT INTO import.cms_subject_product_relation (id, subject_id, product_id) VALUES (41, 2, 26);
INSERT INTO import.cms_subject_product_relation (id, subject_id, product_id) VALUES (42, 3, 26);
INSERT INTO import.cms_subject_product_relation (id, subject_id, product_id) VALUES (43, 6, 26);
create table cms_topic
(
    id              bigint auto_increment
        primary key,
    category_id     bigint       null,
    name            varchar(255) null,
    create_time     datetime     null,
    start_time      datetime     null,
    end_time        datetime     null,
    attend_count    int          null comment '参与人数',
    attention_count int          null comment '关注人数',
    read_count      int          null,
    award_name      varchar(100) null comment '奖品名称',
    attend_type     varchar(100) null comment '参与方式',
    content         text         null comment '话题内容'
)
    comment '话题表' charset = utf8;


create table cms_topic_category
(
    id            bigint auto_increment
        primary key,
    name          varchar(100) null,
    icon          varchar(500) null comment '分类图标',
    subject_count int          null comment '专题数量',
    show_status   int(2)       null,
    sort          int          null
)
    comment '话题分类表' charset = utf8;


create table cms_topic_comment
(
    id               bigint auto_increment
        primary key,
    member_nick_name varchar(255)  null,
    topic_id         bigint        null,
    member_icon      varchar(255)  null,
    content          varchar(1000) null,
    create_time      datetime      null,
    show_status      int(1)        null
)
    comment '专题评论表' charset = utf8;


create table import_data
(
    id           int auto_increment comment '主键'
        primary key,
    addTime      date          null comment '添加时间',
    import_month int default 1 null comment '导入的月份，用户自定义',
    import_day   int default 1 null comment '导入日期，用户自定义',
    a_info       longtext      null comment 'A信息',
    wangwang_id  varchar(255)  null comment '旺旺号',
    a_price      decimal       null comment 'A金额',
    store_name   varchar(255)  null comment '店名',
    b_price      decimal       null comment 'B金额',
    commission   decimal       null comment '佣金',
    b_info       longtext      null comment 'B信息',
    remark_1     longtext      null comment '备注1',
    remark_2     longtext      null comment '备注2',
    remark_3     longtext      null comment '备注3'
);


create table oms_cart_item
(
    id                  bigint auto_increment
        primary key,
    product_id          bigint           null,
    product_sku_id      bigint           null,
    member_id           bigint           null,
    quantity            int              null comment '购买数量',
    price               decimal(10, 2)   null comment '添加到购物车的价格',
    product_pic         varchar(1000)    null comment '商品主图',
    product_name        varchar(500)     null comment '商品名称',
    product_sub_title   varchar(500)     null comment '商品副标题（卖点）',
    product_sku_code    varchar(200)     null comment '商品sku条码',
    member_nickname     varchar(500)     null comment '会员昵称',
    create_date         datetime         null comment '创建时间',
    modify_date         datetime         null comment '修改时间',
    delete_status       int(1) default 0 null comment '是否删除',
    product_category_id bigint           null comment '商品分类',
    product_brand       varchar(200)     null,
    product_sn          varchar(200)     null,
    product_attr        varchar(500)     null comment '商品销售属性:[{"key":"颜色","value":"颜色"},{"key":"容量","value":"4G"}]'
)
    comment '购物车表' charset = utf8;

INSERT INTO import.oms_cart_item (id, product_id, product_sku_id, member_id, quantity, price, product_pic, product_name, product_sub_title, product_sku_code, member_nickname, create_date, modify_date, delete_status, product_category_id, product_brand, product_sn, product_attr) VALUES (12, 26, 90, 1, 1, 3788.00, null, '华为 HUAWEI P20', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2018-08-27 16:53:44', null, 1, 19, null, null, null);
INSERT INTO import.oms_cart_item (id, product_id, product_sku_id, member_id, quantity, price, product_pic, product_name, product_sub_title, product_sku_code, member_nickname, create_date, modify_date, delete_status, product_category_id, product_brand, product_sn, product_attr) VALUES (13, 27, 98, 1, 3, 2699.00, null, '小米8', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2018-08-27 17:11:53', null, 1, 19, null, null, null);
INSERT INTO import.oms_cart_item (id, product_id, product_sku_id, member_id, quantity, price, product_pic, product_name, product_sub_title, product_sku_code, member_nickname, create_date, modify_date, delete_status, product_category_id, product_brand, product_sn, product_attr) VALUES (14, 28, 102, 1, 1, 649.00, null, '红米5A', '8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购', '201808270028001', 'windir', '2018-08-27 17:18:02', null, 1, 19, null, null, null);
INSERT INTO import.oms_cart_item (id, product_id, product_sku_id, member_id, quantity, price, product_pic, product_name, product_sub_title, product_sku_code, member_nickname, create_date, modify_date, delete_status, product_category_id, product_brand, product_sn, product_attr) VALUES (15, 28, 103, 1, 1, 699.00, null, '红米5A', '8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购', '201808270028001', 'windir', '2018-08-28 10:22:45', null, 1, 19, null, null, null);
INSERT INTO import.oms_cart_item (id, product_id, product_sku_id, member_id, quantity, price, product_pic, product_name, product_sub_title, product_sku_code, member_nickname, create_date, modify_date, delete_status, product_category_id, product_brand, product_sn, product_attr) VALUES (16, 29, 106, 1, 1, 5499.00, null, 'Apple iPhone 8 Plus', '【限时限量抢购】Apple产品年中狂欢节，好物尽享，美在智慧！速来 >> 勾选[保障服务][原厂保2年]，获得AppleCare+全方位服务计划，原厂延保售后无忧。', '201808270029001', 'windir', '2018-08-28 10:50:50', null, 1, 19, null, null, null);
INSERT INTO import.oms_cart_item (id, product_id, product_sku_id, member_id, quantity, price, product_pic, product_name, product_sub_title, product_sku_code, member_nickname, create_date, modify_date, delete_status, product_category_id, product_brand, product_sn, product_attr) VALUES (19, 36, 163, 1, 3, 100.00, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '202002210036001', 'windir', '2020-02-25 15:51:59', null, 1, 29, 'NIKE', '6799345', '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"秋季"}]');
INSERT INTO import.oms_cart_item (id, product_id, product_sku_id, member_id, quantity, price, product_pic, product_name, product_sub_title, product_sku_code, member_nickname, create_date, modify_date, delete_status, product_category_id, product_brand, product_sn, product_attr) VALUES (20, 36, 164, 1, 2, 120.00, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '202002210036001', 'windir', '2020-02-25 15:54:23', null, 1, 29, 'NIKE', '6799345', '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"夏季"}]');
INSERT INTO import.oms_cart_item (id, product_id, product_sku_id, member_id, quantity, price, product_pic, product_name, product_sub_title, product_sku_code, member_nickname, create_date, modify_date, delete_status, product_category_id, product_brand, product_sn, product_attr) VALUES (21, 36, 164, 1, 2, 120.00, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '202002210036001', 'windir', '2020-02-25 16:49:53', null, 1, 29, 'NIKE', '6799345', '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"夏季"}]');
create table oms_company_address
(
    id             bigint auto_increment
        primary key,
    address_name   varchar(200) null comment '地址名称',
    send_status    int(1)       null comment '默认发货地址：0->否；1->是',
    receive_status int(1)       null comment '是否默认收货地址：0->否；1->是',
    name           varchar(64)  null comment '收发货人姓名',
    phone          varchar(64)  null comment '收货人电话',
    province       varchar(64)  null comment '省/直辖市',
    city           varchar(64)  null comment '市',
    region         varchar(64)  null comment '区',
    detail_address varchar(200) null comment '详细地址'
)
    comment '公司收发货地址表' charset = utf8;

INSERT INTO import.oms_company_address (id, address_name, send_status, receive_status, name, phone, province, city, region, detail_address) VALUES (1, '深圳发货点', 1, 1, '大梨', '18000000000', '广东省', '深圳市', '南山区', '科兴科学园');
INSERT INTO import.oms_company_address (id, address_name, send_status, receive_status, name, phone, province, city, region, detail_address) VALUES (2, '北京发货点', 0, 0, '大梨', '18000000000', '北京市', null, '南山区', '科兴科学园');
INSERT INTO import.oms_company_address (id, address_name, send_status, receive_status, name, phone, province, city, region, detail_address) VALUES (3, '南京发货点', 0, 0, '大梨', '18000000000', '江苏省', '南京市', '南山区', '科兴科学园');
create table oms_order
(
    id                      bigint auto_increment comment '订单id'
        primary key,
    member_id               bigint           not null,
    coupon_id               bigint           null,
    order_sn                varchar(64)      null comment '订单编号',
    create_time             datetime         null comment '提交时间',
    member_username         varchar(64)      null comment '用户帐号',
    total_amount            decimal(10, 2)   null comment '订单总金额',
    pay_amount              decimal(10, 2)   null comment '应付金额（实际支付金额）',
    freight_amount          decimal(10, 2)   null comment '运费金额',
    promotion_amount        decimal(10, 2)   null comment '促销优化金额（促销价、满减、阶梯价）',
    integration_amount      decimal(10, 2)   null comment '积分抵扣金额',
    coupon_amount           decimal(10, 2)   null comment '优惠券抵扣金额',
    discount_amount         decimal(10, 2)   null comment '管理员后台调整订单使用的折扣金额',
    pay_type                int(1)           null comment '支付方式：0->未支付；1->支付宝；2->微信',
    source_type             int(1)           null comment '订单来源：0->PC订单；1->app订单',
    status                  int(1)           null comment '订单状态：0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单',
    order_type              int(1)           null comment '订单类型：0->正常订单；1->秒杀订单',
    delivery_company        varchar(64)      null comment '物流公司(配送方式)',
    delivery_sn             varchar(64)      null comment '物流单号',
    auto_confirm_day        int              null comment '自动确认时间（天）',
    integration             int              null comment '可以获得的积分',
    growth                  int              null comment '可以活动的成长值',
    promotion_info          varchar(100)     null comment '活动信息',
    bill_type               int(1)           null comment '发票类型：0->不开发票；1->电子发票；2->纸质发票',
    bill_header             varchar(200)     null comment '发票抬头',
    bill_content            varchar(200)     null comment '发票内容',
    bill_receiver_phone     varchar(32)      null comment '收票人电话',
    bill_receiver_email     varchar(64)      null comment '收票人邮箱',
    receiver_name           varchar(100)     not null comment '收货人姓名',
    receiver_phone          varchar(32)      not null comment '收货人电话',
    receiver_post_code      varchar(32)      null comment '收货人邮编',
    receiver_province       varchar(32)      null comment '省份/直辖市',
    receiver_city           varchar(32)      null comment '城市',
    receiver_region         varchar(32)      null comment '区',
    receiver_detail_address varchar(200)     null comment '详细地址',
    note                    varchar(500)     null comment '订单备注',
    confirm_status          int(1)           null comment '确认收货状态：0->未确认；1->已确认',
    delete_status           int(1) default 0 not null comment '删除状态：0->未删除；1->已删除',
    use_integration         int              null comment '下单时使用的积分',
    payment_time            datetime         null comment '支付时间',
    delivery_time           datetime         null comment '发货时间',
    receive_time            datetime         null comment '确认收货时间',
    comment_time            datetime         null comment '评价时间',
    modify_time             datetime         null comment '修改时间'
)
    comment '订单表' charset = utf8;

INSERT INTO import.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (12, 1, 2, '201809150101000001', '2018-09-15 12:24:27', 'test', 18732.00, 16377.75, 20.00, 2344.25, 0.00, 10.00, 10.00, 0, 1, 4, 0, '', '', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '江苏省', '常州市', '天宁区', '东晓街道', '111', 0, 0, null, null, null, null, null, '2019-11-09 16:50:28');
INSERT INTO import.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (13, 1, 2, '201809150102000002', '2018-09-15 14:24:29', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 1, 1, 1, 0, '', '', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, 0, 0, 1000, '2018-10-11 14:04:19', null, null, null, null);
INSERT INTO import.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (14, 1, 2, '201809130101000001', '2018-09-13 16:57:40', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 2, 1, 2, 0, '顺丰快递', '201707196398345', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, 0, 0, null, '2018-10-13 13:44:04', '2018-10-16 13:43:41', null, null, null);
INSERT INTO import.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (15, 1, 2, '201809130102000002', '2018-09-13 17:03:00', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 1, 1, 3, 0, '顺丰快递', '201707196398346', 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, 1, 0, null, '2018-10-13 13:44:54', '2018-10-16 13:45:01', '2018-10-18 14:05:31', null, null);
INSERT INTO import.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (16, 1, 2, '201809140101000001', '2018-09-14 16:16:16', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 2, 1, 4, 0, null, null, 15, 13284, 13284, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, 0, 0, null, null, null, null, null, null);
INSERT INTO import.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (17, 1, 2, '201809150101000003', '2018-09-15 12:24:27', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 0, 1, 4, 0, '顺丰快递', '201707196398345', 15, null, null, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, 0, 0, null, null, '2018-10-12 14:01:28', null, null, null);
INSERT INTO import.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (18, 1, 2, '201809150102000004', '2018-09-15 14:24:29', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 1, 1, 1, 0, '圆通快递', 'xx', 15, null, null, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, 0, 0, 1000, null, '2018-10-16 14:42:17', null, null, null);
INSERT INTO import.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (19, 1, 2, '201809130101000003', '2018-09-13 16:57:40', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 2, 1, 2, 0, null, null, 15, null, null, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, 0, 0, null, null, null, null, null, null);
INSERT INTO import.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (20, 1, 2, '201809130102000004', '2018-09-13 17:03:00', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 1, 1, 3, 0, null, null, 15, null, null, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, 0, 0, null, null, null, null, null, null);
INSERT INTO import.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (21, 1, 2, '201809140101000002', '2018-09-14 16:16:16', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 2, 1, 4, 0, null, null, 15, 18682, 18682, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, 0, 1, null, null, null, null, null, null);
INSERT INTO import.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (22, 1, 2, '201809150101000005', '2018-09-15 12:24:27', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 0, 1, 4, 0, '顺丰快递', '201707196398345', 15, 0, 0, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, 0, 0, null, null, '2018-10-12 14:01:28', null, null, null);
INSERT INTO import.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (23, 1, 2, '201809150102000006', '2018-09-15 14:24:29', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 1, 1, 1, 0, '顺丰快递', 'xxx', 15, 0, 0, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, 0, 0, 1000, null, '2018-10-16 14:41:28', null, null, null);
INSERT INTO import.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (24, 1, 2, '201809130101000005', '2018-09-13 16:57:40', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 2, 1, 2, 0, null, null, 15, 18682, 18682, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, 0, 0, null, null, null, null, null, null);
INSERT INTO import.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (25, 1, 2, '201809130102000006', '2018-09-13 17:03:00', 'test', 18732.00, 16377.75, 10.00, 2344.25, 0.00, 10.00, 5.00, 1, 1, 4, 0, null, null, 15, 18682, 18682, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨22', '18033441849', '518000', '北京市', '北京城区', '东城区', '东城街道', 'xxx', 0, 0, null, null, null, null, null, '2018-10-30 15:08:31');
INSERT INTO import.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (26, 1, 2, '201809140101000003', '2018-09-14 16:16:16', 'test', 18732.00, 16377.75, 0.00, 2344.25, 0.00, 10.00, 0.00, 2, 1, 4, 0, null, null, 15, 18682, 18682, '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', null, 0, 1, null, null, null, null, null, null);
INSERT INTO import.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (27, 1, null, '202002250100000001', '2020-02-25 15:59:20', 'test', 540.00, 540.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 1, 0, 0, null, null, null, 0, 0, '无优惠,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '南山区', '科兴科学园', null, 0, 1, null, null, null, null, null, null);
INSERT INTO import.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (28, 1, null, '202002250100000002', '2020-02-25 16:05:47', 'test', 540.00, 540.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 1, 0, 0, null, null, null, 0, 0, '无优惠,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '南山区', '科兴科学园', null, 0, 1, null, null, null, null, null, null);
INSERT INTO import.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (29, 1, null, '202002250100000003', '2020-02-25 16:07:58', 'test', 540.00, 540.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 1, 0, 0, null, null, null, 0, 0, '无优惠,无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '南山区', '科兴科学园', null, 0, 0, null, null, null, null, null, null);
INSERT INTO import.oms_order (id, member_id, coupon_id, order_sn, create_time, member_username, total_amount, pay_amount, freight_amount, promotion_amount, integration_amount, coupon_amount, discount_amount, pay_type, source_type, status, order_type, delivery_company, delivery_sn, auto_confirm_day, integration, growth, promotion_info, bill_type, bill_header, bill_content, bill_receiver_phone, bill_receiver_email, receiver_name, receiver_phone, receiver_post_code, receiver_province, receiver_city, receiver_region, receiver_detail_address, note, confirm_status, delete_status, use_integration, payment_time, delivery_time, receive_time, comment_time, modify_time) VALUES (30, 1, null, '202002250100000004', '2020-02-25 16:50:13', 'test', 240.00, 240.00, 20.00, 0.00, 0.00, 0.00, 10.00, 0, 1, 2, 0, '顺丰快递', '12333333', null, 0, 0, '无优惠', null, null, null, null, null, '大梨', '18033441849', '518000', '广东省', '深圳市', '南山区', '科兴科学园', null, 0, 0, null, '2020-02-25 16:53:29', '2020-02-25 16:54:03', null, null, '2020-02-25 16:52:51');
create table oms_order_item
(
    id                  bigint auto_increment
        primary key,
    order_id            bigint         null comment '订单id',
    order_sn            varchar(64)    null comment '订单编号',
    product_id          bigint         null,
    product_pic         varchar(500)   null,
    product_name        varchar(200)   null,
    product_brand       varchar(200)   null,
    product_sn          varchar(64)    null,
    product_price       decimal(10, 2) null comment '销售价格',
    product_quantity    int            null comment '购买数量',
    product_sku_id      bigint         null comment '商品sku编号',
    product_sku_code    varchar(50)    null comment '商品sku条码',
    product_category_id bigint         null comment '商品分类id',
    promotion_name      varchar(200)   null comment '商品促销名称',
    promotion_amount    decimal(10, 2) null comment '商品促销分解金额',
    coupon_amount       decimal(10, 2) null comment '优惠券优惠分解金额',
    integration_amount  decimal(10, 2) null comment '积分优惠分解金额',
    real_amount         decimal(10, 2) null comment '该商品经过优惠后的分解金额',
    gift_integration    int default 0  null,
    gift_growth         int default 0  null,
    product_attr        varchar(500)   null comment '商品销售属性:[{"key":"颜色","value":"颜色"},{"key":"容量","value":"4G"}]'
)
    comment '订单中所包含的商品' charset = utf8;

INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (21, 12, '201809150101000001', 26, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', 3788.00, 1, 90, '201806070026001', 19, '单品促销', 200.00, 2.02, 0.00, 3585.98, 3788, 3788, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (22, 12, '201809150101000001', 27, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', 2699.00, 3, 98, '201808270027001', 19, '打折优惠：满3件，打7.50折', 674.75, 1.44, 0.00, 2022.81, 2699, 2699, '[{"key":"颜色","value":"黑色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (23, 12, '201809150101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 649.00, 1, 102, '201808270028001', 19, '满减优惠：满1000.00元，减120.00元', 57.60, 0.35, 0.00, 591.05, 649, 649, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (24, 12, '201809150101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 699.00, 1, 103, '201808270028001', 19, '满减优惠：满1000.00元，减120.00元', 62.40, 0.37, 0.00, 636.23, 649, 649, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (25, 12, '201809150101000001', 29, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', 5499.00, 1, 106, '201808270029001', 19, '无优惠', 0.00, 2.94, 0.00, 5496.06, 5499, 5499, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (26, 13, '201809150102000002', 26, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', 3788.00, 1, 90, '201806070026001', 19, '单品促销', 200.00, 2.02, 0.00, 3585.98, 3788, 3788, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (27, 13, '201809150102000002', 27, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', 2699.00, 3, 98, '201808270027001', 19, '打折优惠：满3件，打7.50折', 674.75, 1.44, 0.00, 2022.81, 2699, 2699, '[{"key":"颜色","value":"黑色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (28, 13, '201809150102000002', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 649.00, 1, 102, '201808270028001', 19, '满减优惠：满1000.00元，减120.00元', 57.60, 0.35, 0.00, 591.05, 649, 649, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (29, 13, '201809150102000002', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 699.00, 1, 103, '201808270028001', 19, '满减优惠：满1000.00元，减120.00元', 62.40, 0.37, 0.00, 636.23, 649, 649, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (30, 13, '201809150102000002', 29, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', 5499.00, 1, 106, '201808270029001', 19, '无优惠', 0.00, 2.94, 0.00, 5496.06, 5499, 5499, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (31, 14, '201809130101000001', 26, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', 3788.00, 1, 90, '201806070026001', 19, '单品促销', 200.00, 2.02, 0.00, 3585.98, 3788, 3788, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (32, 14, '201809130101000001', 27, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', 2699.00, 3, 98, '201808270027001', 19, '打折优惠：满3件，打7.50折', 674.75, 1.44, 0.00, 2022.81, 2699, 2699, '[{"key":"颜色","value":"黑色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (33, 14, '201809130101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 649.00, 1, 102, '201808270028001', 19, '满减优惠：满1000.00元，减120.00元', 57.60, 0.35, 0.00, 591.05, 649, 649, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (34, 14, '201809130101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 699.00, 1, 103, '201808270028001', 19, '满减优惠：满1000.00元，减120.00元', 62.40, 0.37, 0.00, 636.23, 649, 649, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (35, 14, '201809130101000001', 29, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', 5499.00, 1, 106, '201808270029001', 19, '无优惠', 0.00, 2.94, 0.00, 5496.06, 5499, 5499, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (36, 15, '201809130101000001', 26, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', 3788.00, 1, 90, '201806070026001', 19, '单品促销', 200.00, 2.02, 0.00, 3585.98, 3788, 3788, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (37, 15, '201809130101000001', 27, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', 2699.00, 3, 98, '201808270027001', 19, '打折优惠：满3件，打7.50折', 674.75, 1.44, 0.00, 2022.81, 2699, 2699, '[{"key":"颜色","value":"黑色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (38, 15, '201809130101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 649.00, 1, 102, '201808270028001', 19, '满减优惠：满1000.00元，减120.00元', 57.60, 0.35, 0.00, 591.05, 649, 649, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (39, 15, '201809130101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 699.00, 1, 103, '201808270028001', 19, '满减优惠：满1000.00元，减120.00元', 62.40, 0.37, 0.00, 636.23, 649, 649, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (40, 15, '201809130101000001', 29, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', 5499.00, 1, 106, '201808270029001', 19, '无优惠', 0.00, 2.94, 0.00, 5496.06, 5499, 5499, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (41, 16, '201809140101000001', 26, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', 3788.00, 1, 90, '201806070026001', 19, '单品促销', 200.00, 2.02, 0.00, 3585.98, 3788, 3788, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (42, 16, '201809140101000001', 27, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', 2699.00, 3, 98, '201808270027001', 19, '打折优惠：满3件，打7.50折', 674.75, 1.44, 0.00, 2022.81, 2699, 2699, '[{"key":"颜色","value":"黑色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (43, 16, '201809140101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 649.00, 1, 102, '201808270028001', 19, '满减优惠：满1000.00元，减120.00元', 57.60, 0.35, 0.00, 591.05, 649, 649, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (44, 16, '201809140101000001', 28, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', 699.00, 1, 103, '201808270028001', 19, '满减优惠：满1000.00元，减120.00元', 62.40, 0.37, 0.00, 636.23, 649, 649, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (45, 16, '201809140101000001', 29, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', 5499.00, 1, 106, '201808270029001', 19, '无优惠', 0.00, 2.94, 0.00, 5496.06, 5499, 5499, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (46, 27, '202002250100000001', 36, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', 100.00, 3, 163, '202002210036001', 29, '无优惠', 0.00, 0.00, 0.00, 100.00, 0, 0, null);
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (47, 27, '202002250100000001', 36, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', 120.00, 2, 164, '202002210036001', 29, '无优惠', 0.00, 0.00, 0.00, 120.00, 0, 0, null);
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (48, 28, '202002250100000002', 36, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', 100.00, 3, 163, '202002210036001', 29, '无优惠', 0.00, 0.00, 0.00, 100.00, 0, 0, null);
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (49, 28, '202002250100000002', 36, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', 120.00, 2, 164, '202002210036001', 29, '无优惠', 0.00, 0.00, 0.00, 120.00, 0, 0, null);
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (50, 29, '202002250100000003', 36, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', 100.00, 3, 163, '202002210036001', 29, '无优惠', 0.00, 0.00, 0.00, 100.00, 0, 0, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"秋季"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (51, 29, '202002250100000003', 36, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', 120.00, 2, 164, '202002210036001', 29, '无优惠', 0.00, 0.00, 0.00, 120.00, 0, 0, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"夏季"}]');
INSERT INTO import.oms_order_item (id, order_id, order_sn, product_id, product_pic, product_name, product_brand, product_sn, product_price, product_quantity, product_sku_id, product_sku_code, product_category_id, promotion_name, promotion_amount, coupon_amount, integration_amount, real_amount, gift_integration, gift_growth, product_attr) VALUES (52, 30, '202002250100000004', 36, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'NIKE', '6799345', 120.00, 2, 164, '202002210036001', 29, '无优惠', 0.00, 0.00, 0.00, 120.00, 0, 0, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"夏季"}]');
create table oms_order_operate_history
(
    id           bigint auto_increment
        primary key,
    order_id     bigint       null comment '订单id',
    operate_man  varchar(100) null comment '操作人：用户；系统；后台管理员',
    create_time  datetime     null comment '操作时间',
    order_status int(1)       null comment '订单状态：0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单',
    note         varchar(500) null comment '备注'
)
    comment '订单操作历史记录' charset = utf8;

INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (5, 12, '后台管理员', '2018-10-12 14:01:29', 2, '完成发货');
INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (6, 13, '后台管理员', '2018-10-12 14:01:29', 2, '完成发货');
INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (7, 12, '后台管理员', '2018-10-12 14:13:10', 4, '订单关闭:买家退货');
INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (8, 13, '后台管理员', '2018-10-12 14:13:10', 4, '订单关闭:买家退货');
INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (9, 22, '后台管理员', '2018-10-15 16:31:48', 4, '订单关闭:xxx');
INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (10, 22, '后台管理员', '2018-10-15 16:35:08', 4, '订单关闭:xxx');
INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (11, 22, '后台管理员', '2018-10-15 16:35:59', 4, '订单关闭:xxx');
INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (12, 17, '后台管理员', '2018-10-15 16:43:40', 4, '订单关闭:xxx');
INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (13, 25, '后台管理员', '2018-10-15 16:52:14', 4, '订单关闭:xxx');
INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (14, 26, '后台管理员', '2018-10-15 16:52:14', 4, '订单关闭:xxx');
INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (15, 23, '后台管理员', '2018-10-16 14:41:28', 2, '完成发货');
INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (16, 13, '后台管理员', '2018-10-16 14:42:17', 2, '完成发货');
INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (17, 18, '后台管理员', '2018-10-16 14:42:17', 2, '完成发货');
INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (18, 26, '后台管理员', '2018-10-30 14:37:44', 4, '订单关闭:关闭订单');
INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (19, 25, '后台管理员', '2018-10-30 15:07:01', 0, '修改收货人信息');
INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (20, 25, '后台管理员', '2018-10-30 15:08:13', 0, '修改费用信息');
INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (21, 25, '后台管理员', '2018-10-30 15:08:31', 0, '修改备注信息：xxx');
INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (22, 25, '后台管理员', '2018-10-30 15:08:39', 4, '订单关闭:2222');
INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (23, 12, '后台管理员', '2019-11-09 16:50:28', 4, '修改备注信息：111');
INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (24, 30, '后台管理员', '2020-02-25 16:52:37', 0, '修改费用信息');
INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (25, 30, '后台管理员', '2020-02-25 16:52:51', 0, '修改费用信息');
INSERT INTO import.oms_order_operate_history (id, order_id, operate_man, create_time, order_status, note) VALUES (26, 30, '后台管理员', '2020-02-25 16:54:03', 2, '完成发货');
create table oms_order_return_apply
(
    id                 bigint auto_increment
        primary key,
    order_id           bigint         null comment '订单id',
    company_address_id bigint         null comment '收货地址表id',
    product_id         bigint         null comment '退货商品id',
    order_sn           varchar(64)    null comment '订单编号',
    create_time        datetime       null comment '申请时间',
    member_username    varchar(64)    null comment '会员用户名',
    return_amount      decimal(10, 2) null comment '退款金额',
    return_name        varchar(100)   null comment '退货人姓名',
    return_phone       varchar(100)   null comment '退货人电话',
    status             int(1)         null comment '申请状态：0->待处理；1->退货中；2->已完成；3->已拒绝',
    handle_time        datetime       null comment '处理时间',
    product_pic        varchar(500)   null comment '商品图片',
    product_name       varchar(200)   null comment '商品名称',
    product_brand      varchar(200)   null comment '商品品牌',
    product_attr       varchar(500)   null comment '商品销售属性：颜色：红色；尺码：xl;',
    product_count      int            null comment '退货数量',
    product_price      decimal(10, 2) null comment '商品单价',
    product_real_price decimal(10, 2) null comment '商品实际支付单价',
    reason             varchar(200)   null comment '原因',
    description        varchar(500)   null comment '描述',
    proof_pics         varchar(1000)  null comment '凭证图片，以逗号隔开',
    handle_note        varchar(500)   null comment '处理备注',
    handle_man         varchar(100)   null comment '处理人员',
    receive_man        varchar(100)   null comment '收货人',
    receive_time       datetime       null comment '收货时间',
    receive_note       varchar(500)   null comment '收货备注'
)
    comment '订单退货申请' charset = utf8;

INSERT INTO import.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (3, 12, null, 26, '201809150101000001', '2018-10-17 14:34:57', 'test', null, '大梨', '18000000000', 0, null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', 1, 3788.00, 3585.98, '质量问题', '老是卡', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', null, null, null, null, null);
INSERT INTO import.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (4, 12, 2, 27, '201809150101000001', '2018-10-17 14:40:21', 'test', 3585.98, '大梨', '18000000000', 1, '2018-10-18 13:54:10', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', 1, 2699.00, 2022.81, '质量问题', '不够高端', '', '已经处理了', 'admin', null, null, null);
INSERT INTO import.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (5, 12, 3, 28, '201809150101000001', '2018-10-17 14:44:18', 'test', 3585.98, '大梨', '18000000000', 2, '2018-10-18 13:55:28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', 1, 649.00, 591.05, '质量问题', '颜色太土', '', '已经处理了', 'admin', 'admin', '2018-10-18 13:55:58', '已经处理了');
INSERT INTO import.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (8, 13, null, 28, '201809150102000002', '2018-10-17 14:44:18', 'test', null, '大梨', '18000000000', 3, '2018-10-18 13:57:12', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', 1, 649.00, 591.05, '质量问题', '颜色太土', '', '理由不够充分', 'admin', null, null, null);
INSERT INTO import.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (9, 14, 2, 26, '201809130101000001', '2018-10-17 14:34:57', 'test', 3500.00, '大梨', '18000000000', 2, '2018-10-24 15:44:56', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', 1, 3788.00, 3585.98, '质量问题', '老是卡', '', '呵呵', 'admin', 'admin', '2018-10-24 15:46:35', '收货了');
INSERT INTO import.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (10, 14, null, 27, '201809130101000001', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', 3, '2018-10-24 15:46:57', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', 1, 2699.00, 2022.81, '质量问题', '不够高端', '', '就是不退', 'admin', null, null, null);
INSERT INTO import.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (11, 14, 2, 28, '201809130101000001', '2018-10-17 14:44:18', 'test', 591.05, '大梨', '18000000000', 1, '2018-10-24 17:09:04', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', 1, 649.00, 591.05, '质量问题', '颜色太土', '', '可以退款', 'admin', null, null, null);
INSERT INTO import.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (12, 15, 3, 26, '201809130102000002', '2018-10-17 14:34:57', 'test', 3500.00, '大梨', '18000000000', 2, '2018-10-24 17:22:54', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', 1, 3788.00, 3585.98, '质量问题', '老是卡', '', '退货了', 'admin', 'admin', '2018-10-24 17:23:06', '收货了');
INSERT INTO import.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (13, 15, null, 27, '201809130102000002', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', 3, '2018-10-24 17:23:30', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', 1, 2699.00, 2022.81, '质量问题', '不够高端', '', '无法退货', 'admin', null, null, null);
INSERT INTO import.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (15, 16, null, 26, '201809140101000001', '2018-10-17 14:34:57', 'test', null, '大梨', '18000000000', 0, null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', 1, 3788.00, 3585.98, '质量问题', '老是卡', '', null, null, null, null, null);
INSERT INTO import.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (16, 16, null, 27, '201809140101000001', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', 0, null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', 1, 2699.00, 2022.81, '质量问题', '不够高端', '', null, null, null, null, null);
INSERT INTO import.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (17, 16, null, 28, '201809140101000001', '2018-10-17 14:44:18', 'test', null, '大梨', '18000000000', 0, null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', 1, 649.00, 591.05, '质量问题', '颜色太土', '', null, null, null, null, null);
INSERT INTO import.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (18, 17, null, 26, '201809150101000003', '2018-10-17 14:34:57', 'test', null, '大梨', '18000000000', 0, null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', 1, 3788.00, 3585.98, '质量问题', '老是卡', '', null, null, null, null, null);
INSERT INTO import.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (19, 17, null, 27, '201809150101000003', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', 0, null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', 1, 2699.00, 2022.81, '质量问题', '不够高端', '', null, null, null, null, null);
INSERT INTO import.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (20, 17, null, 28, '201809150101000003', '2018-10-17 14:44:18', 'test', null, '大梨', '18000000000', 0, null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', 1, 649.00, 591.05, '质量问题', '颜色太土', '', null, null, null, null, null);
INSERT INTO import.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (21, 18, null, 26, '201809150102000004', '2018-10-17 14:34:57', 'test', null, '大梨', '18000000000', 0, null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', 1, 3788.00, 3585.98, '质量问题', '老是卡', '', null, null, null, null, null);
INSERT INTO import.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (22, 18, null, 27, '201809150102000004', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', 0, null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', 1, 2699.00, 2022.81, '质量问题', '不够高端', '', null, null, null, null, null);
INSERT INTO import.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (23, 18, null, 28, '201809150102000004', '2018-10-17 14:44:18', 'test', null, '大梨', '18000000000', 0, null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', 1, 649.00, 591.05, '质量问题', '颜色太土', '', null, null, null, null, null);
INSERT INTO import.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (24, 19, null, 26, '201809130101000003', '2018-10-17 14:34:57', 'test', null, '大梨', '18000000000', 0, null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', 1, 3788.00, 3585.98, '质量问题', '老是卡', '', null, null, null, null, null);
INSERT INTO import.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (25, 19, null, 27, '201809130101000003', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', 0, null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', 1, 2699.00, 2022.81, '质量问题', '不够高端', '', null, null, null, null, null);
INSERT INTO import.oms_order_return_apply (id, order_id, company_address_id, product_id, order_sn, create_time, member_username, return_amount, return_name, return_phone, status, handle_time, product_pic, product_name, product_brand, product_attr, product_count, product_price, product_real_price, reason, description, proof_pics, handle_note, handle_man, receive_man, receive_time, receive_note) VALUES (26, 19, null, 28, '201809130101000003', '2018-10-17 14:44:18', 'test', null, '大梨', '18000000000', 0, null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', 1, 649.00, 591.05, '质量问题', '颜色太土', '', null, null, null, null, null);
create table oms_order_return_reason
(
    id          bigint auto_increment
        primary key,
    name        varchar(100) null comment '退货类型',
    sort        int          null,
    status      int(1)       null comment '状态：0->不启用；1->启用',
    create_time datetime     null comment '添加时间'
)
    comment '退货原因表' charset = utf8;

INSERT INTO import.oms_order_return_reason (id, name, sort, status, create_time) VALUES (1, '质量问题', 1, 1, '2018-10-17 10:00:45');
INSERT INTO import.oms_order_return_reason (id, name, sort, status, create_time) VALUES (2, '尺码太大', 1, 1, '2018-10-17 10:01:03');
INSERT INTO import.oms_order_return_reason (id, name, sort, status, create_time) VALUES (3, '颜色不喜欢', 1, 1, '2018-10-17 10:01:13');
INSERT INTO import.oms_order_return_reason (id, name, sort, status, create_time) VALUES (4, '7天无理由退货', 1, 1, '2018-10-17 10:01:47');
INSERT INTO import.oms_order_return_reason (id, name, sort, status, create_time) VALUES (5, '价格问题', 1, 0, '2018-10-17 10:01:57');
INSERT INTO import.oms_order_return_reason (id, name, sort, status, create_time) VALUES (12, '发票问题', 0, 1, '2018-10-19 16:28:36');
INSERT INTO import.oms_order_return_reason (id, name, sort, status, create_time) VALUES (13, '其他问题', 0, 1, '2018-10-19 16:28:51');
INSERT INTO import.oms_order_return_reason (id, name, sort, status, create_time) VALUES (14, '物流问题', 0, 1, '2018-10-19 16:29:01');
INSERT INTO import.oms_order_return_reason (id, name, sort, status, create_time) VALUES (15, '售后问题', 0, 1, '2018-10-19 16:29:11');
create table oms_order_setting
(
    id                    bigint auto_increment
        primary key,
    flash_order_overtime  int null comment '秒杀订单超时关闭时间(分)',
    normal_order_overtime int null comment '正常订单超时时间(分)',
    confirm_overtime      int null comment '发货后自动确认收货时间（天）',
    finish_overtime       int null comment '自动完成交易时间，不能申请售后（天）',
    comment_overtime      int null comment '订单完成后自动好评时间（天）'
)
    comment '订单设置表' charset = utf8;

INSERT INTO import.oms_order_setting (id, flash_order_overtime, normal_order_overtime, confirm_overtime, finish_overtime, comment_overtime) VALUES (1, 60, 120, 15, 7, 7);
create table pms_album
(
    id          bigint auto_increment
        primary key,
    name        varchar(64)   null,
    cover_pic   varchar(1000) null,
    pic_count   int           null,
    sort        int           null,
    description varchar(1000) null
)
    comment '相册表' charset = utf8;


create table pms_album_pic
(
    id       bigint auto_increment
        primary key,
    album_id bigint        null,
    pic      varchar(1000) null
)
    comment '画册图片表' charset = utf8;


create table pms_brand
(
    id                    bigint auto_increment
        primary key,
    name                  varchar(64)  null,
    first_letter          varchar(8)   null comment '首字母',
    sort                  int          null,
    factory_status        int(1)       null comment '是否为品牌制造商：0->不是；1->是',
    show_status           int(1)       null,
    product_count         int          null comment '产品数量',
    product_comment_count int          null comment '产品评论数量',
    logo                  varchar(255) null comment '品牌logo',
    big_pic               varchar(255) null comment '专区大图',
    brand_story           text         null comment '品牌故事'
)
    comment '品牌表' charset = utf8;

INSERT INTO import.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (1, '万和', 'W', 0, 1, 1, 100, 100, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg(5).jpg', '', 'Victoria''s Secret的故事');
INSERT INTO import.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (2, '三星', 'S', 100, 1, 1, 100, 100, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (1).jpg', null, '三星的故事');
INSERT INTO import.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (3, '华为', 'H', 100, 1, 0, 100, 100, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (2).jpg', null, 'Victoria''s Secret的故事');
INSERT INTO import.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (4, '格力', 'G', 30, 1, 0, 100, 100, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (3).jpg', null, 'Victoria''s Secret的故事');
INSERT INTO import.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (5, '方太', 'F', 20, 1, 0, 100, 100, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (4).jpg', null, 'Victoria''s Secret的故事');
INSERT INTO import.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (6, '小米', 'M', 500, 1, 1, 100, 100, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180518/5a912944N474afb7a.png', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180518/5afd7778Nf7800b75.jpg', '小米手机的故事');
INSERT INTO import.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (21, 'OPPO', 'O', 0, 1, 1, 88, 500, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg(6).jpg', '', 'string');
INSERT INTO import.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (49, '七匹狼', 'S', 200, 1, 1, 77, 400, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180518/1522738681.jpg', null, 'BOOB的故事');
INSERT INTO import.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (50, '海澜之家', 'H', 200, 1, 1, 66, 300, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/LOGO1024.png', '', '海澜之家的故事');
INSERT INTO import.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (51, '苹果', 'A', 200, 1, 1, 55, 200, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg', null, '苹果的故事');
INSERT INTO import.pms_brand (id, name, first_letter, sort, factory_status, show_status, product_count, product_comment_count, logo, big_pic, brand_story) VALUES (58, 'NIKE', 'N', 0, 1, 1, 33, 100, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/timg (51).jpg', '', 'NIKE的故事');
create table pms_comment
(
    id                bigint auto_increment
        primary key,
    product_id        bigint        null,
    member_nick_name  varchar(255)  null,
    product_name      varchar(255)  null,
    star              int(3)        null comment '评价星数：0->5',
    member_ip         varchar(64)   null comment '评价的ip',
    create_time       datetime      null,
    show_status       int(1)        null,
    product_attribute varchar(255)  null comment '购买时的商品属性',
    collect_couont    int           null,
    read_count        int           null,
    content           text          null,
    pics              varchar(1000) null comment '上传图片地址，以逗号隔开',
    member_icon       varchar(255)  null comment '评论用户头像',
    replay_count      int           null
)
    comment '商品评价表' charset = utf8;


create table pms_comment_replay
(
    id               bigint auto_increment
        primary key,
    comment_id       bigint        null,
    member_nick_name varchar(255)  null,
    member_icon      varchar(255)  null,
    content          varchar(1000) null,
    create_time      datetime      null,
    type             int(1)        null comment '评论人员类型；0->会员；1->管理员'
)
    comment '产品评价回复表' charset = utf8;


create table pms_feight_template
(
    id              bigint auto_increment
        primary key,
    name            varchar(64)    null,
    charge_type     int(1)         null comment '计费类型:0->按重量；1->按件数',
    first_weight    decimal(10, 2) null comment '首重kg',
    first_fee       decimal(10, 2) null comment '首费（元）',
    continue_weight decimal(10, 2) null,
    continme_fee    decimal(10, 2) null,
    dest            varchar(255)   null comment '目的地（省、市）'
)
    comment '运费模版' charset = utf8;


create table pms_member_price
(
    id                bigint auto_increment
        primary key,
    product_id        bigint         null,
    member_level_id   bigint         null,
    member_price      decimal(10, 2) null comment '会员价格',
    member_level_name varchar(100)   null
)
    comment '商品会员价格表' charset = utf8;

INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (26, 7, 1, 500.00, null);
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (27, 8, 1, 500.00, null);
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (28, 9, 1, 500.00, null);
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (29, 10, 1, 500.00, null);
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (30, 11, 1, 500.00, null);
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (31, 12, 1, 500.00, null);
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (32, 13, 1, 500.00, null);
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (33, 14, 1, 500.00, null);
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (37, 18, 1, 500.00, null);
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (44, 7, 2, 480.00, null);
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (45, 7, 3, 450.00, null);
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (52, 22, 1, null, null);
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (53, 22, 2, null, null);
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (54, 22, 3, null, null);
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (58, 24, 1, null, null);
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (59, 24, 2, null, null);
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (60, 24, 3, null, null);
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (112, 23, 1, 88.00, '黄金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (113, 23, 2, 88.00, '白金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (114, 23, 3, 66.00, '钻石会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (142, 31, 1, null, '黄金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (143, 31, 2, null, '白金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (144, 31, 3, null, '钻石会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (148, 32, 1, null, '黄金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (149, 32, 2, null, '白金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (150, 32, 3, null, '钻石会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (154, 33, 1, null, '黄金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (155, 33, 2, null, '白金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (156, 33, 3, null, '钻石会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (175, 34, 1, null, '黄金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (176, 34, 2, null, '白金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (177, 34, 3, null, '钻石会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (178, 30, 1, null, '黄金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (179, 30, 2, null, '白金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (180, 30, 3, null, '钻石会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (192, 27, 1, null, '黄金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (193, 27, 2, null, '白金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (194, 27, 3, null, '钻石会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (195, 28, 1, null, '黄金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (196, 28, 2, null, '白金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (197, 28, 3, null, '钻石会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (198, 29, 1, null, '黄金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (199, 29, 2, null, '白金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (200, 29, 3, null, '钻石会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (201, 26, 1, null, '黄金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (202, 26, 2, null, '白金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (203, 26, 3, null, '钻石会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (246, 36, 1, null, '黄金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (247, 36, 2, null, '白金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (248, 36, 3, null, '钻石会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (249, 35, 1, null, '黄金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (250, 35, 2, null, '白金会员');
INSERT INTO import.pms_member_price (id, product_id, member_level_id, member_price, member_level_name) VALUES (251, 35, 3, null, '钻石会员');
create table pms_product
(
    id                            bigint auto_increment
        primary key,
    brand_id                      bigint         null,
    product_category_id           bigint         null,
    feight_template_id            bigint         null,
    product_attribute_category_id bigint         null,
    name                          varchar(64)    not null,
    pic                           varchar(255)   null,
    product_sn                    varchar(64)    not null comment '货号',
    delete_status                 int(1)         null comment '删除状态：0->未删除；1->已删除',
    publish_status                int(1)         null comment '上架状态：0->下架；1->上架',
    new_status                    int(1)         null comment '新品状态:0->不是新品；1->新品',
    recommand_status              int(1)         null comment '推荐状态；0->不推荐；1->推荐',
    verify_status                 int(1)         null comment '审核状态：0->未审核；1->审核通过',
    sort                          int            null comment '排序',
    sale                          int            null comment '销量',
    price                         decimal(10, 2) null,
    promotion_price               decimal(10, 2) null comment '促销价格',
    gift_growth                   int default 0  null comment '赠送的成长值',
    gift_point                    int default 0  null comment '赠送的积分',
    use_point_limit               int            null comment '限制使用的积分数',
    sub_title                     varchar(255)   null comment '副标题',
    description                   text           null comment '商品描述',
    original_price                decimal(10, 2) null comment '市场价',
    stock                         int            null comment '库存',
    low_stock                     int            null comment '库存预警值',
    unit                          varchar(16)    null comment '单位',
    weight                        decimal(10, 2) null comment '商品重量，默认为克',
    preview_status                int(1)         null comment '是否为预告商品：0->不是；1->是',
    service_ids                   varchar(64)    null comment '以逗号分割的产品服务：1->无忧退货；2->快速退款；3->免费包邮',
    keywords                      varchar(255)   null,
    note                          varchar(255)   null,
    album_pics                    varchar(255)   null comment '画册图片，连产品图片限制为5张，以逗号分割',
    detail_title                  varchar(255)   null,
    detail_desc                   text           null,
    detail_html                   text           null comment '产品详情网页内容',
    detail_mobile_html            text           null comment '移动端网页详情',
    promotion_start_time          datetime       null comment '促销开始时间',
    promotion_end_time            datetime       null comment '促销结束时间',
    promotion_per_limit           int            null comment '活动限购数量',
    promotion_type                int(1)         null comment '促销类型：0->没有促销使用原价;1->使用促销价；2->使用会员价；3->使用阶梯价格；4->使用满减价格；5->限时购',
    brand_name                    varchar(255)   null comment '品牌名称',
    product_category_name         varchar(255)   null comment '商品分类名称'
)
    comment '商品信息' charset = utf8;

INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (1, 49, 7, 0, 0, '银色星芒刺绣网纱底裤', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 1, 1, 1, 1, 100, 0, 100.00, null, 0, 100, null, '111', '111', 120.00, 100, 20, '件', 1000.00, 0, null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, null, null, 0, '七匹狼', '外套');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (2, 49, 7, 0, 0, '银色星芒刺绣网纱底裤2', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86578', 1, 1, 1, 1, 1, 1, 0, 100.00, null, 0, 100, null, '111', '111', 120.00, 100, 20, '件', 1000.00, 0, null, '银色星芒刺绣网纱底裤2', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '<p>银色星芒刺绣网纱底裤</p>', '<p>银色星芒刺绣网纱底裤</p>', null, null, null, 0, '七匹狼', '外套');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (3, 1, 7, 0, 0, '银色星芒刺绣网纱底裤3', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86579', 1, 1, 1, 1, 1, 1, 0, 100.00, null, 0, 100, null, '111', '111', 120.00, 100, 20, '件', 1000.00, 0, null, '银色星芒刺绣网纱底裤3', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, null, null, 0, '万和', '外套');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (4, 1, 7, 0, 0, '银色星芒刺绣网纱底裤4', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86580', 1, 1, 1, 1, 1, 1, 0, 100.00, null, 0, 100, null, '111', '111', 120.00, 100, 20, '件', 1000.00, 0, null, '银色星芒刺绣网纱底裤4', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, null, null, 0, '万和', '外套');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (5, 1, 7, 0, 0, '银色星芒刺绣网纱底裤5', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86581', 1, 0, 1, 1, 1, 1, 0, 100.00, null, 0, 100, null, '111', '111', 120.00, 100, 20, '件', 1000.00, 0, null, '银色星芒刺绣网纱底裤5', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, null, null, 0, '万和', '外套');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (6, 1, 7, 0, 0, '银色星芒刺绣网纱底裤6', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86582', 1, 1, 1, 1, 1, 1, 0, 100.00, null, 0, 100, null, '111', '111', 120.00, 100, 20, '件', 1000.00, 0, null, '银色星芒刺绣网纱底裤6', '银色星芒刺绣网纱底裤', null, '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', null, null, null, 0, '万和', '外套');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (7, 1, 7, 0, 1, '女式超柔软拉毛运动开衫', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 0, 0, 0, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (8, 1, 7, 0, 1, '女式超柔软拉毛运动开衫1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 0, 0, 0, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (9, 1, 7, 0, 1, '女式超柔软拉毛运动开衫1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 0, 0, 0, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (10, 1, 7, 0, 1, '女式超柔软拉毛运动开衫1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 0, 0, 0, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (11, 1, 7, 0, 1, '女式超柔软拉毛运动开衫1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 1, 0, 1, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (12, 1, 7, 0, 1, '女式超柔软拉毛运动开衫2', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 1, 0, 1, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (13, 1, 7, 0, 1, '女式超柔软拉毛运动开衫3', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 1, 0, 1, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (14, 1, 7, 0, 1, '女式超柔软拉毛运动开衫3', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 0, 0, 1, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (18, 1, 7, 0, 1, '女式超柔软拉毛运动开衫3', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86577', 1, 0, 0, 1, 0, 0, 0, 249.00, 0.00, 0, 100, 0, '匠心剪裁，垂感质地', '匠心剪裁，垂感质地', 299.00, 100, 0, '件', 0.00, 0, 'string', '女式超柔软拉毛运动开衫', 'string', 'string', 'string', 'string', 'string', 'string', '2018-04-26 10:41:03', '2018-04-26 10:41:03', 0, 0, '万和', '外套');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (22, 6, 7, 0, 1, 'test', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg', '', 1, 1, 0, 0, 0, 0, 0, 0.00, null, 0, 0, 0, 'test', '', 0.00, 100, 0, '', 0.00, 1, '1,2', '', '', '', '', '', '', '', null, null, 0, 0, '小米', '外套');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (23, 6, 19, 0, 1, '毛衫测试', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg', 'NO.1098', 1, 1, 1, 1, 0, 0, 0, 99.00, null, 99, 99, 1000, '毛衫测试11', 'xxx', 109.00, 100, 0, '件', 1000.00, 1, '1,2,3', '毛衫测试', '毛衫测试', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg', '毛衫测试', '毛衫测试', '<p><img class="wscnph" src="http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/155x54.bmp" /><img class="wscnph" src="http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/APP登录bg1080.jpg" width="500" height="500" /><img class="wscnph" src="http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/APP登录界面.jpg" width="500" height="500" /></p>', '', null, null, 0, 2, '小米', '手机数码');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (24, 6, 7, 0, null, 'xxx', '', '', 1, 0, 0, 0, 0, 0, 0, 0.00, null, 0, 0, 0, 'xxx', '', 0.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', null, null, 0, 0, '小米', '外套');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (26, 3, 19, 0, 3, '华为 HUAWEI P20 ', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '6946605', 0, 1, 1, 1, 0, 100, 0, 3788.00, null, 3788, 3788, 0, 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '', 4288.00, 1000, 0, '件', 0.00, 1, '2,3,1', '', '', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ab46a3cN616bdc41.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf5fN2522b9dc.jpg', '', '', '<p><img class="wscnph" src="http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad44f1cNf51f3bb0.jpg" /><img class="wscnph" src="http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad44fa8Nfcf71c10.jpg" /><img class="wscnph" src="http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad44fa9N40e78ee0.jpg" /><img class="wscnph" src="http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad457f4N1c94bdda.jpg" /><img class="wscnph" src="http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad457f5Nd30de41d.jpg" /><img class="wscnph" src="http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5b10fb0eN0eb053fb.jpg" /></p>', '', null, null, 0, 1, '华为', '手机通讯');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (27, 6, 19, 0, 3, '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '7437788', 0, 1, 1, 1, 0, 0, 0, 2699.00, null, 2699, 2699, 0, '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', 2699.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '<p><img class="wscnph" src="http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b2254e8N414e6d3a.jpg" width="500" /></p>', '', null, null, 0, 3, '小米', '手机数码');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (28, 6, 19, 0, 3, '小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '7437789', 0, 1, 1, 1, 0, 0, 0, 649.00, null, 649, 649, 0, '8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购', '', 649.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', null, null, 0, 4, '小米', '手机数码');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (29, 51, 19, 0, 3, 'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', '7437799', 0, 1, 1, 1, 0, 0, 0, 5499.00, null, 5499, 5499, 0, '【限时限量抢购】Apple产品年中狂欢节，好物尽享，美在智慧！速来 >> 勾选[保障服务][原厂保2年]，获得AppleCare+全方位服务计划，原厂延保售后无忧。', '', 5499.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', null, null, 0, 0, '苹果', '手机数码');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (30, 50, 8, 0, 1, 'HLA海澜之家简约动物印花短袖T恤', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5ad83a4fN6ff67ecd.jpg!cc_350x449.jpg', 'HNTBJ2E042A', 0, 1, 1, 1, 0, 0, 0, 98.00, null, 0, 0, 0, '2018夏季新品微弹舒适新款短T男生 6月6日-6月20日，满300减30，参与互动赢百元礼券，立即分享赢大奖', '', 98.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', null, null, 0, 0, '海澜之家', 'T恤');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (31, 50, 8, 0, 1, 'HLA海澜之家蓝灰花纹圆领针织布短袖T恤', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5ac98b64N70acd82f.jpg!cc_350x449.jpg', 'HNTBJ2E080A', 0, 1, 0, 0, 0, 0, 0, 98.00, null, 0, 0, 0, '2018夏季新品短袖T恤男HNTBJ2E080A 蓝灰花纹80 175/92A/L80A 蓝灰花纹80 175/92A/L', '', 98.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', null, null, 0, 0, '海澜之家', 'T恤');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (32, 50, 8, 0, null, 'HLA海澜之家短袖T恤男基础款', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a51eb88Na4797877.jpg', 'HNTBJ2E153A', 0, 1, 0, 0, 0, 0, 0, 68.00, null, 0, 0, 0, 'HLA海澜之家短袖T恤男基础款简约圆领HNTBJ2E153A藏青(F3)175/92A(50)', '', 68.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', null, null, 0, 0, '海澜之家', 'T恤');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (33, 6, 35, 0, null, '小米（MI）小米电视4A ', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b02804dN66004d73.jpg', '4609652', 0, 1, 0, 0, 0, 0, 0, 2499.00, null, 0, 0, 0, '小米（MI）小米电视4A 55英寸 L55M5-AZ/L55M5-AD 2GB+8GB HDR 4K超高清 人工智能网络液晶平板电视', '', 2499.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', null, null, 0, 0, '小米', '手机数码');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (34, 6, 35, 0, null, '小米（MI）小米电视4A 65英寸', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b028530N51eee7d4.jpg', '4609660', 0, 1, 0, 0, 0, 0, 0, 3999.00, null, 0, 0, 0, ' L65M5-AZ/L65M5-AD 2GB+8GB HDR 4K超高清 人工智能网络液晶平板电视', '', 3999.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', null, null, 0, 0, '小米', '手机数码');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (35, 58, 29, 0, 11, '耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b235bb9Nf606460b.jpg', '6799342', 0, 1, 0, 0, 0, 0, 0, 369.00, null, 0, 0, 0, '耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码', '', 369.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', null, null, 0, 0, 'NIKE', '男鞋');
INSERT INTO import.pms_product (id, brand_id, product_category_id, feight_template_id, product_attribute_category_id, name, pic, product_sn, delete_status, publish_status, new_status, recommand_status, verify_status, sort, sale, price, promotion_price, gift_growth, gift_point, use_point_limit, sub_title, description, original_price, stock, low_stock, unit, weight, preview_status, service_ids, keywords, note, album_pics, detail_title, detail_desc, detail_html, detail_mobile_html, promotion_start_time, promotion_end_time, promotion_per_limit, promotion_type, brand_name, product_category_name) VALUES (36, 58, 29, 0, 11, '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg', '6799345', 0, 1, 1, 1, 0, 0, 0, 499.00, null, 0, 0, 0, '耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码', '', 499.00, 100, 0, '', 0.00, 0, '', '', '', '', '', '', '', '', null, null, 0, 0, 'NIKE', '男鞋');
create table pms_product_attribute
(
    id                            bigint auto_increment
        primary key,
    product_attribute_category_id bigint       null,
    name                          varchar(64)  null,
    select_type                   int(1)       null comment '属性选择类型：0->唯一；1->单选；2->多选',
    input_type                    int(1)       null comment '属性录入方式：0->手工录入；1->从列表中选取',
    input_list                    varchar(255) null comment '可选值列表，以逗号隔开',
    sort                          int          null comment '排序字段：最高的可以单独上传图片',
    filter_type                   int(1)       null comment '分类筛选样式：1->普通；1->颜色',
    search_type                   int(1)       null comment '检索类型；0->不需要进行检索；1->关键字检索；2->范围检索',
    related_status                int(1)       null comment '相同属性产品是否关联；0->不关联；1->关联',
    hand_add_status               int(1)       null comment '是否支持手动新增；0->不支持；1->支持',
    type                          int(1)       null comment '属性的类型；0->规格；1->参数'
)
    comment '商品属性参数表' charset = utf8;

INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (1, 1, '尺寸', 2, 1, 'M,X,XL,2XL,3XL,4XL', 0, 0, 0, 0, 0, 0);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (7, 1, '颜色', 2, 1, '黑色,红色,白色,粉色', 100, 0, 0, 0, 1, 0);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (13, 0, '上市年份', 1, 1, '2013年,2014年,2015年,2016年,2017年', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (14, 0, '上市年份1', 1, 1, '2013年,2014年,2015年,2016年,2017年', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (15, 0, '上市年份2', 1, 1, '2013年,2014年,2015年,2016年,2017年', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (16, 0, '上市年份3', 1, 1, '2013年,2014年,2015年,2016年,2017年', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (17, 0, '上市年份4', 1, 1, '2013年,2014年,2015年,2016年,2017年', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (18, 0, '上市年份5', 1, 1, '2013年,2014年,2015年,2016年,2017年', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (19, 0, '适用对象', 1, 1, '青年女性,中年女性', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (20, 0, '适用对象1', 2, 1, '青年女性,中年女性', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (21, 0, '适用对象3', 2, 1, '青年女性,中年女性', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (24, 1, '商品编号', 1, 0, '', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (25, 1, '适用季节', 1, 1, '春季,夏季,秋季,冬季', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (32, 2, '适用人群', 0, 1, '老年,青年,中年', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (33, 2, '风格', 0, 1, '嘻哈风格,基础大众,商务正装', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (35, 2, '颜色', 0, 0, '', 100, 0, 0, 0, 1, 0);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (37, 1, '适用人群', 1, 1, '儿童,青年,中年,老年', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (38, 1, '上市时间', 1, 1, '2017年秋,2017年冬,2018年春,2018年夏', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (39, 1, '袖长', 1, 1, '短袖,长袖,中袖', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (40, 2, '尺码', 0, 1, '29,30,31,32,33,34', 0, 0, 0, 0, 0, 0);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (41, 2, '适用场景', 0, 1, '居家,运动,正装', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (42, 2, '上市时间', 0, 1, '2018年春,2018年夏', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (43, 3, '颜色', 0, 0, '', 100, 0, 0, 0, 1, 0);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (44, 3, '容量', 0, 1, '16G,32G,64G,128G', 0, 0, 0, 0, 0, 0);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (45, 3, '屏幕尺寸', 0, 0, '', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (46, 3, '网络', 0, 1, '3G,4G', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (47, 3, '系统', 0, 1, 'Android,IOS', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (48, 3, '电池容量', 0, 0, '', 0, 0, 0, 0, 0, 1);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (49, 11, '颜色', 0, 1, '红色,蓝色,绿色', 0, 1, 0, 0, 0, 0);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (50, 11, '尺寸', 0, 1, '38,39,40', 0, 0, 0, 0, 0, 0);
INSERT INTO import.pms_product_attribute (id, product_attribute_category_id, name, select_type, input_type, input_list, sort, filter_type, search_type, related_status, hand_add_status, type) VALUES (51, 11, '风格', 0, 1, '夏季,秋季', 0, 0, 0, 0, 0, 0);
create table pms_product_attribute_category
(
    id              bigint auto_increment
        primary key,
    name            varchar(64)   null,
    attribute_count int default 0 null comment '属性数量',
    param_count     int default 0 null comment '参数数量'
)
    comment '产品属性分类表' charset = utf8;

INSERT INTO import.pms_product_attribute_category (id, name, attribute_count, param_count) VALUES (1, '服装-T恤', 2, 5);
INSERT INTO import.pms_product_attribute_category (id, name, attribute_count, param_count) VALUES (2, '服装-裤装', 2, 4);
INSERT INTO import.pms_product_attribute_category (id, name, attribute_count, param_count) VALUES (3, '手机数码-手机通讯', 2, 4);
INSERT INTO import.pms_product_attribute_category (id, name, attribute_count, param_count) VALUES (4, '配件', 0, 0);
INSERT INTO import.pms_product_attribute_category (id, name, attribute_count, param_count) VALUES (5, '居家', 0, 0);
INSERT INTO import.pms_product_attribute_category (id, name, attribute_count, param_count) VALUES (6, '洗护', 0, 0);
INSERT INTO import.pms_product_attribute_category (id, name, attribute_count, param_count) VALUES (10, '测试分类', 0, 0);
INSERT INTO import.pms_product_attribute_category (id, name, attribute_count, param_count) VALUES (11, '服装-鞋帽', 3, 0);
create table pms_product_attribute_value
(
    id                   bigint auto_increment
        primary key,
    product_id           bigint      null,
    product_attribute_id bigint      null,
    value                varchar(64) null comment '手动添加规格或参数的值，参数单值，规格有多个时以逗号隔开'
)
    comment '存储产品参数信息的表' charset = utf8;

INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (1, 9, 1, 'X');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (2, 10, 1, 'X');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (3, 11, 1, 'X');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (4, 12, 1, 'X');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (5, 13, 1, 'X');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (6, 14, 1, 'X');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (7, 18, 1, 'X');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (8, 7, 1, 'X');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (9, 7, 1, 'XL');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (10, 7, 1, 'XXL');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (11, 22, 7, 'x,xx');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (12, 22, 24, 'no110');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (13, 22, 25, '春季');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (14, 22, 37, '青年');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (15, 22, 38, '2018年春');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (16, 22, 39, '长袖');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (124, 23, 7, '米白色,浅黄色');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (125, 23, 24, 'no1098');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (126, 23, 25, '春季');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (127, 23, 37, '青年');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (128, 23, 38, '2018年春');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (129, 23, 39, '长袖');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (130, 1, 13, null);
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (131, 1, 14, null);
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (132, 1, 15, null);
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (133, 1, 16, null);
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (134, 1, 17, null);
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (135, 1, 18, null);
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (136, 1, 19, null);
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (137, 1, 20, null);
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (138, 1, 21, null);
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (139, 2, 13, null);
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (140, 2, 14, null);
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (141, 2, 15, null);
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (142, 2, 16, null);
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (143, 2, 17, null);
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (144, 2, 18, null);
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (145, 2, 19, null);
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (146, 2, 20, null);
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (147, 2, 21, null);
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (183, 31, 24, null);
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (184, 31, 25, '夏季');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (185, 31, 37, '青年');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (186, 31, 38, '2018年夏');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (187, 31, 39, '短袖');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (198, 30, 24, null);
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (199, 30, 25, '夏季');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (200, 30, 37, '青年');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (201, 30, 38, '2018年夏');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (202, 30, 39, '短袖');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (213, 27, 43, '黑色,蓝色');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (214, 27, 45, '5.8');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (215, 27, 46, '4G');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (216, 27, 47, 'Android');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (217, 27, 48, '3000ml');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (218, 28, 43, '金色,银色');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (219, 28, 45, '5.0');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (220, 28, 46, '4G');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (221, 28, 47, 'Android');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (222, 28, 48, '2800ml');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (223, 29, 43, '金色,银色');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (224, 29, 45, '4.7');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (225, 29, 46, '4G');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (226, 29, 47, 'IOS');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (227, 29, 48, '1960ml');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (228, 26, 43, '金色,银色');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (229, 26, 45, '5.0');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (230, 26, 46, '4G');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (231, 26, 47, 'Android');
INSERT INTO import.pms_product_attribute_value (id, product_id, product_attribute_id, value) VALUES (232, 26, 48, '3000');
create table pms_product_category
(
    id            bigint auto_increment
        primary key,
    parent_id     bigint       null comment '上机分类的编号：0表示一级分类',
    name          varchar(64)  null,
    level         int(1)       null comment '分类级别：0->1级；1->2级',
    product_count int          null,
    product_unit  varchar(64)  null,
    nav_status    int(1)       null comment '是否显示在导航栏：0->不显示；1->显示',
    show_status   int(1)       null comment '显示状态：0->不显示；1->显示',
    sort          int          null,
    icon          varchar(255) null comment '图标',
    keywords      varchar(255) null,
    description   text         null comment '描述'
)
    comment '产品分类' charset = utf8;

INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (1, 0, '服装', 0, 100, '件', 1, 1, 1, null, '服装', '服装分类');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (2, 0, '手机数码', 0, 100, '件', 1, 1, 1, null, '手机数码', '手机数码');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (3, 0, '家用电器', 0, 100, '件', 1, 1, 1, null, '家用电器', '家用电器');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (4, 0, '家具家装', 0, 100, '件', 1, 1, 1, null, '家具家装', '家具家装');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (5, 0, '汽车用品', 0, 100, '件', 1, 1, 1, null, '汽车用品', '汽车用品');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (7, 1, '外套', 1, 100, '件', 1, 1, 0, '', '外套', '外套');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (8, 1, 'T恤', 1, 100, '件', 1, 1, 0, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'T恤', 'T恤');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (9, 1, '休闲裤', 1, 100, '件', 1, 1, 0, null, '休闲裤', '休闲裤');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (10, 1, '牛仔裤', 1, 100, '件', 1, 1, 0, null, '牛仔裤', '牛仔裤');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (11, 1, '衬衫', 1, 100, '件', 1, 1, 0, null, '衬衫', '衬衫分类');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (13, 12, '家电子分类1', 1, 1, 'string', 0, 1, 0, 'string', 'string', 'string');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (14, 12, '家电子分类2', 1, 1, 'string', 0, 1, 0, 'string', 'string', 'string');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (19, 2, '手机通讯', 1, 0, '件', 0, 0, 0, '', '手机通讯', '手机通讯');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (29, 1, '男鞋', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (30, 2, '手机配件', 1, 0, '', 0, 0, 0, '', '手机配件', '手机配件');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (31, 2, '摄影摄像', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (32, 2, '影音娱乐', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (33, 2, '数码配件', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (34, 2, '智能设备', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (35, 3, '电视', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (36, 3, '空调', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (37, 3, '洗衣机', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (38, 3, '冰箱', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (39, 3, '厨卫大电', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (40, 3, '厨房小电', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (41, 3, '生活电器', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (42, 3, '个护健康', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (43, 4, '厨房卫浴', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (44, 4, '灯饰照明', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (45, 4, '五金工具', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (46, 4, '卧室家具', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (47, 4, '客厅家具', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (48, 5, '全新整车', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (49, 5, '车载电器', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (50, 5, '维修保养', 1, 0, '', 0, 0, 0, '', '', '');
INSERT INTO import.pms_product_category (id, parent_id, name, level, product_count, product_unit, nav_status, show_status, sort, icon, keywords, description) VALUES (51, 5, '汽车装饰', 1, 0, '', 0, 0, 0, '', '', '');
create table pms_product_category_attribute_relation
(
    id                   bigint auto_increment
        primary key,
    product_category_id  bigint null,
    product_attribute_id bigint null
)
    comment '产品的分类和属性的关系表，用于设置分类筛选条件（只支持一级分类）' charset = utf8;

INSERT INTO import.pms_product_category_attribute_relation (id, product_category_id, product_attribute_id) VALUES (1, 24, 24);
INSERT INTO import.pms_product_category_attribute_relation (id, product_category_id, product_attribute_id) VALUES (5, 26, 24);
INSERT INTO import.pms_product_category_attribute_relation (id, product_category_id, product_attribute_id) VALUES (7, 28, 24);
INSERT INTO import.pms_product_category_attribute_relation (id, product_category_id, product_attribute_id) VALUES (9, 25, 24);
INSERT INTO import.pms_product_category_attribute_relation (id, product_category_id, product_attribute_id) VALUES (10, 25, 25);
create table pms_product_full_reduction
(
    id           bigint(11) auto_increment
        primary key,
    product_id   bigint         null,
    full_price   decimal(10, 2) null,
    reduce_price decimal(10, 2) null
)
    comment '产品满减表(只针对同商品)' charset = utf8;

INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (1, 7, 100.00, 20.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (2, 8, 100.00, 20.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (3, 9, 100.00, 20.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (4, 10, 100.00, 20.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (5, 11, 100.00, 20.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (6, 12, 100.00, 20.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (7, 13, 100.00, 20.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (8, 14, 100.00, 20.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (9, 18, 100.00, 20.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (10, 7, 200.00, 50.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (11, 7, 300.00, 100.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (14, 22, 0.00, 0.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (16, 24, 0.00, 0.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (34, 23, 0.00, 0.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (44, 31, 0.00, 0.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (46, 32, 0.00, 0.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (48, 33, 0.00, 0.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (55, 34, 0.00, 0.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (56, 30, 0.00, 0.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (59, 27, 0.00, 0.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (60, 28, 500.00, 50.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (61, 28, 1000.00, 120.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (62, 29, 0.00, 0.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (63, 26, 0.00, 0.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (78, 36, 0.00, 0.00);
INSERT INTO import.pms_product_full_reduction (id, product_id, full_price, reduce_price) VALUES (79, 35, 0.00, 0.00);
create table pms_product_ladder
(
    id         bigint auto_increment
        primary key,
    product_id bigint         null,
    count      int            null comment '满足的商品数量',
    discount   decimal(10, 2) null comment '折扣',
    price      decimal(10, 2) null comment '折后价格'
)
    comment '产品阶梯价格表(只针对同商品)' charset = utf8;

INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (1, 7, 3, 0.70, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (2, 8, 3, 0.70, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (3, 9, 3, 0.70, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (4, 10, 3, 0.70, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (5, 11, 3, 0.70, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (6, 12, 3, 0.70, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (7, 13, 3, 0.70, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (8, 14, 3, 0.70, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (12, 18, 3, 0.70, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (14, 7, 4, 0.60, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (15, 7, 5, 0.50, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (18, 22, 0, 0.00, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (20, 24, 0, 0.00, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (38, 23, 0, 0.00, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (48, 31, 0, 0.00, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (50, 32, 0, 0.00, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (52, 33, 0, 0.00, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (59, 34, 0, 0.00, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (60, 30, 0, 0.00, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (64, 27, 2, 0.80, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (65, 27, 3, 0.75, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (66, 28, 0, 0.00, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (67, 29, 0, 0.00, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (68, 26, 0, 0.00, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (83, 36, 0, 0.00, 0.00);
INSERT INTO import.pms_product_ladder (id, product_id, count, discount, price) VALUES (84, 35, 0, 0.00, 0.00);
create table pms_product_operate_log
(
    id                  bigint auto_increment
        primary key,
    product_id          bigint         null,
    price_old           decimal(10, 2) null,
    price_new           decimal(10, 2) null,
    sale_price_old      decimal(10, 2) null,
    sale_price_new      decimal(10, 2) null,
    gift_point_old      int            null comment '赠送的积分',
    gift_point_new      int            null,
    use_point_limit_old int            null,
    use_point_limit_new int            null,
    operate_man         varchar(64)    null comment '操作人',
    create_time         datetime       null
)
    charset = utf8;


create table pms_product_vertify_record
(
    id          bigint auto_increment
        primary key,
    product_id  bigint       null,
    create_time datetime     null,
    vertify_man varchar(64)  null comment '审核人',
    status      int(1)       null,
    detail      varchar(255) null comment '反馈详情'
)
    comment '商品审核记录' charset = utf8;

INSERT INTO import.pms_product_vertify_record (id, product_id, create_time, vertify_man, status, detail) VALUES (1, 1, '2018-04-27 16:36:41', 'test', 1, '验证通过');
INSERT INTO import.pms_product_vertify_record (id, product_id, create_time, vertify_man, status, detail) VALUES (2, 2, '2018-04-27 16:36:41', 'test', 1, '验证通过');
create table pms_sku_stock
(
    id              bigint auto_increment
        primary key,
    product_id      bigint         null,
    sku_code        varchar(64)    not null comment 'sku编码',
    price           decimal(10, 2) null,
    stock           int default 0  null comment '库存',
    low_stock       int            null comment '预警库存',
    pic             varchar(255)   null comment '展示图片',
    sale            int            null comment '销量',
    promotion_price decimal(10, 2) null comment '单品促销价格',
    lock_stock      int default 0  null comment '锁定库存',
    sp_data         varchar(500)   null comment '商品销售属性，json格式'
)
    comment 'sku的库存' charset = utf8;

INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (98, 27, '201808270027001', 2699.00, 97, null, null, null, null, -24, '[{"key":"颜色","value":"黑色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (99, 27, '201808270027002', 2999.00, 100, null, null, null, null, 0, '[{"key":"颜色","value":"黑色"},{"key":"容量","value":"64G"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (100, 27, '201808270027003', 2699.00, 100, null, null, null, null, 0, '[{"key":"颜色","value":"蓝色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (101, 27, '201808270027004', 2999.00, 100, null, null, null, null, 0, '[{"key":"颜色","value":"蓝色"},{"key":"容量","value":"64G"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (102, 28, '201808270028001', 649.00, 99, null, null, null, null, -8, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (103, 28, '201808270028002', 699.00, 99, null, null, null, null, -8, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (104, 28, '201808270028003', 649.00, 100, null, null, null, null, 0, '[{"key":"颜色","value":"银色"},{"key":"容量","value":"16G"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (105, 28, '201808270028004', 699.00, 100, null, null, null, null, 0, '[{"key":"颜色","value":"银色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (106, 29, '201808270029001', 5499.00, 99, null, null, null, null, -8, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (107, 29, '201808270029002', 6299.00, 100, null, null, null, null, 0, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"64G"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (108, 29, '201808270029003', 5499.00, 100, null, null, null, null, 0, '[{"key":"颜色","value":"银色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (109, 29, '201808270029004', 6299.00, 100, null, null, null, null, 0, '[{"key":"颜色","value":"银色"},{"key":"容量","value":"64G"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (110, 26, '201806070026001', 3788.00, 499, null, null, null, null, 0, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"16G"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (111, 26, '201806070026002', 3999.00, 500, null, null, null, null, 0, '[{"key":"颜色","value":"金色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (112, 26, '201806070026003', 3788.00, 500, null, null, null, null, 0, '[{"key":"颜色","value":"银色"},{"key":"容量","value":"16G"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (113, 26, '201806070026004', 3999.00, 500, null, null, null, null, 0, '[{"key":"颜色","value":"银色"},{"key":"容量","value":"32G"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (163, 36, '202002210036001', 100.00, 100, 25, null, null, null, 9, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"秋季"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (164, 36, '202002210036002', 120.00, 98, 20, null, null, null, 6, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"夏季"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (165, 36, '202002210036003', 100.00, 100, 20, null, null, null, 0, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"39"},{"key":"风格","value":"秋季"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (166, 36, '202002210036004', 100.00, 100, 20, null, null, null, 0, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"39"},{"key":"风格","value":"夏季"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (167, 36, '202002210036005', 100.00, 100, 20, null, null, null, 0, '[{"key":"颜色","value":"蓝色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"秋季"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (168, 36, '202002210036006', 100.00, 100, 20, null, null, null, 0, '[{"key":"颜色","value":"蓝色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"夏季"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (169, 36, '202002210036007', 100.00, 100, 20, null, null, null, 0, '[{"key":"颜色","value":"蓝色"},{"key":"尺寸","value":"39"},{"key":"风格","value":"秋季"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (170, 36, '202002210036008', 100.00, 100, 20, null, null, null, 0, '[{"key":"颜色","value":"蓝色"},{"key":"尺寸","value":"39"},{"key":"风格","value":"夏季"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (171, 35, '202002250035001', 200.00, 100, 50, null, null, null, 0, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"夏季"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (172, 35, '202002250035002', 240.00, 100, 50, null, null, null, 0, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"秋季"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (173, 35, '202002250035003', 200.00, 100, 50, null, null, null, 0, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"39"},{"key":"风格","value":"夏季"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (174, 35, '202002250035004', 200.00, 100, 50, null, null, null, 0, '[{"key":"颜色","value":"红色"},{"key":"尺寸","value":"39"},{"key":"风格","value":"秋季"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (175, 35, '202002250035005', 200.00, 100, 50, null, null, null, 0, '[{"key":"颜色","value":"蓝色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"夏季"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (176, 35, '202002250035006', 200.00, 100, 50, null, null, null, 0, '[{"key":"颜色","value":"蓝色"},{"key":"尺寸","value":"38"},{"key":"风格","value":"秋季"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (177, 35, '202002250035007', 200.00, 100, 50, null, null, null, 0, '[{"key":"颜色","value":"蓝色"},{"key":"尺寸","value":"39"},{"key":"风格","value":"夏季"}]');
INSERT INTO import.pms_sku_stock (id, product_id, sku_code, price, stock, low_stock, pic, sale, promotion_price, lock_stock, sp_data) VALUES (178, 35, '202002250035008', 200.00, 100, 50, null, null, null, 0, '[{"key":"颜色","value":"蓝色"},{"key":"尺寸","value":"39"},{"key":"风格","value":"秋季"}]');
create table sms_coupon
(
    id            bigint auto_increment
        primary key,
    type          int(1)         null comment '优惠卷类型；0->全场赠券；1->会员赠券；2->购物赠券；3->注册赠券',
    name          varchar(100)   null,
    platform      int(1)         null comment '使用平台：0->全部；1->移动；2->PC',
    count         int            null comment '数量',
    amount        decimal(10, 2) null comment '金额',
    per_limit     int            null comment '每人限领张数',
    min_point     decimal(10, 2) null comment '使用门槛；0表示无门槛',
    start_time    datetime       null,
    end_time      datetime       null,
    use_type      int(1)         null comment '使用类型：0->全场通用；1->指定分类；2->指定商品',
    note          varchar(200)   null comment '备注',
    publish_count int            null comment '发行数量',
    use_count     int            null comment '已使用数量',
    receive_count int            null comment '领取数量',
    enable_time   datetime       null comment '可以领取的日期',
    code          varchar(64)    null comment '优惠码',
    member_level  int(1)         null comment '可领取的会员类型：0->无限时'
)
    comment '优惠卷表' charset = utf8;

INSERT INTO import.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (2, 0, '全品类通用券', 0, 92, 10.00, 1, 100.00, '2018-08-27 16:40:47', '2018-11-23 16:40:47', 0, '满100减10', 100, 0, 8, '2018-08-27 16:40:47', null, null);
INSERT INTO import.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (3, 0, '小米手机专用券', 0, 92, 50.00, 1, 1000.00, '2018-08-27 16:40:47', '2018-11-16 16:40:47', 2, '小米手机专用优惠券', 100, 0, 8, '2018-08-27 16:40:47', null, null);
INSERT INTO import.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (4, 0, '手机品类专用券', 0, 92, 300.00, 1, 2000.00, '2018-08-27 16:40:47', '2018-09-15 16:40:47', 1, '手机分类专用优惠券', 100, 0, 8, '2018-08-27 16:40:47', null, null);
INSERT INTO import.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (7, 0, 'T恤分类专用优惠券', 0, 93, 50.00, 1, 500.00, '2018-08-27 16:40:47', '2018-08-15 16:40:47', 1, '满500减50', 100, 0, 7, '2018-08-27 16:40:47', null, null);
INSERT INTO import.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (8, 0, '新优惠券', 0, 100, 100.00, 1, 1000.00, '2018-11-08 00:00:00', '2018-11-27 00:00:00', 0, '测试', 100, 0, 1, null, null, null);
INSERT INTO import.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (9, 0, '全品类通用券', 0, 100, 5.00, 1, 100.00, '2018-11-08 00:00:00', '2018-11-10 00:00:00', 0, null, 100, 0, 1, null, null, null);
INSERT INTO import.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (10, 0, '全品类通用券', 0, 100, 15.00, 1, 200.00, '2018-11-08 00:00:00', '2018-11-10 00:00:00', 0, null, 100, 0, 1, null, null, null);
INSERT INTO import.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (11, 0, '全品类通用券', 0, 1000, 50.00, 1, 1000.00, '2018-11-08 00:00:00', '2018-11-10 00:00:00', 0, null, 1000, 0, 0, null, null, null);
INSERT INTO import.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (12, 0, '移动端全品类通用券', 1, 1, 10.00, 1, 100.00, '2018-11-08 00:00:00', '2018-11-10 00:00:00', 0, null, 100, 0, 0, null, null, null);
INSERT INTO import.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (19, 0, '手机分类专用', 0, 100, 100.00, 1, 1000.00, '2018-11-09 00:00:00', '2018-11-17 00:00:00', 1, '手机分类专用', 100, 0, 0, null, null, null);
INSERT INTO import.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (20, 0, '小米手机专用', 0, 100, 200.00, 1, 1000.00, '2018-11-09 00:00:00', '2018-11-24 00:00:00', 2, '小米手机专用', 100, 0, 0, null, null, null);
INSERT INTO import.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (21, 0, 'xxx', 0, 100, 10.00, 1, 100.00, '2018-11-09 00:00:00', '2018-11-30 00:00:00', 2, null, 100, 0, 0, null, null, null);
INSERT INTO import.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (22, 0, 'string', 0, 0, 0.00, 0, 0.00, '2019-08-18 15:36:11', '2019-08-18 15:36:11', 0, 'string', 0, 0, 0, '2019-08-18 15:36:11', 'string', 0);
INSERT INTO import.sms_coupon (id, type, name, platform, count, amount, per_limit, min_point, start_time, end_time, use_type, note, publish_count, use_count, receive_count, enable_time, code, member_level) VALUES (23, 0, '有效期测试', 0, 100, 10.00, 1, 100.00, '2019-10-05 00:00:00', '2019-10-09 00:00:00', 0, null, 100, 0, 0, null, null, null);
create table sms_coupon_history
(
    id              bigint auto_increment
        primary key,
    coupon_id       bigint       null,
    member_id       bigint       null,
    coupon_code     varchar(64)  null,
    member_nickname varchar(64)  null comment '领取人昵称',
    get_type        int(1)       null comment '获取类型：0->后台赠送；1->主动获取',
    create_time     datetime     null,
    use_status      int(1)       null comment '使用状态：0->未使用；1->已使用；2->已过期',
    use_time        datetime     null comment '使用时间',
    order_id        bigint       null comment '订单编号',
    order_sn        varchar(100) null comment '订单号码'
)
    comment '优惠券使用、领取历史表' charset = utf8;

create index idx_coupon_id
    on sms_coupon_history (coupon_id);

create index idx_member_id
    on sms_coupon_history (member_id);

INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (2, 2, 1, '4931048380330002', 'windir', 1, '2018-08-29 14:04:12', 1, '2018-11-12 14:38:47', 12, '201809150101000001');
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (3, 3, 1, '4931048380330003', 'windir', 1, '2018-08-29 14:04:29', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (4, 4, 1, '4931048380330004', 'windir', 1, '2018-08-29 14:04:32', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (11, 7, 1, '4931048380330001', 'windir', 1, '2018-09-04 16:21:50', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (12, 2, 4, '0340981248320004', 'zhensan', 1, '2018-11-12 14:16:50', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (13, 3, 4, '0342977234360004', 'zhensan', 1, '2018-11-12 14:17:10', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (14, 4, 4, '0343342928830004', 'zhensan', 1, '2018-11-12 14:17:13', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (15, 2, 5, '0351883832180005', 'lisi', 1, '2018-11-12 14:18:39', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (16, 3, 5, '0352201672680005', 'lisi', 1, '2018-11-12 14:18:42', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (17, 4, 5, '0352505810180005', 'lisi', 1, '2018-11-12 14:18:45', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (18, 2, 6, '0356114588380006', 'wangwu', 1, '2018-11-12 14:19:21', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (19, 3, 6, '0356382856920006', 'wangwu', 1, '2018-11-12 14:19:24', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (20, 4, 6, '0356656798470006', 'wangwu', 1, '2018-11-12 14:19:27', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (21, 2, 3, '0363644984620003', 'windy', 1, '2018-11-12 14:20:36', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (22, 3, 3, '0363932820300003', 'windy', 1, '2018-11-12 14:20:39', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (23, 4, 3, '0364238275840003', 'windy', 1, '2018-11-12 14:20:42', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (24, 2, 7, '0385034833070007', 'lion', 1, '2018-11-12 14:24:10', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (25, 3, 7, '0385350208650007', 'lion', 1, '2018-11-12 14:24:13', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (26, 4, 7, '0385632733900007', 'lion', 1, '2018-11-12 14:24:16', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (27, 2, 8, '0388779132990008', 'shari', 1, '2018-11-12 14:24:48', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (28, 3, 8, '0388943658810008', 'shari', 1, '2018-11-12 14:24:49', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (29, 4, 8, '0389069398320008', 'shari', 1, '2018-11-12 14:24:51', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (30, 2, 9, '0390753935250009', 'aewen', 1, '2018-11-12 14:25:08', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (31, 3, 9, '0390882954470009', 'aewen', 1, '2018-11-12 14:25:09', 0, null, null, null);
INSERT INTO import.sms_coupon_history (id, coupon_id, member_id, coupon_code, member_nickname, get_type, create_time, use_status, use_time, order_id, order_sn) VALUES (32, 4, 9, '0391025542810009', 'aewen', 1, '2018-11-12 14:25:10', 0, null, null, null);
create table sms_coupon_product_category_relation
(
    id                    bigint auto_increment
        primary key,
    coupon_id             bigint       null,
    product_category_id   bigint       null,
    product_category_name varchar(200) null comment '产品分类名称',
    parent_category_name  varchar(200) null comment '父分类名称'
)
    comment '优惠券和产品分类关系表' charset = utf8;

INSERT INTO import.sms_coupon_product_category_relation (id, coupon_id, product_category_id, product_category_name, parent_category_name) VALUES (4, 19, 30, '手机配件', '手机数码');
create table sms_coupon_product_relation
(
    id           bigint auto_increment
        primary key,
    coupon_id    bigint       null,
    product_id   bigint       null,
    product_name varchar(500) null comment '商品名称',
    product_sn   varchar(200) null comment '商品编码'
)
    comment '优惠券和产品的关系表' charset = utf8;

INSERT INTO import.sms_coupon_product_relation (id, coupon_id, product_id, product_name, product_sn) VALUES (9, 21, 33, '小米（MI）小米电视4A ', '4609652');
create table sms_flash_promotion
(
    id          bigint auto_increment
        primary key,
    title       varchar(200) null,
    start_date  date         null comment '开始日期',
    end_date    date         null comment '结束日期',
    status      int(1)       null comment '上下线状态',
    create_time datetime     null comment '秒杀时间段名称'
)
    comment '限时购表' charset = utf8;

INSERT INTO import.sms_flash_promotion (id, title, start_date, end_date, status, create_time) VALUES (2, '春季家电家具疯狂秒杀1', '2018-11-12', '2018-11-23', 1, '2018-11-16 11:12:13');
INSERT INTO import.sms_flash_promotion (id, title, start_date, end_date, status, create_time) VALUES (3, '手机特卖', '2018-11-03', '2018-11-10', 1, '2018-11-16 11:11:31');
INSERT INTO import.sms_flash_promotion (id, title, start_date, end_date, status, create_time) VALUES (4, '春季家电家具疯狂秒杀3', '2018-11-24', '2018-11-25', 1, '2018-11-16 11:12:19');
INSERT INTO import.sms_flash_promotion (id, title, start_date, end_date, status, create_time) VALUES (5, '春季家电家具疯狂秒杀4', '2018-11-16', '2018-11-16', 1, '2018-11-16 11:12:24');
INSERT INTO import.sms_flash_promotion (id, title, start_date, end_date, status, create_time) VALUES (6, '春季家电家具疯狂秒杀5', '2018-11-16', '2018-11-16', 1, '2018-11-16 11:12:31');
INSERT INTO import.sms_flash_promotion (id, title, start_date, end_date, status, create_time) VALUES (7, '春季家电家具疯狂秒杀6', '2018-11-16', '2018-11-16', 1, '2018-11-16 11:12:35');
INSERT INTO import.sms_flash_promotion (id, title, start_date, end_date, status, create_time) VALUES (8, '春季家电家具疯狂秒杀7', '2018-11-16', '2018-11-16', 0, '2018-11-16 11:12:39');
INSERT INTO import.sms_flash_promotion (id, title, start_date, end_date, status, create_time) VALUES (9, '春季家电家具疯狂秒杀8', '2018-11-16', '2018-11-16', 0, '2018-11-16 11:12:42');
INSERT INTO import.sms_flash_promotion (id, title, start_date, end_date, status, create_time) VALUES (13, '测试', '2018-11-01', '2018-11-30', 0, '2018-11-19 10:34:24');
create table sms_flash_promotion_log
(
    id             int auto_increment
        primary key,
    member_id      int          null,
    product_id     bigint       null,
    member_phone   varchar(64)  null,
    product_name   varchar(100) null,
    subscribe_time datetime     null comment '会员订阅时间',
    send_time      datetime     null
)
    comment '限时购通知记录' charset = utf8;


create table sms_flash_promotion_product_relation
(
    id                         bigint auto_increment comment '编号'
        primary key,
    flash_promotion_id         bigint         null,
    flash_promotion_session_id bigint         null comment '编号',
    product_id                 bigint         null,
    flash_promotion_price      decimal(10, 2) null comment '限时购价格',
    flash_promotion_count      int            null comment '限时购数量',
    flash_promotion_limit      int            null comment '每人限购数量',
    sort                       int            null comment '排序'
)
    comment '商品限时购与商品关系表' charset = utf8;

INSERT INTO import.sms_flash_promotion_product_relation (id, flash_promotion_id, flash_promotion_session_id, product_id, flash_promotion_price, flash_promotion_count, flash_promotion_limit, sort) VALUES (1, 2, 1, 26, 3000.00, 10, 1, 0);
INSERT INTO import.sms_flash_promotion_product_relation (id, flash_promotion_id, flash_promotion_session_id, product_id, flash_promotion_price, flash_promotion_count, flash_promotion_limit, sort) VALUES (2, 2, 1, 27, 2000.00, 10, 1, 20);
INSERT INTO import.sms_flash_promotion_product_relation (id, flash_promotion_id, flash_promotion_session_id, product_id, flash_promotion_price, flash_promotion_count, flash_promotion_limit, sort) VALUES (3, 2, 1, 28, 599.00, 19, 1, 0);
INSERT INTO import.sms_flash_promotion_product_relation (id, flash_promotion_id, flash_promotion_session_id, product_id, flash_promotion_price, flash_promotion_count, flash_promotion_limit, sort) VALUES (4, 2, 1, 29, 4999.00, 10, 1, 100);
INSERT INTO import.sms_flash_promotion_product_relation (id, flash_promotion_id, flash_promotion_session_id, product_id, flash_promotion_price, flash_promotion_count, flash_promotion_limit, sort) VALUES (9, 2, 2, 26, 2999.00, 100, 1, 0);
INSERT INTO import.sms_flash_promotion_product_relation (id, flash_promotion_id, flash_promotion_session_id, product_id, flash_promotion_price, flash_promotion_count, flash_promotion_limit, sort) VALUES (10, 2, 2, 27, null, null, null, null);
INSERT INTO import.sms_flash_promotion_product_relation (id, flash_promotion_id, flash_promotion_session_id, product_id, flash_promotion_price, flash_promotion_count, flash_promotion_limit, sort) VALUES (11, 2, 2, 28, null, null, null, null);
INSERT INTO import.sms_flash_promotion_product_relation (id, flash_promotion_id, flash_promotion_session_id, product_id, flash_promotion_price, flash_promotion_count, flash_promotion_limit, sort) VALUES (12, 2, 2, 29, null, null, null, null);
INSERT INTO import.sms_flash_promotion_product_relation (id, flash_promotion_id, flash_promotion_session_id, product_id, flash_promotion_price, flash_promotion_count, flash_promotion_limit, sort) VALUES (13, 2, 2, 30, null, null, null, null);
INSERT INTO import.sms_flash_promotion_product_relation (id, flash_promotion_id, flash_promotion_session_id, product_id, flash_promotion_price, flash_promotion_count, flash_promotion_limit, sort) VALUES (14, 2, 3, 31, null, null, null, null);
INSERT INTO import.sms_flash_promotion_product_relation (id, flash_promotion_id, flash_promotion_session_id, product_id, flash_promotion_price, flash_promotion_count, flash_promotion_limit, sort) VALUES (15, 2, 3, 32, null, null, null, null);
INSERT INTO import.sms_flash_promotion_product_relation (id, flash_promotion_id, flash_promotion_session_id, product_id, flash_promotion_price, flash_promotion_count, flash_promotion_limit, sort) VALUES (16, 2, 4, 33, null, null, null, null);
INSERT INTO import.sms_flash_promotion_product_relation (id, flash_promotion_id, flash_promotion_session_id, product_id, flash_promotion_price, flash_promotion_count, flash_promotion_limit, sort) VALUES (17, 2, 4, 34, null, null, null, null);
INSERT INTO import.sms_flash_promotion_product_relation (id, flash_promotion_id, flash_promotion_session_id, product_id, flash_promotion_price, flash_promotion_count, flash_promotion_limit, sort) VALUES (18, 2, 5, 36, null, null, null, null);
INSERT INTO import.sms_flash_promotion_product_relation (id, flash_promotion_id, flash_promotion_session_id, product_id, flash_promotion_price, flash_promotion_count, flash_promotion_limit, sort) VALUES (19, 2, 6, 33, null, null, null, null);
INSERT INTO import.sms_flash_promotion_product_relation (id, flash_promotion_id, flash_promotion_session_id, product_id, flash_promotion_price, flash_promotion_count, flash_promotion_limit, sort) VALUES (20, 2, 6, 34, null, null, null, null);
create table sms_flash_promotion_session
(
    id          bigint auto_increment comment '编号'
        primary key,
    name        varchar(200) null comment '场次名称',
    start_time  time         null comment '每日开始时间',
    end_time    time         null comment '每日结束时间',
    status      int(1)       null comment '启用状态：0->不启用；1->启用',
    create_time datetime     null comment '创建时间'
)
    comment '限时购场次表' charset = utf8;

INSERT INTO import.sms_flash_promotion_session (id, name, start_time, end_time, status, create_time) VALUES (1, '8:00', '08:00:29', '09:00:33', 1, '2018-11-16 13:22:17');
INSERT INTO import.sms_flash_promotion_session (id, name, start_time, end_time, status, create_time) VALUES (2, '10:00', '10:00:33', '11:00:33', 1, '2018-11-16 13:22:34');
INSERT INTO import.sms_flash_promotion_session (id, name, start_time, end_time, status, create_time) VALUES (3, '12:00', '12:00:00', '13:00:22', 1, '2018-11-16 13:22:37');
INSERT INTO import.sms_flash_promotion_session (id, name, start_time, end_time, status, create_time) VALUES (4, '14:00', '14:00:00', '15:00:00', 1, '2018-11-16 13:22:41');
INSERT INTO import.sms_flash_promotion_session (id, name, start_time, end_time, status, create_time) VALUES (5, '16:00', '16:00:00', '17:00:00', 1, '2018-11-16 13:22:45');
INSERT INTO import.sms_flash_promotion_session (id, name, start_time, end_time, status, create_time) VALUES (6, '18:00', '18:00:00', '19:00:00', 1, '2018-11-16 13:21:34');
INSERT INTO import.sms_flash_promotion_session (id, name, start_time, end_time, status, create_time) VALUES (7, '20:00', '20:00:33', '21:00:33', 0, '2018-11-16 13:22:55');
create table sms_home_advertise
(
    id          bigint auto_increment
        primary key,
    name        varchar(100)  null,
    type        int(1)        null comment '轮播位置：0->PC首页轮播；1->app首页轮播',
    pic         varchar(500)  null,
    start_time  datetime      null,
    end_time    datetime      null,
    status      int(1)        null comment '上下线状态：0->下线；1->上线',
    click_count int           null comment '点击数',
    order_count int           null comment '下单数',
    url         varchar(500)  null comment '链接地址',
    note        varchar(500)  null comment '备注',
    sort        int default 0 null comment '排序'
)
    comment '首页轮播广告表' charset = utf8;

INSERT INTO import.sms_home_advertise (id, name, type, pic, start_time, end_time, status, click_count, order_count, url, note, sort) VALUES (2, '夏季大热促销', 1, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '2018-11-01 14:01:37', '2018-11-15 14:01:37', 1, 0, 0, null, '夏季大热促销', 0);
INSERT INTO import.sms_home_advertise (id, name, type, pic, start_time, end_time, status, click_count, order_count, url, note, sort) VALUES (3, '夏季大热促销1', 1, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '2018-11-13 14:01:37', '2018-11-13 14:01:37', 0, 0, 0, null, '夏季大热促销1', 0);
INSERT INTO import.sms_home_advertise (id, name, type, pic, start_time, end_time, status, click_count, order_count, url, note, sort) VALUES (4, '夏季大热促销2', 1, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '2018-11-13 14:01:37', '2018-11-13 14:01:37', 1, 0, 0, null, '夏季大热促销2', 0);
INSERT INTO import.sms_home_advertise (id, name, type, pic, start_time, end_time, status, click_count, order_count, url, note, sort) VALUES (9, '电影推荐广告', 1, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/movie_ad.jpg', '2018-11-01 00:00:00', '2018-11-24 00:00:00', 1, 0, 0, 'www.baidu.com', '电影推荐广告', 100);
INSERT INTO import.sms_home_advertise (id, name, type, pic, start_time, end_time, status, click_count, order_count, url, note, sort) VALUES (10, '汽车促销广告', 1, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/car_ad.jpg', '2018-11-13 00:00:00', '2018-11-24 00:00:00', 1, 0, 0, 'xxx', null, 99);
INSERT INTO import.sms_home_advertise (id, name, type, pic, start_time, end_time, status, click_count, order_count, url, note, sort) VALUES (11, '汽车推荐广告', 1, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/car_ad2.jpg', '2018-11-13 00:00:00', '2018-11-30 00:00:00', 1, 0, 0, 'xxx', null, 98);
create table sms_home_brand
(
    id               bigint auto_increment
        primary key,
    brand_id         bigint      null,
    brand_name       varchar(64) null,
    recommend_status int(1)      null,
    sort             int         null
)
    comment '首页推荐品牌表' charset = utf8;

INSERT INTO import.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (1, 1, '万和', 1, 200);
INSERT INTO import.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (2, 2, '三星', 1, 0);
INSERT INTO import.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (6, 6, '小米', 1, 300);
INSERT INTO import.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (8, 5, '方太', 1, 100);
INSERT INTO import.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (31, 49, '七匹狼', 0, 0);
INSERT INTO import.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (32, 50, '海澜之家', 1, 0);
INSERT INTO import.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (33, 51, '苹果', 1, 0);
INSERT INTO import.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (34, 2, '三星', 0, 0);
INSERT INTO import.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (35, 3, '华为', 1, 0);
INSERT INTO import.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (36, 4, '格力', 1, 0);
INSERT INTO import.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (37, 5, '方太', 1, 0);
INSERT INTO import.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (38, 1, '万和', 1, 0);
INSERT INTO import.sms_home_brand (id, brand_id, brand_name, recommend_status, sort) VALUES (39, 21, 'OPPO', 1, 0);
create table sms_home_new_product
(
    id               bigint auto_increment
        primary key,
    product_id       bigint      null,
    product_name     varchar(64) null,
    recommend_status int(1)      null,
    sort             int(1)      null
)
    comment '新鲜好物表' charset = utf8;

INSERT INTO import.sms_home_new_product (id, product_id, product_name, recommend_status, sort) VALUES (2, 27, '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', 1, 200);
INSERT INTO import.sms_home_new_product (id, product_id, product_name, recommend_status, sort) VALUES (8, 26, '华为 HUAWEI P20 ', 0, 0);
INSERT INTO import.sms_home_new_product (id, product_id, product_name, recommend_status, sort) VALUES (9, 27, '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', 1, 0);
INSERT INTO import.sms_home_new_product (id, product_id, product_name, recommend_status, sort) VALUES (10, 28, '小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待', 1, 0);
INSERT INTO import.sms_home_new_product (id, product_id, product_name, recommend_status, sort) VALUES (11, 29, 'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机', 1, 0);
INSERT INTO import.sms_home_new_product (id, product_id, product_name, recommend_status, sort) VALUES (12, 30, 'HLA海澜之家简约动物印花短袖T恤', 1, 0);
create table sms_home_recommend_product
(
    id               bigint auto_increment
        primary key,
    product_id       bigint      null,
    product_name     varchar(64) null,
    recommend_status int(1)      null,
    sort             int(1)      null
)
    comment '人气推荐商品表' charset = utf8;

INSERT INTO import.sms_home_recommend_product (id, product_id, product_name, recommend_status, sort) VALUES (3, 26, '华为 HUAWEI P20 ', 1, 0);
INSERT INTO import.sms_home_recommend_product (id, product_id, product_name, recommend_status, sort) VALUES (4, 27, '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', 1, 0);
INSERT INTO import.sms_home_recommend_product (id, product_id, product_name, recommend_status, sort) VALUES (5, 28, '小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待', 1, 0);
INSERT INTO import.sms_home_recommend_product (id, product_id, product_name, recommend_status, sort) VALUES (6, 29, 'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机', 1, 0);
INSERT INTO import.sms_home_recommend_product (id, product_id, product_name, recommend_status, sort) VALUES (7, 30, 'HLA海澜之家简约动物印花短袖T恤', 1, 100);
create table sms_home_recommend_subject
(
    id               bigint auto_increment
        primary key,
    subject_id       bigint      null,
    subject_name     varchar(64) null,
    recommend_status int(1)      null,
    sort             int         null
)
    comment '首页推荐专题表' charset = utf8;

INSERT INTO import.sms_home_recommend_subject (id, subject_id, subject_name, recommend_status, sort) VALUES (14, 1, 'polo衬衫的也时尚', 1, 0);
INSERT INTO import.sms_home_recommend_subject (id, subject_id, subject_name, recommend_status, sort) VALUES (15, 2, '大牌手机低价秒', 1, 0);
INSERT INTO import.sms_home_recommend_subject (id, subject_id, subject_name, recommend_status, sort) VALUES (16, 3, '晓龙845新品上市', 1, 0);
INSERT INTO import.sms_home_recommend_subject (id, subject_id, subject_name, recommend_status, sort) VALUES (17, 4, '夏天应该穿什么', 1, 0);
INSERT INTO import.sms_home_recommend_subject (id, subject_id, subject_name, recommend_status, sort) VALUES (18, 5, '夏季精选', 1, 100);
INSERT INTO import.sms_home_recommend_subject (id, subject_id, subject_name, recommend_status, sort) VALUES (19, 6, '品牌手机降价', 1, 0);
create table ums_admin
(
    id          bigint auto_increment
        primary key,
    username    varchar(64)      null,
    password    varchar(64)      null,
    icon        varchar(500)     null comment '头像',
    email       varchar(100)     null comment '邮箱',
    nick_name   varchar(200)     null comment '昵称',
    note        varchar(500)     null comment '备注信息',
    create_time datetime         null comment '创建时间',
    login_time  datetime         null comment '最后登录时间',
    status      int(1) default 1 null comment '帐号启用状态：0->禁用；1->启用'
)
    comment '后台用户表' charset = utf8;

INSERT INTO import.ums_admin (id, username, password, icon, email, nick_name, note, create_time, login_time, status) VALUES (1, 'test', '$2a$10$1DjT.fK3nOzDNSpKEfiugOiee1zn.UHuExjfOaacJZgRcLk0rzQ1O', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg', 'test@qq.com', '测试账号', null, '2018-09-29 13:55:30', '2018-09-29 13:55:39', 1);
INSERT INTO import.ums_admin (id, username, password, icon, email, nick_name, note, create_time, login_time, status) VALUES (3, 'admin', '$2a$10$.E1FokumK5GIXWgKlg.Hc.i/0/2.qdAwYFL1zc5QHdyzpXOr38RZO', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg', 'admin@163.com', '系统管理员', '系统管理员', '2018-10-08 13:32:47', '2019-04-20 12:45:16', 1);
INSERT INTO import.ums_admin (id, username, password, icon, email, nick_name, note, create_time, login_time, status) VALUES (4, 'macro', '$2a$10$Bx4jZPR7GhEpIQfefDQtVeS58GfT5n6mxs/b4nLLK65eMFa16topa', 'string', 'macro@qq.com', 'macro', 'macro专用', '2019-10-06 15:53:51', '2020-02-03 14:55:55', 1);
INSERT INTO import.ums_admin (id, username, password, icon, email, nick_name, note, create_time, login_time, status) VALUES (6, 'productAdmin', '$2a$10$6/.J.p.6Bhn7ic4GfoB5D.pGd7xSiD1a9M6ht6yO0fxzlKJPjRAGm', null, 'product@qq.com', '商品管理员', '只有商品权限', '2020-02-07 16:15:08', null, 1);
INSERT INTO import.ums_admin (id, username, password, icon, email, nick_name, note, create_time, login_time, status) VALUES (7, 'orderAdmin', '$2a$10$UqEhA9UZXjHHA3B.L9wNG.6aerrBjC6WHTtbv1FdvYPUI.7lkL6E.', null, 'order@qq.com', '订单管理员', '只有订单管理权限', '2020-02-07 16:15:50', null, 1);
create table ums_admin_login_log
(
    id          bigint auto_increment
        primary key,
    admin_id    bigint       null,
    create_time datetime     null,
    ip          varchar(64)  null,
    address     varchar(100) null,
    user_agent  varchar(100) null comment '浏览器登录类型'
)
    comment '后台用户登录日志表' charset = utf8;

INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (1, 3, '2018-12-23 14:27:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (2, 3, '2019-04-07 16:04:39', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (3, 3, '2019-04-08 21:47:52', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (4, 3, '2019-04-08 21:48:18', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (5, 3, '2019-04-18 22:18:40', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (6, 3, '2019-04-20 12:45:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (7, 3, '2019-05-19 14:52:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (8, 3, '2019-05-25 15:00:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (9, 3, '2019-06-19 20:11:42', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (10, 3, '2019-06-30 10:33:48', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (11, 3, '2019-06-30 10:34:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (12, 3, '2019-06-30 10:35:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (13, 3, '2019-07-27 17:11:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (14, 3, '2019-07-27 17:13:18', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (15, 3, '2019-07-27 17:15:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (16, 3, '2019-07-27 17:17:11', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (17, 3, '2019-07-27 17:18:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (18, 3, '2019-07-27 21:21:52', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (19, 3, '2019-07-27 21:34:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (20, 3, '2019-07-27 21:35:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (21, 3, '2019-07-27 21:35:48', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (22, 3, '2019-07-27 21:40:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (23, 3, '2019-08-18 16:00:38', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (24, 3, '2019-08-18 16:01:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (25, 3, '2019-08-18 16:47:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (26, 3, '2019-10-06 15:54:23', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (27, 3, '2019-10-06 16:03:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (28, 3, '2019-10-06 16:04:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (29, 3, '2019-10-06 16:06:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (30, 3, '2019-10-06 16:14:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (31, 1, '2019-10-06 16:15:09', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (32, 1, '2019-10-06 16:16:14', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (33, 3, '2019-10-06 16:16:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (34, 3, '2019-10-06 16:16:42', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (35, 3, '2019-10-07 15:20:48', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (36, 3, '2019-10-07 15:40:07', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (37, 3, '2019-10-07 16:34:15', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (38, 3, '2019-10-09 21:19:08', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (39, 4, '2019-10-09 21:30:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (40, 4, '2019-10-09 21:31:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (41, 4, '2019-10-09 21:32:39', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (42, 4, '2019-10-09 21:33:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (43, 4, '2019-10-09 21:33:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (44, 3, '2019-10-20 16:02:53', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (45, 3, '2019-10-23 21:20:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (46, 3, '2019-10-27 21:41:45', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (47, 3, '2019-11-09 16:44:57', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (48, 3, '2019-11-09 16:46:56', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (49, 3, '2019-11-09 16:49:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (50, 3, '2019-11-23 14:17:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (51, 6, '2019-11-23 14:52:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (52, 3, '2019-11-23 15:07:24', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (53, 3, '2019-11-30 21:25:30', '192.168.3.185', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (54, 3, '2019-11-30 21:27:54', '192.168.3.185', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (55, 3, '2019-12-28 15:23:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (56, 3, '2020-01-01 15:21:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (57, 3, '2020-01-04 16:00:54', '192.168.3.185', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (58, 3, '2020-02-01 15:05:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (59, 3, '2020-02-01 15:36:05', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (60, 3, '2020-02-01 15:36:36', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (61, 3, '2020-02-01 15:37:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (62, 3, '2020-02-01 15:37:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (63, 3, '2020-02-01 15:38:20', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (64, 3, '2020-02-01 15:38:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (65, 3, '2020-02-01 15:39:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (66, 3, '2020-02-01 15:41:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (67, 3, '2020-02-01 15:43:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (68, 3, '2020-02-01 15:44:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (69, 3, '2020-02-01 15:45:10', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (70, 3, '2020-02-01 15:46:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (71, 3, '2020-02-01 15:48:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (72, 3, '2020-02-01 16:00:07', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (73, 3, '2020-02-01 16:07:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (74, 3, '2020-02-01 16:08:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (75, 3, '2020-02-02 15:28:13', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (76, 3, '2020-02-02 15:44:37', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (77, 3, '2020-02-02 15:45:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (78, 3, '2020-02-02 15:52:32', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (79, 3, '2020-02-02 15:53:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (80, 3, '2020-02-02 15:54:36', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (81, 3, '2020-02-02 16:01:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (82, 3, '2020-02-02 16:05:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (83, 3, '2020-02-02 16:06:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (84, 3, '2020-02-02 16:17:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (85, 3, '2020-02-02 16:18:45', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (86, 3, '2020-02-02 16:19:05', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (87, 3, '2020-02-02 16:19:23', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (88, 3, '2020-02-02 16:22:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (89, 3, '2020-02-02 16:23:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (90, 3, '2020-02-02 16:23:48', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (91, 3, '2020-02-02 16:24:38', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (92, 3, '2020-02-02 16:25:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (93, 3, '2020-02-02 16:26:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (94, 3, '2020-02-02 16:26:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (95, 3, '2020-02-02 16:27:08', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (96, 3, '2020-02-02 16:31:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (97, 3, '2020-02-02 16:31:08', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (98, 3, '2020-02-02 16:31:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (99, 3, '2020-02-02 16:31:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (100, 3, '2020-02-02 16:33:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (101, 3, '2020-02-02 16:33:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (102, 3, '2020-02-02 16:34:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (103, 3, '2020-02-02 16:38:42', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (104, 3, '2020-02-02 16:39:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (105, 3, '2020-02-02 16:42:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (106, 3, '2020-02-02 16:46:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (107, 3, '2020-02-02 16:50:23', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (108, 3, '2020-02-02 16:51:11', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (109, 3, '2020-02-02 16:51:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (110, 3, '2020-02-02 16:52:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (111, 3, '2020-02-02 17:01:05', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (112, 3, '2020-02-03 10:43:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (113, 3, '2020-02-03 10:45:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (114, 3, '2020-02-03 10:46:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (115, 3, '2020-02-03 10:54:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (116, 3, '2020-02-03 14:24:47', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (117, 3, '2020-02-03 14:25:38', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (118, 5, '2020-02-03 15:22:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (119, 5, '2020-02-03 15:23:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (120, 5, '2020-02-03 15:24:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (121, 3, '2020-02-03 15:24:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (122, 5, '2020-02-03 15:27:18', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (123, 3, '2020-02-03 15:27:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (124, 3, '2020-02-03 15:29:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (125, 5, '2020-02-03 15:33:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (126, 3, '2020-02-03 15:33:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (127, 1, '2020-02-03 15:34:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (128, 3, '2020-02-03 15:34:47', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (129, 3, '2020-02-04 14:14:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (130, 3, '2020-02-05 10:33:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (131, 3, '2020-02-05 10:36:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (132, 3, '2020-02-05 16:34:37', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (133, 4, '2020-02-05 16:58:37', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (134, 3, '2020-02-05 16:59:03', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (135, 3, '2020-02-06 10:25:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (136, 3, '2020-02-07 14:34:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (137, 3, '2020-02-07 14:36:20', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (138, 1, '2020-02-07 14:43:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (139, 3, '2020-02-07 15:18:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (140, 3, '2020-02-07 15:20:07', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (141, 3, '2020-02-07 15:22:20', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (142, 3, '2020-02-07 15:22:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (143, 3, '2020-02-07 15:55:11', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (144, 3, '2020-02-07 15:56:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (145, 3, '2020-02-07 15:58:49', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (146, 6, '2020-02-07 16:16:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (147, 7, '2020-02-07 16:16:37', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (148, 3, '2020-02-07 16:18:39', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (149, 7, '2020-02-07 16:20:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (150, 3, '2020-02-07 16:20:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (151, 3, '2020-02-07 16:32:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (152, 3, '2020-02-07 19:32:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (153, 3, '2020-02-07 19:32:48', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (154, 3, '2020-02-07 19:33:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (155, 3, '2020-02-07 19:33:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (156, 3, '2020-02-07 19:33:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (157, 3, '2020-02-07 19:35:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (158, 3, '2020-02-07 19:37:10', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (159, 3, '2020-02-07 19:37:14', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (160, 3, '2020-02-07 19:37:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (161, 3, '2020-02-07 19:45:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (162, 3, '2020-02-07 19:47:45', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (163, 3, '2020-02-07 20:02:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (164, 6, '2020-02-07 20:10:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (165, 6, '2020-02-07 20:11:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (166, 6, '2020-02-07 20:13:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (167, 6, '2020-02-07 20:17:14', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (168, 3, '2020-02-07 20:17:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (169, 6, '2020-02-07 20:18:13', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (170, 3, '2020-02-10 10:28:14', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (171, 3, '2020-02-10 10:45:15', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (172, 3, '2020-02-10 10:57:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (173, 3, '2020-02-10 10:59:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (174, 3, '2020-02-10 11:04:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (175, 3, '2020-02-10 11:05:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (176, 3, '2020-02-10 11:06:45', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (177, 3, '2020-02-10 11:07:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (178, 3, '2020-02-10 11:08:13', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (179, 3, '2020-02-10 11:10:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (180, 6, '2020-02-10 14:25:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (181, 6, '2020-02-10 14:29:14', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (182, 3, '2020-02-10 16:09:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (183, 3, '2020-02-20 14:39:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (184, 8, '2020-02-20 17:14:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (185, 8, '2020-02-20 17:17:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (186, 8, '2020-02-20 17:17:42', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (187, 8, '2020-02-21 10:26:56', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (188, 8, '2020-02-21 10:28:54', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (189, 8, '2020-02-21 10:32:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (190, 8, '2020-02-21 10:33:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (191, 8, '2020-02-21 10:35:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (192, 8, '2020-02-21 10:36:49', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (193, 3, '2020-02-21 11:10:11', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (194, 3, '2020-02-25 16:11:13', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (195, 3, '2020-02-25 16:46:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (196, 3, '2020-04-03 01:55:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (197, 3, '2020-04-03 04:20:48', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (198, 3, '2020-04-03 04:21:24', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (199, 1, '2020-04-03 04:27:47', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (200, 1, '2020-04-03 05:02:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (201, 1, '2020-04-03 05:17:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (202, 1, '2020-04-03 23:20:13', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (203, 1, '2020-04-03 23:25:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO import.ums_admin_login_log (id, admin_id, create_time, ip, address, user_agent) VALUES (204, 3, '2020-04-04 22:05:56', '0:0:0:0:0:0:0:1', null, null);
create table ums_admin_permission_relation
(
    id            bigint auto_increment
        primary key,
    admin_id      bigint null,
    permission_id bigint null,
    type          int(1) null
)
    comment '后台用户和权限关系表(除角色中定义的权限以外的加减权限)' charset = utf8;


create table ums_admin_role_relation
(
    id       bigint auto_increment
        primary key,
    admin_id bigint null,
    role_id  bigint null
)
    comment '后台用户和角色关系表' charset = utf8;

INSERT INTO import.ums_admin_role_relation (id, admin_id, role_id) VALUES (26, 3, 5);
INSERT INTO import.ums_admin_role_relation (id, admin_id, role_id) VALUES (27, 6, 1);
INSERT INTO import.ums_admin_role_relation (id, admin_id, role_id) VALUES (28, 7, 2);
INSERT INTO import.ums_admin_role_relation (id, admin_id, role_id) VALUES (29, 1, 5);
INSERT INTO import.ums_admin_role_relation (id, admin_id, role_id) VALUES (30, 4, 5);
create table ums_growth_change_history
(
    id           bigint auto_increment
        primary key,
    member_id    bigint       null,
    create_time  datetime     null,
    change_type  int(1)       null comment '改变类型：0->增加；1->减少',
    change_count int          null comment '积分改变数量',
    operate_man  varchar(100) null comment '操作人员',
    operate_note varchar(200) null comment '操作备注',
    source_type  int(1)       null comment '积分来源：0->购物；1->管理员修改'
)
    comment '成长值变化历史记录表' charset = utf8;

INSERT INTO import.ums_growth_change_history (id, member_id, create_time, change_type, change_count, operate_man, operate_note, source_type) VALUES (1, 1, '2018-08-29 17:16:35', 0, 1000, 'test', '测试使用', 1);
create table ums_integration_change_history
(
    id           bigint auto_increment
        primary key,
    member_id    bigint       null,
    create_time  datetime     null,
    change_type  int(1)       null comment '改变类型：0->增加；1->减少',
    change_count int          null comment '积分改变数量',
    operate_man  varchar(100) null comment '操作人员',
    operate_note varchar(200) null comment '操作备注',
    source_type  int(1)       null comment '积分来源：0->购物；1->管理员修改'
)
    comment '积分变化历史记录表' charset = utf8;


create table ums_integration_consume_setting
(
    id                    bigint auto_increment
        primary key,
    deduction_per_amount  int    null comment '每一元需要抵扣的积分数量',
    max_percent_per_order int    null comment '每笔订单最高抵用百分比',
    use_unit              int    null comment '每次使用积分最小单位100',
    coupon_status         int(1) null comment '是否可以和优惠券同用；0->不可以；1->可以'
)
    comment '积分消费设置' charset = utf8;

INSERT INTO import.ums_integration_consume_setting (id, deduction_per_amount, max_percent_per_order, use_unit, coupon_status) VALUES (1, 100, 50, 100, 1);
create table ums_member
(
    id                     bigint auto_increment
        primary key,
    member_level_id        bigint       null,
    username               varchar(64)  null comment '用户名',
    password               varchar(64)  null comment '密码',
    nickname               varchar(64)  null comment '昵称',
    phone                  varchar(64)  null comment '手机号码',
    status                 int(1)       null comment '帐号启用状态:0->禁用；1->启用',
    create_time            datetime     null comment '注册时间',
    icon                   varchar(500) null comment '头像',
    gender                 int(1)       null comment '性别：0->未知；1->男；2->女',
    birthday               date         null comment '生日',
    city                   varchar(64)  null comment '所做城市',
    job                    varchar(100) null comment '职业',
    personalized_signature varchar(200) null comment '个性签名',
    source_type            int(1)       null comment '用户来源',
    integration            int          null comment '积分',
    growth                 int          null comment '成长值',
    luckey_count           int          null comment '剩余抽奖次数',
    history_integration    int          null comment '历史积分数量',
    constraint idx_phone
        unique (phone),
    constraint idx_username
        unique (username)
)
    comment '会员表' charset = utf8;

INSERT INTO import.ums_member (id, member_level_id, username, password, nickname, phone, status, create_time, icon, gender, birthday, city, job, personalized_signature, source_type, integration, growth, luckey_count, history_integration) VALUES (1, 4, 'test', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'windir', '18061581849', 1, '2018-08-02 10:35:44', null, 1, '2009-06-01', '上海', '学生', 'test', null, 5000, null, null, null);
INSERT INTO import.ums_member (id, member_level_id, username, password, nickname, phone, status, create_time, icon, gender, birthday, city, job, personalized_signature, source_type, integration, growth, luckey_count, history_integration) VALUES (3, 4, 'windy', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'windy', '18061581848', 1, '2018-08-03 16:46:38', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO import.ums_member (id, member_level_id, username, password, nickname, phone, status, create_time, icon, gender, birthday, city, job, personalized_signature, source_type, integration, growth, luckey_count, history_integration) VALUES (4, 4, 'zhengsan', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'zhengsan', '18061581847', 1, '2018-11-12 14:12:04', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO import.ums_member (id, member_level_id, username, password, nickname, phone, status, create_time, icon, gender, birthday, city, job, personalized_signature, source_type, integration, growth, luckey_count, history_integration) VALUES (5, 4, 'lisi', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'lisi', '18061581841', 1, '2018-11-12 14:12:38', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO import.ums_member (id, member_level_id, username, password, nickname, phone, status, create_time, icon, gender, birthday, city, job, personalized_signature, source_type, integration, growth, luckey_count, history_integration) VALUES (6, 4, 'wangwu', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'wangwu', '18061581842', 1, '2018-11-12 14:13:09', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO import.ums_member (id, member_level_id, username, password, nickname, phone, status, create_time, icon, gender, birthday, city, job, personalized_signature, source_type, integration, growth, luckey_count, history_integration) VALUES (7, 4, 'lion', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'lion', '18061581845', 1, '2018-11-12 14:21:39', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO import.ums_member (id, member_level_id, username, password, nickname, phone, status, create_time, icon, gender, birthday, city, job, personalized_signature, source_type, integration, growth, luckey_count, history_integration) VALUES (8, 4, 'shari', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'shari', '18061581844', 1, '2018-11-12 14:22:00', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO import.ums_member (id, member_level_id, username, password, nickname, phone, status, create_time, icon, gender, birthday, city, job, personalized_signature, source_type, integration, growth, luckey_count, history_integration) VALUES (9, 4, 'aewen', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'aewen', '18061581843', 1, '2018-11-12 14:22:55', null, null, null, null, null, null, null, null, null, null, null);
create table ums_member_level
(
    id                      bigint auto_increment
        primary key,
    name                    varchar(100)   null,
    growth_point            int            null,
    default_status          int(1)         null comment '是否为默认等级：0->不是；1->是',
    free_freight_point      decimal(10, 2) null comment '免运费标准',
    comment_growth_point    int            null comment '每次评价获取的成长值',
    priviledge_free_freight int(1)         null comment '是否有免邮特权',
    priviledge_sign_in      int(1)         null comment '是否有签到特权',
    priviledge_comment      int(1)         null comment '是否有评论获奖励特权',
    priviledge_promotion    int(1)         null comment '是否有专享活动特权',
    priviledge_member_price int(1)         null comment '是否有会员价格特权',
    priviledge_birthday     int(1)         null comment '是否有生日特权',
    note                    varchar(200)   null
)
    comment '会员等级表' charset = utf8;

INSERT INTO import.ums_member_level (id, name, growth_point, default_status, free_freight_point, comment_growth_point, priviledge_free_freight, priviledge_sign_in, priviledge_comment, priviledge_promotion, priviledge_member_price, priviledge_birthday, note) VALUES (1, '黄金会员', 1000, 0, 199.00, 5, 1, 1, 1, 1, 1, 1, null);
INSERT INTO import.ums_member_level (id, name, growth_point, default_status, free_freight_point, comment_growth_point, priviledge_free_freight, priviledge_sign_in, priviledge_comment, priviledge_promotion, priviledge_member_price, priviledge_birthday, note) VALUES (2, '白金会员', 5000, 0, 99.00, 10, 1, 1, 1, 1, 1, 1, null);
INSERT INTO import.ums_member_level (id, name, growth_point, default_status, free_freight_point, comment_growth_point, priviledge_free_freight, priviledge_sign_in, priviledge_comment, priviledge_promotion, priviledge_member_price, priviledge_birthday, note) VALUES (3, '钻石会员', 15000, 0, 69.00, 15, 1, 1, 1, 1, 1, 1, null);
INSERT INTO import.ums_member_level (id, name, growth_point, default_status, free_freight_point, comment_growth_point, priviledge_free_freight, priviledge_sign_in, priviledge_comment, priviledge_promotion, priviledge_member_price, priviledge_birthday, note) VALUES (4, '普通会员', 1, 1, 199.00, 20, 1, 1, 1, 1, 0, 0, null);
create table ums_member_login_log
(
    id          bigint auto_increment
        primary key,
    member_id   bigint      null,
    create_time datetime    null,
    ip          varchar(64) null,
    city        varchar(64) null,
    login_type  int(1)      null comment '登录类型：0->PC；1->android;2->ios;3->小程序',
    province    varchar(64) null
)
    comment '会员登录记录' charset = utf8;


create table ums_member_member_tag_relation
(
    id        bigint auto_increment
        primary key,
    member_id bigint null,
    tag_id    bigint null
)
    comment '用户和标签关系表' charset = utf8;


create table ums_member_product_category_relation
(
    id                  bigint auto_increment
        primary key,
    member_id           bigint null,
    product_category_id bigint null
)
    comment '会员与产品分类关系表（用户喜欢的分类）' charset = utf8;


create table ums_member_receive_address
(
    id             bigint auto_increment
        primary key,
    member_id      bigint       null,
    name           varchar(100) null comment '收货人名称',
    phone_number   varchar(64)  null,
    default_status int(1)       null comment '是否为默认',
    post_code      varchar(100) null comment '邮政编码',
    province       varchar(100) null comment '省份/直辖市',
    city           varchar(100) null comment '城市',
    region         varchar(100) null comment '区',
    detail_address varchar(128) null comment '详细地址(街道)'
)
    comment '会员收货地址表' charset = utf8;

INSERT INTO import.ums_member_receive_address (id, member_id, name, phone_number, default_status, post_code, province, city, region, detail_address) VALUES (1, 1, '大梨', '18033441849', 0, '518000', '广东省', '深圳市', '南山区', '科兴科学园');
INSERT INTO import.ums_member_receive_address (id, member_id, name, phone_number, default_status, post_code, province, city, region, detail_address) VALUES (3, 1, '大梨', '18033441849', 0, '518000', '广东省', '深圳市', '福田区', '清水河街道');
INSERT INTO import.ums_member_receive_address (id, member_id, name, phone_number, default_status, post_code, province, city, region, detail_address) VALUES (4, 1, '大梨', '18033441849', 1, '518000', '广东省', '深圳市', '福田区', '东晓街道');
create table ums_member_rule_setting
(
    id                  bigint auto_increment
        primary key,
    continue_sign_day   int            null comment '连续签到天数',
    continue_sign_point int            null comment '连续签到赠送数量',
    consume_per_point   decimal(10, 2) null comment '每消费多少元获取1个点',
    low_order_amount    decimal(10, 2) null comment '最低获取点数的订单金额',
    max_point_per_order int            null comment '每笔订单最高获取点数',
    type                int(1)         null comment '类型：0->积分规则；1->成长值规则'
)
    comment '会员积分成长规则表' charset = utf8;


create table ums_member_statistics_info
(
    id                    bigint auto_increment
        primary key,
    member_id             bigint         null,
    consume_amount        decimal(10, 2) null comment '累计消费金额',
    order_count           int            null comment '订单数量',
    coupon_count          int            null comment '优惠券数量',
    comment_count         int            null comment '评价数',
    return_order_count    int            null comment '退货数量',
    login_count           int            null comment '登录次数',
    attend_count          int            null comment '关注数量',
    fans_count            int            null comment '粉丝数量',
    collect_product_count int            null,
    collect_subject_count int            null,
    collect_topic_count   int            null,
    collect_comment_count int            null,
    invite_friend_count   int            null,
    recent_order_time     datetime       null comment '最后一次下订单时间'
)
    comment '会员统计信息' charset = utf8;


create table ums_member_tag
(
    id                  bigint auto_increment
        primary key,
    name                varchar(100)   null,
    finish_order_count  int            null comment '自动打标签完成订单数量',
    finish_order_amount decimal(10, 2) null comment '自动打标签完成订单金额'
)
    comment '用户标签表' charset = utf8;


create table ums_member_task
(
    id           bigint auto_increment
        primary key,
    name         varchar(100) null,
    growth       int          null comment '赠送成长值',
    intergration int          null comment '赠送积分',
    type         int(1)       null comment '任务类型：0->新手任务；1->日常任务'
)
    comment '会员任务表' charset = utf8;


create table ums_menu
(
    id          bigint auto_increment
        primary key,
    parent_id   bigint           null comment '父级ID',
    create_time datetime         null comment '创建时间',
    title       varchar(100)     null comment '菜单名称',
    level       int(4)           null comment '菜单级数',
    sort        int(4)           null comment '菜单排序',
    name        varchar(100)     null comment '前端名称',
    icon        varchar(200)     null comment '前端图标',
    hidden      int(1)           null comment '前端隐藏',
    type        int(1) default 1 null comment '0为用户,1为管理员'
)
    comment '后台菜单表' charset = utf8;

INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (1, 0, '2020-02-02 14:50:36', '数据', 0, 0, 'importData', 'product', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (2, 1, '2020-02-02 14:51:50', '商品列表', 1, 0, 'product', 'product-list', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (3, 1, '2020-02-02 14:52:44', '添加商品', 1, 0, 'addProduct', 'product-add', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (4, 1, '2020-02-02 14:53:51', '商品分类', 1, 0, 'productCate', 'product-cate', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (5, 1, '2020-02-02 14:54:51', '商品类型', 1, 0, 'productAttr', 'product-attr', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (6, 1, '2020-02-02 14:56:29', '品牌管理', 1, 0, 'brand', 'product-brand', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (7, 0, '2020-02-02 16:54:07', '订单', 0, 0, 'oms', 'order', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (8, 7, '2020-02-02 16:55:18', '订单列表', 1, 0, 'order', 'product-list', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (9, 7, '2020-02-02 16:56:46', '订单设置', 1, 0, 'orderSetting', 'order-setting', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (10, 7, '2020-02-02 16:57:39', '退货申请处理', 1, 0, 'returnApply', 'order-return', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (11, 7, '2020-02-02 16:59:40', '退货原因设置', 1, 0, 'returnReason', 'order-return-reason', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (12, 0, '2020-02-04 16:18:00', '营销', 0, 0, 'sms', 'sms', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (13, 12, '2020-02-04 16:19:22', '秒杀活动列表', 1, 0, 'flash', 'sms-flash', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (14, 12, '2020-02-04 16:20:16', '优惠券列表', 1, 0, 'coupon', 'sms-coupon', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (16, 12, '2020-02-07 16:22:38', '品牌推荐', 1, 0, 'homeBrand', 'product-brand', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (17, 12, '2020-02-07 16:23:14', '新品推荐', 1, 0, 'homeNew', 'sms-new', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (18, 12, '2020-02-07 16:26:38', '人气推荐', 1, 0, 'homeHot', 'sms-hot', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (19, 12, '2020-02-07 16:28:16', '专题推荐', 1, 0, 'homeSubject', 'sms-subject', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (20, 12, '2020-02-07 16:28:42', '广告列表', 1, 0, 'homeAdvertise', 'sms-ad', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (21, 0, '2020-02-07 16:29:13', '权限', 0, 0, 'ums', 'ums', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (22, 21, '2020-02-07 16:29:51', '用户列表', 1, 0, 'admin', 'ums-admin', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (23, 21, '2020-02-07 16:30:13', '角色列表', 1, 0, 'role', 'ums-role', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (24, 21, '2020-02-07 16:30:53', '菜单列表', 1, 0, 'menu', 'ums-menu', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (25, 21, '2020-02-07 16:31:13', '资源列表', 1, 0, 'resource', 'ums-resource', 0, 1);
INSERT INTO import.ums_menu (id, parent_id, create_time, title, level, sort, name, icon, hidden, type) VALUES (27, 26, '2020-04-03 23:25:04', '展示', 1, 0, 'listAll', 'ums', 0, 1);
create table ums_permission
(
    id          bigint auto_increment
        primary key,
    pid         bigint       null comment '父级权限id',
    name        varchar(100) null comment '名称',
    value       varchar(200) null comment '权限值',
    icon        varchar(500) null comment '图标',
    type        int(1)       null comment '权限类型：0->目录；1->菜单；2->按钮（接口绑定权限）',
    uri         varchar(200) null comment '前端资源路径',
    status      int(1)       null comment '启用状态；0->禁用；1->启用',
    create_time datetime     null comment '创建时间',
    sort        int          null comment '排序'
)
    comment '后台用户权限表' charset = utf8;

INSERT INTO import.ums_permission (id, pid, name, value, icon, type, uri, status, create_time, sort) VALUES (1, 0, '商品', null, null, 0, null, 1, '2018-09-29 16:15:14', 0);
INSERT INTO import.ums_permission (id, pid, name, value, icon, type, uri, status, create_time, sort) VALUES (2, 1, '商品列表', 'pms:product:read', null, 1, '/pms/product/index', 1, '2018-09-29 16:17:01', 0);
INSERT INTO import.ums_permission (id, pid, name, value, icon, type, uri, status, create_time, sort) VALUES (3, 1, '添加商品', 'pms:product:create', null, 1, '/pms/product/add', 1, '2018-09-29 16:18:51', 0);
INSERT INTO import.ums_permission (id, pid, name, value, icon, type, uri, status, create_time, sort) VALUES (4, 1, '商品分类', 'pms:productCategory:read', null, 1, '/pms/productCate/index', 1, '2018-09-29 16:23:07', 0);
INSERT INTO import.ums_permission (id, pid, name, value, icon, type, uri, status, create_time, sort) VALUES (5, 1, '商品类型', 'pms:productAttribute:read', null, 1, '/pms/productAttr/index', 1, '2018-09-29 16:24:43', 0);
INSERT INTO import.ums_permission (id, pid, name, value, icon, type, uri, status, create_time, sort) VALUES (6, 1, '品牌管理', 'pms:brand:read', null, 1, '/pms/brand/index', 1, '2018-09-29 16:25:45', 0);
INSERT INTO import.ums_permission (id, pid, name, value, icon, type, uri, status, create_time, sort) VALUES (7, 2, '编辑商品', 'pms:product:update', null, 2, '/pms/product/updateProduct', 1, '2018-09-29 16:34:23', 0);
INSERT INTO import.ums_permission (id, pid, name, value, icon, type, uri, status, create_time, sort) VALUES (8, 2, '删除商品', 'pms:product:delete', null, 2, '/pms/product/delete', 1, '2018-09-29 16:38:33', 0);
INSERT INTO import.ums_permission (id, pid, name, value, icon, type, uri, status, create_time, sort) VALUES (9, 4, '添加商品分类', 'pms:productCategory:create', null, 2, '/pms/productCate/create', 1, '2018-09-29 16:43:23', 0);
INSERT INTO import.ums_permission (id, pid, name, value, icon, type, uri, status, create_time, sort) VALUES (10, 4, '修改商品分类', 'pms:productCategory:update', null, 2, '/pms/productCate/update', 1, '2018-09-29 16:43:55', 0);
INSERT INTO import.ums_permission (id, pid, name, value, icon, type, uri, status, create_time, sort) VALUES (11, 4, '删除商品分类', 'pms:productCategory:delete', null, 2, '/pms/productAttr/delete', 1, '2018-09-29 16:44:38', 0);
INSERT INTO import.ums_permission (id, pid, name, value, icon, type, uri, status, create_time, sort) VALUES (12, 5, '添加商品类型', 'pms:productAttribute:create', null, 2, '/pms/productAttr/create', 1, '2018-09-29 16:45:25', 0);
INSERT INTO import.ums_permission (id, pid, name, value, icon, type, uri, status, create_time, sort) VALUES (13, 5, '修改商品类型', 'pms:productAttribute:update', null, 2, '/pms/productAttr/update', 1, '2018-09-29 16:48:08', 0);
INSERT INTO import.ums_permission (id, pid, name, value, icon, type, uri, status, create_time, sort) VALUES (14, 5, '删除商品类型', 'pms:productAttribute:delete', null, 2, '/pms/productAttr/delete', 1, '2018-09-29 16:48:44', 0);
INSERT INTO import.ums_permission (id, pid, name, value, icon, type, uri, status, create_time, sort) VALUES (15, 6, '添加品牌', 'pms:brand:create', null, 2, '/pms/brand/add', 1, '2018-09-29 16:49:34', 0);
INSERT INTO import.ums_permission (id, pid, name, value, icon, type, uri, status, create_time, sort) VALUES (16, 6, '修改品牌', 'pms:brand:update', null, 2, '/pms/brand/update', 1, '2018-09-29 16:50:55', 0);
INSERT INTO import.ums_permission (id, pid, name, value, icon, type, uri, status, create_time, sort) VALUES (17, 6, '删除品牌', 'pms:brand:delete', null, 2, '/pms/brand/delete', 1, '2018-09-29 16:50:59', 0);
INSERT INTO import.ums_permission (id, pid, name, value, icon, type, uri, status, create_time, sort) VALUES (18, 0, '首页', null, null, 0, null, 1, '2018-09-29 16:51:57', 0);
create table ums_resource
(
    id          bigint auto_increment
        primary key,
    create_time datetime     null comment '创建时间',
    name        varchar(200) null comment '资源名称',
    url         varchar(200) null comment '资源URL',
    description varchar(500) null comment '描述',
    category_id bigint       null comment '资源分类ID'
)
    comment '后台资源表' charset = utf8;

INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (1, '2020-02-04 17:04:55', '商品品牌管理', '/brand/**', null, 1);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (2, '2020-02-04 17:05:35', '商品属性分类管理', '/productAttribute/**', null, 1);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (3, '2020-02-04 17:06:13', '商品属性管理', '/productAttribute/**', null, 1);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (4, '2020-02-04 17:07:15', '商品分类管理', '/productCategory/**', null, 1);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (5, '2020-02-04 17:09:16', '商品管理', '/product/**', null, 1);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (6, '2020-02-04 17:09:53', '商品库存管理', '/sku/**', null, 1);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (8, '2020-02-05 14:43:37', '订单管理', '/order/**', '', 2);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (9, '2020-02-05 14:44:22', ' 订单退货申请管理', '/returnApply/**', '', 2);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (10, '2020-02-05 14:45:08', '退货原因管理', '/returnReason/**', '', 2);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (11, '2020-02-05 14:45:43', '订单设置管理', '/orderSetting/**', '', 2);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (12, '2020-02-05 14:46:23', '收货地址管理', '/companyAddress/**', '', 2);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (13, '2020-02-07 16:37:22', '优惠券管理', '/coupon/**', '', 3);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (14, '2020-02-07 16:37:59', '优惠券领取记录管理', '/couponHistory/**', '', 3);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (15, '2020-02-07 16:38:28', '限时购活动管理', '/flash/**', '', 3);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (16, '2020-02-07 16:38:59', '限时购商品关系管理', '/flashProductRelation/**', '', 3);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (17, '2020-02-07 16:39:22', '限时购场次管理', '/flashSession/**', '', 3);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (18, '2020-02-07 16:40:07', '首页轮播广告管理', '/home/advertise/**', '', 3);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (19, '2020-02-07 16:40:34', '首页品牌管理', '/home/brand/**', '', 3);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (20, '2020-02-07 16:41:06', '首页新品管理', '/home/newProduct/**', '', 3);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (21, '2020-02-07 16:42:16', '首页人气推荐管理', '/home/recommendProduct/**', '', 3);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (22, '2020-02-07 16:42:48', '首页专题推荐管理', '/home/recommendSubject/**', '', 3);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (23, '2020-02-07 16:44:56', ' 商品优选管理', '/prefrenceArea/**', '', 5);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (24, '2020-02-07 16:45:39', '商品专题管理', '/subject/**', '', 5);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (25, '2020-02-07 16:47:34', '后台用户管理', '/admin/**', '', 4);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (26, '2020-02-07 16:48:24', '后台用户角色管理', '/role/**', '', 4);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (27, '2020-02-07 16:48:48', '后台菜单管理', '/menu/**', '', 4);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (28, '2020-02-07 16:49:18', '后台资源分类管理', '/resourceCategory/**', '', 4);
INSERT INTO import.ums_resource (id, create_time, name, url, description, category_id) VALUES (29, '2020-02-07 16:49:45', '后台资源管理', '/resource/**', '', 4);
create table ums_resource_category
(
    id          bigint auto_increment
        primary key,
    create_time datetime     null comment '创建时间',
    name        varchar(200) null comment '分类名称',
    sort        int(4)       null comment '排序'
)
    comment '资源分类表' charset = utf8;

INSERT INTO import.ums_resource_category (id, create_time, name, sort) VALUES (1, '2020-02-05 10:21:44', '商品模块', 0);
INSERT INTO import.ums_resource_category (id, create_time, name, sort) VALUES (2, '2020-02-05 10:22:34', '订单模块', 0);
INSERT INTO import.ums_resource_category (id, create_time, name, sort) VALUES (3, '2020-02-05 10:22:48', '营销模块', 0);
INSERT INTO import.ums_resource_category (id, create_time, name, sort) VALUES (4, '2020-02-05 10:23:04', '权限模块', 0);
INSERT INTO import.ums_resource_category (id, create_time, name, sort) VALUES (5, '2020-02-07 16:34:27', '内容模块', 0);
INSERT INTO import.ums_resource_category (id, create_time, name, sort) VALUES (6, '2020-02-07 16:35:49', '其他模块', 0);
create table ums_role
(
    id          bigint auto_increment
        primary key,
    name        varchar(100)     null comment '名称',
    description varchar(500)     null comment '描述',
    admin_count int              null comment '后台用户数量',
    create_time datetime         null comment '创建时间',
    status      int(1) default 1 null comment '启用状态：0->禁用；1->启用',
    sort        int    default 0 null
)
    comment '后台用户角色表' charset = utf8;

INSERT INTO import.ums_role (id, name, description, admin_count, create_time, status, sort) VALUES (1, '商品管理员', '只能查看及操作商品', 0, '2020-02-03 16:50:37', 1, 0);
INSERT INTO import.ums_role (id, name, description, admin_count, create_time, status, sort) VALUES (2, '订单管理员', '只能查看及操作订单', 0, '2018-09-30 15:53:45', 1, 0);
INSERT INTO import.ums_role (id, name, description, admin_count, create_time, status, sort) VALUES (5, '超级管理员', '拥有所有查看和操作功能', 0, '2020-02-02 15:11:05', 1, 0);
create table ums_role_menu_relation
(
    id      bigint auto_increment
        primary key,
    role_id bigint null comment '角色ID',
    menu_id bigint null comment '菜单ID'
)
    comment '后台角色菜单关系表' charset = utf8;

INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (33, 1, 1);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (34, 1, 2);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (35, 1, 3);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (36, 1, 4);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (37, 1, 5);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (38, 1, 6);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (53, 2, 7);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (54, 2, 8);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (55, 2, 9);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (56, 2, 10);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (57, 2, 11);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (72, 5, 1);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (73, 5, 2);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (74, 5, 3);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (75, 5, 4);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (76, 5, 5);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (77, 5, 6);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (78, 5, 7);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (79, 5, 8);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (80, 5, 9);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (81, 5, 10);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (82, 5, 11);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (83, 5, 12);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (84, 5, 13);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (85, 5, 14);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (86, 5, 16);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (87, 5, 17);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (88, 5, 18);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (89, 5, 19);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (90, 5, 20);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (91, 5, 21);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (92, 5, 22);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (93, 5, 23);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (94, 5, 24);
INSERT INTO import.ums_role_menu_relation (id, role_id, menu_id) VALUES (95, 5, 25);
create table ums_role_permission_relation
(
    id            bigint auto_increment
        primary key,
    role_id       bigint null,
    permission_id bigint null
)
    comment '后台用户角色和权限关系表' charset = utf8;

INSERT INTO import.ums_role_permission_relation (id, role_id, permission_id) VALUES (1, 1, 1);
INSERT INTO import.ums_role_permission_relation (id, role_id, permission_id) VALUES (2, 1, 2);
INSERT INTO import.ums_role_permission_relation (id, role_id, permission_id) VALUES (3, 1, 3);
INSERT INTO import.ums_role_permission_relation (id, role_id, permission_id) VALUES (4, 1, 7);
INSERT INTO import.ums_role_permission_relation (id, role_id, permission_id) VALUES (5, 1, 8);
INSERT INTO import.ums_role_permission_relation (id, role_id, permission_id) VALUES (6, 2, 4);
INSERT INTO import.ums_role_permission_relation (id, role_id, permission_id) VALUES (7, 2, 9);
INSERT INTO import.ums_role_permission_relation (id, role_id, permission_id) VALUES (8, 2, 10);
INSERT INTO import.ums_role_permission_relation (id, role_id, permission_id) VALUES (9, 2, 11);
INSERT INTO import.ums_role_permission_relation (id, role_id, permission_id) VALUES (10, 3, 5);
INSERT INTO import.ums_role_permission_relation (id, role_id, permission_id) VALUES (11, 3, 12);
INSERT INTO import.ums_role_permission_relation (id, role_id, permission_id) VALUES (12, 3, 13);
INSERT INTO import.ums_role_permission_relation (id, role_id, permission_id) VALUES (13, 3, 14);
INSERT INTO import.ums_role_permission_relation (id, role_id, permission_id) VALUES (14, 4, 6);
INSERT INTO import.ums_role_permission_relation (id, role_id, permission_id) VALUES (15, 4, 15);
INSERT INTO import.ums_role_permission_relation (id, role_id, permission_id) VALUES (16, 4, 16);
INSERT INTO import.ums_role_permission_relation (id, role_id, permission_id) VALUES (17, 4, 17);
create table ums_role_resource_relation
(
    id          bigint auto_increment
        primary key,
    role_id     bigint null comment '角色ID',
    resource_id bigint null comment '资源ID'
)
    comment '后台角色资源关系表' charset = utf8;

INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (103, 2, 8);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (104, 2, 9);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (105, 2, 10);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (106, 2, 11);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (107, 2, 12);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (178, 1, 1);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (179, 1, 2);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (180, 1, 3);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (181, 1, 4);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (182, 1, 5);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (183, 1, 6);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (184, 1, 23);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (185, 1, 24);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (186, 5, 1);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (187, 5, 2);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (188, 5, 3);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (189, 5, 4);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (190, 5, 5);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (191, 5, 6);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (192, 5, 8);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (193, 5, 9);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (194, 5, 10);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (195, 5, 11);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (196, 5, 12);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (197, 5, 13);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (198, 5, 14);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (199, 5, 15);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (200, 5, 16);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (201, 5, 17);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (202, 5, 18);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (203, 5, 19);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (204, 5, 20);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (205, 5, 21);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (206, 5, 22);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (207, 5, 23);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (208, 5, 24);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (209, 5, 25);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (210, 5, 26);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (211, 5, 27);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (212, 5, 28);
INSERT INTO import.ums_role_resource_relation (id, role_id, resource_id) VALUES (213, 5, 29);