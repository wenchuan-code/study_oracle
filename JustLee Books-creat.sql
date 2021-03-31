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
  is 'JustLee Books�ͻ������ݴ洢��customers���С�';
-- Add comments to the columns
comment on column customers.customer#
  is '�ͻ�ID';
comment on column customers.lastname
  is '�ͻ�����';
comment on column customers.firstname
  is '�ͻ�����';
comment on column customers.address
  is '�ʼĵ�ַ';
comment on column customers.city
  is '����';
comment on column customers.state
  is '״̬';
comment on column customers.zip
  is '������Ϣ';
comment on column customers.referred
  is '�Ƽ���ID'; 

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
  is 'JustLee Books���۵�ͼ������ݴ洢��books���С�';
-- Add comments to columns
comments on columns books.isbn
  is 'ISBN';
comments on columns books.title
  is '����';
comments on columns books.pubdate
  is '��������';
comments on columns books.pubid
  is '������ID';
comments on columns books.cost
  is '�����ɱ�';
comments on columns books.retail
  is '���ۼ�';
comments on columns books.category
  is '���';  
  
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
  is 'JustLee Books����յ��Ķ��������ݴ洢��orders���С�';
-- Add comments to columns
comments on columns orders.order#
  is '����ID';
comments on columns orders.customer#
  is '�ͻ�ID';
comments on columns orders.orderdate
  is '�´ﶩ������';
comments on columns orders.shipdate
  is '��������';
comments on columns orders.shipstreet
  is '�����ֵ�';
comments on columns orders.shipcity
  is '��������';
comments on columns orders.shipstate
  is '����״̬';
comments on columns orders.shipzip
  is '������Ϣ';

  

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
  is '�洢ÿһ�������Ϲ����ÿһ�������Ϣ��';
-- Add comments to columns
comments on columns orderitems.order#
  is '����ID';
comments on columns orderitems.item#
  is '����';
comments on columns orderitems.isbn
  is 'ISBN';
comments on columns orderitems.quantity
  is '����';
  
  
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
  is '����ͼ��ĳ�������������ݶ��洢��publisher���С�';
-- Add comments to columns
comments on columns publisher.pubid
  is '������ID';
comments on columns publisher.name
  is '����������';  
comments on columns publisher.contact
  is '��������ϵ��';
comments on columns publisher.phone
  is '������绰����';

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
  is '����';
comments on columns promotion.minretail
  is '��С��������'; 
comments on columns promotion.maxretail
  is '�����������';