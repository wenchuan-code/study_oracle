-- Create table customers
create table customers
(
  customer#   NUMBER(4) not null,
  lastname    VARCHAR2(10),
  firstname   VARCHAR2(10),
  address     VARCHAR2(20),
  city        VARCHAR2(12),
  state       VARCHAR2(2),
  zip         VARCHAR2(5),
  referred    VARCHAR2(4) 
)
tablespace BJSXT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table
comment on table customers
  is 'JustLee Books客户的数据存储在customers表中。';
-- Add comments to the columns
comment on column customers.customer#
  is '客户ID';
comment on column customers.lastname
  is '客户姓名';
comment on column customers.firstname
  is '客户姓氏';
comment on column customers.address
  is '邮寄地址';
comment on column customers.city
  is '城市';
comment on column customers.state
  is '状态';
comment on column customers.zip
  is '其他信息';
comment on column customers.referred
  is '推荐人ID'; 

-- Greate table books
create table books
(
  isbn       VARCHAR2(10) not null,
  title      VARCHAR2(30),
  pubdate    DATE,
  pubid      NUMBER(2),
  cost       NUMBER(5,2),
  retail     NUMBER(5,2),
  category   VARCHAR2(12)
)
tablespace BJSXT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to table
comments on table books
  is 'JustLee Books销售的图书的数据存储在books表中。';
-- Add comments to columns
comments on columns books.isbn
  is 'ISBN';
comments on columns books.title
  is '书名';
comments on columns books.pubdate
  is '出版日期';
comments on columns books.pubid
  is '出版社ID';
comments on columns books.cost
  is '批发成本';
comments on columns books.retail
  is '零售价';
comments on columns books.category
  is '类别';  
  
-- Greate table orders
create table orders
(
  order#       NUMBER(4) not null,
  customer#    NUMBER(4),
  orderdate    DATE,
  shipdate     DATE,
  shipstreet   VARCHAR(18),
  shipcity     VARCHAR(15),
  shipstate    VARCHAR(2),
  shipzip      VARCHAR2(5)
) 
tablespace BJSXT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to table
comments on table orders
  is 'JustLee Books最近收到的订单的数据存储在orders表中。';
-- Add comments to columns
comments on columns orders.order#
  is '订单ID';
comments on columns orders.customer#
  is '客户ID';
comments on columns orders.orderdate
  is '下达订单日期';
comments on columns orders.shipdate
  is '发货日期';
comments on columns orders.shipstreet
  is '发货街道';
comments on columns orders.shipcity
  is '发货城市';
comments on columns orders.shipstate
  is '运输状态';
comments on columns orders.shipzip
  is '其他信息';

  

-- Greate table orderitems
create table orderitems
(
  order#     NUMBER(4) not null,
  item#      NUMBER(2) not null,
  isbn       VARCHAR2(10),
  quantity   NUMBER(3)
)
tablespace BJSXT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to table
comments on table orderitems
  is '存储每一个订单上购买的每一本书的信息。';
-- Add comments to columns
comments on columns orderitems.order#
  is '订单ID';
comments on columns orderitems.item#
  is '次数';
comments on columns orderitems.isbn
  is 'ISBN';
comments on columns orderitems.quantity
  is '数量';
  
  
-- Greate table author
-- Greate table bookautor
-- Greate table publisher
create table publisher
(
  pubid      NUMBER(2) not null,
  name       VARCHAR2(23),
  contact    VARCHAR2(15),
  phone      VARCHAR2(12)
)
tablespace BJSXT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to table
comments on table publisher
  is '出版图书的出版社的所有数据都存储在publisher表中。';
-- Add comments to columns
comments on columns publisher.pubid
  is '出版社ID';
comments on columns publisher.name
  is '出版社名称';  
comments on columns publisher.contact
  is '出版社联系人';
comments on columns publisher.phone
  is '出版社电话号码';

-- create table promotion
create table promotion
(
  gift       VARCHAR2(15),
  minretail  NUMBER(5,2),
  maxretail  NUMBER(5,2)
)
tablespace BJSXT
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to columns
comments on columns promotion.gift
  is '礼物';
comments on columns promotion.minretail
  is '最小零售限制'; 
comments on columns promotion.maxretail
  is '最大零售限制';
