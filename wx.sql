

--选择数据库
use zhangliang;

--店铺信息表:
CREATE TABLE wx_mp_shop_info(
    id int(10) NOT NULL AUTO_INCREMENT COMMENT '店铺ID',
    shop_name varchar(30) NOT NULL DEFAULT '-' COMMENT '店铺名称',
    shop_logo_url varchar(100) NOT NULL DEFAULT 'default_logo.png' COMMENT '店铺logo图片url',
    shop_desc varchar(50) NOT NULL DEFAULT '-' COMMENT '店铺简介',
    shop_notice varchar(100) NOT NULL DEFAULT '-' COMMENT '店铺公告',
    add_time datetime NOT NULL DEFAULT '1970-01-01' COMMENT '记录添加时间',
    update_time datetime NOT NULL DEFAULT '1970-01-01' COMMENT '记录修改时间',
    PRIMARY KEY (id)
) ENGINE = InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='店铺信息表';


--用户信息表:
CREATE TABLE wx_mp_user(
    id int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
    open_id varchar(30) NOT NULL DEFAULT '-' COMMENT '用户标识',
    nick_name varchar(30) NOT NULL DEFAULT '-' COMMENT '用户昵称',
    wx_id varchar(30) NOT NULL NULL DEFAULT '-' COMMENT '用户微信号',
    PRIMARY KEY (id)
) ENGINE = InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT='用户信息表';


--订单表
CREATE TABLE wx_mp_order(
    order_id int(10) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
    order_status tinyint(1) NOT NULL DEFAULT 0 COMMENT '订单状态',
    order_amnt decimal(6,2) NOT NULL NULL DEFAULT 0.00 COMMENT '订单金额',
    discount_amnt decimal(6,2) NOT NULL NULL DEFAULT 0.00 COMMENT '折扣金额',
    add_time datetime NOT NULL DEFAULT '1970-01-01' COMMENT '记录添加时间',
    update_time datetime NOT NULL DEFAULT '1970-01-01' COMMENT '记录修改时间',
    PRIMARY KEY (order_id)
) ENGINE = InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8 COMMENT='订单表';


--订单行项目表
CREATE TABLE wx_mp_orderitem(
    orderitem_id int(10) NOT NULL AUTO_INCREMENT COMMENT '订单航项目ID',
    order_id int(10) NOT NULL DEFAULT 0 COMMENT '订单ID',
    goods_id int(10) NOT NULL DEFAULT 0 COMMENT '商品ID',
    goods_name varchar(30) NOT NULL DEFAULT '-' COMMENT '商品名称',
    goods_price decimal(6,2) NOT NULL NULL DEFAULT 0.00 COMMENT '商品单价',
    goods_num decimal(6,2) NOT NULL NULL DEFAULT 0.00 COMMENT '商品数量',
    total_amnt decimal(6,2) NOT NULL NULL DEFAULT 0.00 COMMENT '订单金额',
    discount_amnt decimal(6,2) NOT NULL NULL DEFAULT 0.00 COMMENT '折扣金额',
    add_time datetime NOT NULL DEFAULT '1970-01-01' COMMENT '记录添加时间',
    update_time datetime NOT NULL DEFAULT '1970-01-01' COMMENT '记录修改时间',
    PRIMARY KEY (orderitem_id)
) ENGINE = InnoDB AUTO_INCREMENT=1000000001 DEFAULT CHARSET=utf8 COMMENT='订单行项目表';


--商品信息表
CREATE TABLE wx_mp_goods_info(
    goods_id int(10) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
    goods_name varchar(30) NOT NULL DEFAULT '-' COMMENT '商品名称',
    goods_price decimal(6,2) NOT NULL DEFAULT 0.00 COMMENT '商品单价',
    goods_image_url varchar(200) NOT NULL DEFAULT 'default_goods.png' COMMENT '商品图片URL',
    goods_sold int(10) NOT NULL DEFAULT 0 COMMENT '商品销量',
    goods_status tinyint(1) NOT NULL DEFAULT 0 COMMENT '商品状态:0--正常,1--下架',
    add_time datetime NOT NULL DEFAULT '1970-01-01' COMMENT '记录添加时间',
    update_time datetime NOT NULL DEFAULT '1970-01-01' COMMENT '记录修改时间',
    PRIMARY KEY (goods_id)
) ENGINE = InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='商品信息表';


--商品分类信息表
CREATE TABLE wx_mp_goods_category(
    goods_category_id int(10) NOT NULL AUTO_INCREMENT COMMENT '商品分类ID',
    goods_category_name varchar(30) NOT NULL DEFAULT '-' COMMENT '商品分类名称',
    goods_status tinyint(1) NOT NULL DEFAULT 0 COMMENT '商品分类状态:0--正常,1--下架',
    add_time datetime NOT NULL DEFAULT '1970-01-01' COMMENT '记录添加时间',
    update_time datetime NOT NULL DEFAULT '1970-01-01' COMMENT '记录修改时间',
    PRIMARY KEY (goods_category_id)
) ENGINE = InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='商品分类信息表';


