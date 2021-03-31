-- 4.1 笛卡尔联接
--- 将第一个表中的每一行与第二个表中的每一行联系起来。显示每一种可能的记录组合，在表之间创建联接。
---- where方法
SELECT title, name
FROM books,publisher;
---- join方法
SELECT title, name
FROM books CROSS JOIN publisher;

-- 4.2 相等联接/同等联接/内部联接/简单联接
--- 通过一个同等命名和定义的列来创建联接。
---- where方法
SELECT title, name
FROM books b,publisher p
WHERE b.pubid = p.pubid;
---- join方法
----- natural join :自动选择字段
SELECT title, name
FROM books b NATURAL JOIN publisher p;
----- join...using: 指定联接的字段
SELECT title, name
FROM books b JOIN publisher p
USING(pubid);
----- join...on: 指定联接的字段
SELECT title, name
FROM books b JOIN publisher p
ON b.pubid = p.pubid;

-- 4.3 不等联接
--- 当将要联接的表中不存在相等的行时联接表，例如将一个表中的一列的值与另一个表中的一个值范围做比较。
--- 题目：books表中零售价格对应promotion表送出相应礼物
---- where方法
SELECT b.title, p.gift
FROM promotion p, books b 
WHERE b.retail BETWEEN p.minretail AND p.maxretail;
---- join方法
SELECT b.title, p.gift
FROM promotion p JOIN books b
ON b.retail BETWEEN p.minretail AND p.maxretail;

-- 4.4 自我联接
--- 将一个表与它自己联接
--- 题目：如果你需要确定介绍另一个客户的姓名
---- where方法
SELECT a.lastname "推荐人", b.lastname "被推荐人"
FROM customers a, customers b
WHERE a.customer# = b.referred;
---- join方法
SELECT a.lastname "推荐人", b.lastname "被推荐人"
FROM customers a JOIN customers b
ON a.customer# = b.referred;

-- 4.5 外部联接
--- 当另一个表中不存在匹配的记录时在输出中包括一个表的记录
--- 题目：客户所有的订单号包括暂无订单记录的客户
--- where方法
SELECT lastname, order#
FROM customers c, orders o
WHERE c.customer# = o.customer#(+);
--- join方法, outer/left/right/full join
SELECT lastname, order#
FROM customers c LEFT JOIN orders o
ON c.customer#=o.customer#;

-- 4.6 集合运算符
--- union：删除重复记录
SELECT customer# FROM customers
UNION
SELECT customer# FROM orders;
--- union all：不删除重复记录
SELECT customer# FROM customers
UNION ALL
SELECT customer# FROM orders;
--- intersect：只返回两个select语句的结果中都包括的行
SELECT customer# FROM customers
INTERSECT
SELECT customer# FROM orders;
--- minus：删除第一个查询中也存在第二个查询的结果，只显示只由第一个查询返回的行
SELECT customer# FROM customers
MINUS
SELECT customer# FROM orders;

-- 4.7 联接三个或更多表
--- where方法
SELECT title, lastname
FROM customers c, orders o, orderitems o1, books b
WHERE c.customer#=o.customer# 
AND o.order# = o1.order#
AND o1.isbn=b.isbn;
--- join方法
SELECT title, lastname
FROM customers c 
JOIN orders o
ON c.customer#=o.customer# 
JOIN orderitems o1
ON o.order# = o1.order#
JOIN books b
ON o1.isbn=b.isbn;
---
SELECT title, lastname
FROM customers c NATURAL JOIN orders o NATURAL JOIN orderitems o1 NATURAL JOIN books b;



