-- 4.1 �ѿ�������
--- ����һ�����е�ÿһ����ڶ������е�ÿһ����ϵ��������ʾÿһ�ֿ��ܵļ�¼��ϣ��ڱ�֮�䴴�����ӡ�
---- where����
SELECT title, name
FROM books,publisher;
---- join����
SELECT title, name
FROM books CROSS JOIN publisher;

-- 4.2 �������/ͬ������/�ڲ�����/������
--- ͨ��һ��ͬ�������Ͷ���������������ӡ�
---- where����
SELECT title, name
FROM books b,publisher p
WHERE b.pubid = p.pubid;
---- join����
----- natural join :�Զ�ѡ���ֶ�
SELECT title, name
FROM books b NATURAL JOIN publisher p;
----- join...using: ָ�����ӵ��ֶ�
SELECT title, name
FROM books b JOIN publisher p
USING(pubid);
----- join...on: ָ�����ӵ��ֶ�
SELECT title, name
FROM books b JOIN publisher p
ON b.pubid = p.pubid;

-- 4.3 ��������
--- ����Ҫ���ӵı��в�������ȵ���ʱ���ӱ����罫һ�����е�һ�е�ֵ����һ�����е�һ��ֵ��Χ���Ƚϡ�
--- ��Ŀ��books�������ۼ۸��Ӧpromotion���ͳ���Ӧ����
---- where����
SELECT b.title, p.gift
FROM promotion p, books b 
WHERE b.retail BETWEEN p.minretail AND p.maxretail;
---- join����
SELECT b.title, p.gift
FROM promotion p JOIN books b
ON b.retail BETWEEN p.minretail AND p.maxretail;

-- 4.4 ��������
--- ��һ���������Լ�����
--- ��Ŀ���������Ҫȷ��������һ���ͻ�������
---- where����
SELECT a.lastname "�Ƽ���", b.lastname "���Ƽ���"
FROM customers a, customers b
WHERE a.customer# = b.referred;
---- join����
SELECT a.lastname "�Ƽ���", b.lastname "���Ƽ���"
FROM customers a JOIN customers b
ON a.customer# = b.referred;

-- 4.5 �ⲿ����
--- ����һ�����в�����ƥ��ļ�¼ʱ������а���һ����ļ�¼
--- ��Ŀ���ͻ����еĶ����Ű������޶�����¼�Ŀͻ�
--- where����
SELECT lastname, order#
FROM customers c, orders o
WHERE c.customer# = o.customer#(+);
--- join����, outer/left/right/full join
SELECT lastname, order#
FROM customers c LEFT JOIN orders o
ON c.customer#=o.customer#;

-- 4.6 ���������
--- union��ɾ���ظ���¼
SELECT customer# FROM customers
UNION
SELECT customer# FROM orders;
--- union all����ɾ���ظ���¼
SELECT customer# FROM customers
UNION ALL
SELECT customer# FROM orders;
--- intersect��ֻ��������select���Ľ���ж���������
SELECT customer# FROM customers
INTERSECT
SELECT customer# FROM orders;
--- minus��ɾ����һ����ѯ��Ҳ���ڵڶ�����ѯ�Ľ����ֻ��ʾֻ�ɵ�һ����ѯ���ص���
SELECT customer# FROM customers
MINUS
SELECT customer# FROM orders;

-- 4.7 ��������������
--- where����
SELECT title, lastname
FROM customers c, orders o, orderitems o1, books b
WHERE c.customer#=o.customer# 
AND o.order# = o1.order#
AND o1.isbn=b.isbn;
--- join����
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



