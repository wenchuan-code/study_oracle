insert into customers values(1001, 'MORALES', 'BONITA', 'P.0.BOX 651', 'EASTPOINT', 'FL', '32328', NULL);
insert into customers values(1002, 'THOMPSON', 'RYAN', 'P.0.BOX 9835', 'SANTA MONIGA','CA','90404',NULL);
insert into customers values(1003, 'SMTH', 'LEILA', 'P.0. BOX 66', 'TALLAHASSEE', 'FL', '32306', NULL);
insert into customers values(1004, 'PIERSON', 'THOMAS', '69821 SOUTH AUENUE', 'BOISE', 'ID', '83707', NULL);
insert into customers values(1005, 'GIRARD', 'CINDY', 'P.0. BOX 851', 'SEATTLE', 'WA', '98115', NULL);
insert into customers values(1006, 'GRUZ', 'MESHIA', '82 DIRT ROAD', 'ALBANY', 'NY', '12211', NULL);
insert into customers values(1007, 'GIANA', 'TAMMY', '9153 MAIN STREET', 'AUSTIN', 'TX', '78710', 1003);
insert into customers values(1008, 'JONES', 'KENNETH', 'P.0. BOX 137', 'CHEYENNE', 'WY', '82003', NULL);
insert into customers values(1009, 'PEREZ', 'JORGE', 'P.0. BOX 8564', 'BURBANK', 'CA', '91510', 1003);
insert into customers values(1010, 'LUCAS', 'JAKE', '114 EAST SAUANNAH', 'ATLANTA', 'GA', '30314', NULL);
insert into customers values(1011, 'MCGOUERN', 'REESE', 'P.0. BOX 18', 'CHICAGO', 'IL', '60606', NULL);
insert into customers values(1012, 'MCKENZIE', 'WILLIAM', 'P.0. BOX 971', 'BOSTON', 'MA', '02110', NULL);
insert into customers values(1013, 'NGUYEN', 'NICHOLAS', '357 WHITE EAGLE AUE.', 'CLERMONT', 'FL', '34711', 1006);
insert into customers values(1014, 'LEE', 'JASMINE', 'P.O. BOX 2947', 'CODY' ,'WY', '82414', null);
insert into customers values(1015, 'SCHELL', 'STEUE', 'P.O.BOX 677', 'MIAMI', 'FL', '33111', null);
insert into customers values(1016, 'DAUM', 'MICHELL', '9851231 LONG ROAD', 'BURBANK', 'CA', '91508', 1010);
insert into customers values(1017, 'NELSON', 'BECCA', 'P.O.BOX 563', 'KAL MAZ00', 'MI', '49006', null);
insert into customers values(1018, 'MONTIASA', 'GREG', '1008 GRAND AUENUE', 'MACON', 'GA' ,'31206', null);
insert into customers values(1019, 'SMITH', 'JENNIFER', 'P.O.BOX 1151', 'MORRISTOWN', 'NJ', '07962', 1003);
insert into customers values(1020, 'FALAH', 'KENNETH', 'P.O.BOX 335', 'TRENTON', 'NJ', '08607', null);


insert into books values(1059831198, 'BODYBUILD IN 10 MINUTES A DAY', to_date('21-1-01','YY-MM-DD'), 4, '18.75', 30.95, 'FITNESS');
insert into books values(0401140733, 'REUENGE OF MICKEY', to_date('14-12-01', 'yy-mm-dd'), 1, 14.2, 22, 'FAMILY LIFE');
insert into books values(4981341710, 'BUILDING A CAR WITH TOOTHPICKS', to_date('18-5-02', 'yy-mm-dd'), 2, 37.8, 59.95, 'CHILDREN');
insert into books values(8843172113, 'DATABASE IMPLEMENTATION', to_date('04-6-1', 'yy-mm-dd'), 3, 31.4, 55.95, 'COMPUTER');
insert into books values(3437212490, 'COOKING WITH MUSHROOMS', to_date('28-2-01', 'yy-mm-dd'), 4, 12.5, 19.95, 'COOKING');
insert into books values(3957136468, 'HOLY GRAIL OF ORACLE', to_date('31-12-01', 'yy-mm-dd'), 3, 47.25, 75.95, 'COMPUTER');
insert into books values(1915762492, 'HANDCRANKED COPUTERS', to_date('21-1-01', 'yy-mm-dd'), 3, 21.8, 25, 'COMPUTER');
insert into books values(9959789321, 'E-BUSINESS THE EASY WAY', to_date('01-5-02', 'yy-mm-dd'), 2, 37.9, 54.5, 'COMPUTER');
insert into books values(2491748320, 'PAINLESS CHILD-REARING', to_date('17-7-01', 'yy-mm-dd'), 5, 48, 89.95, 'FAMILY LIFE');
insert into books values(0299282519, 'THE WOK WAY TO COOK', to_date('11-9-01', 'yy-mm-dd'), 4, 19, 28.75, 'COOKING');
insert into books values(8117949391, 'BIG BEAR AND LITTLE DOUE', to_date('08-11-01', 'yy-mm-dd'), 5, 5.32, 8.95, 'CHILDREN');
insert into books values(0132149871, 'HOW TO GET FASTER PIZZA', to_date('11-11-02', 'yy-mm-dd'), 4, 17.85, 29.95, 'SELF HELP');
insert into books values(9247381001, 'HOW TO MANAGE THE MANAGER', to_date('09-5-1', 'yy-mm-dd'), 1, 15.4, 31.95, 'BUSINESS');
insert into books values(2147428890, 'SHORTEST POEMS', to_date('01-5-01', 'yy-mm-dd'), 5, 21.85, 39.95, 'LITERATURE');

insert into orders values(1000, 1005, to_date('31-3-03','yy-mm-dd'), to_date('02-4-03','yy-mm-dd'), '1201 0RAHGE AUE', 'SEATTLE', 'WA', 98114);
insert into orders values(1001, 1010, to_date('31-3-03','yy-mm-dd'), to_date('01-4-03','yy-mm-dd'), '11A FASI SAUAHNAH', 'ATLONTA', 'GA', 30314);
insert into orders values(1002, 1011, to_date('31-3-03','yy-mm-dd'), to_date('01-4-03','yy-mm-dd'), '58 11LA CIRCLE', 'CHICACO', 'IL', 60605);
insert into orders values(1003, 1001, to_date('01-4-03','yy-mm-dd'), to_date('01-4-03','yy-mm-dd'), '95R MAGNOL IA LANE', 'EASTPOINT', 'FL', 32328);
insert into orders values(1004, 1020, to_date('01-4-03','yy-mm-dd'), to_date('05-4-03','yy-mm-dd'), '561 ROUNDABOUT WAY', 'TRENTON', 'NJ', 08601);
insert into orders values(1005, 1018, to_date('01-4-03','yy-mm-dd'), to_date('02-4-03','yy-mm-dd'), '1008 GRAND AUENUE', 'MACON', 'GA', 31266);
insert into orders values(1006, 1003, to_date('01-4-03','yy-mm-dd'), to_date('02-4-03','yy-mm-dd'), '558A CAPITOL HWY.', 'TALLAHASSEE', 'FL', 32307);
insert into orders values(1007, 1007, to_date('02-4-03','yy-mm-dd'), to_date('04-4-03','yy-mm-dd'), '9153 MAIN STREET', 'AUSTIN', 'TX', 78710);
insert into orders values(1008, 1004, to_date('02-4-03','yy-mm-dd'), to_date('03-4-03','yy-mm-dd'), '69821 SOUTH AUENUE', 'BOISE', 'ID', 83707);
insert into orders values(1009, 1005, to_date('03-4-03','yy-mm-dd'), to_date('05-4-03','yy-mm-dd'), '9 LIGHTENING RD.', 'SEATTLE', 'WA', 98110);
insert into orders values(1010, 1019, to_date('03-4-03','yy-mm-dd'), to_date('04-4-03','yy-mm-dd'), '384 WRONG WAY HOME', 'MORRISTOWN', 'NJ', 07960);
insert into orders values(1011, 1010, to_date('03-4-03','yy-mm-dd'), to_date('05-4-03','yy-mm-dd'), '102 WEST LAFAYETTE', 'ATLANTA', 'GA', 30311);
insert into orders values(1012, 1017, to_date('03-4-03','yy-mm-dd'), null, '1295 WINDY AUENUE', 'KALMAZ0O', 'MI', 49002);
insert into orders values(1013, 1014, to_date('03-4-03','yy-mm-dd'), to_date('04-4-03','yy-mm-dd'), '7618 MOUNTAIN RD.', 'CODY', 'WY', 82414);
insert into orders values(1014, 1007, to_date('04-4-03','yy-mm-dd'), to_date('05-4-03','yy-mm-dd'), '9153 MAIN STREET', 'AUSTIN','TX', 78710);
insert into orders values(1015, 1020, to_date('04-4-03','yy-mm-dd'), null, '557 GLITTER ST.', 'TRENTON', 'NJ', 08606);
insert into orders values(1016, 1003, to_date('04-4-03','yy-mm-dd'),null, '9901 SEMINOLE WAY', 'TALLAHASSEE', 'FL', 32307);
insert into orders values(1017, 1015, to_date('04-4-03','yy-mm-dd'), to_date('05-4-03','yy-mm-dd'), '887 HOT ASPHALT ST', 'MIAMI', 'FL', 33112);
insert into orders values(1018, 1001, to_date('05-4-03','yy-mm-dd'), null, '95812 HIGHWAY 98', 'EASTPOINT', 'FL', 32328);
insert into orders values(1019, 1018, to_date('05-4-03','yy-mm-dd'), null, '1008 GRAND AUENUE', 'MACON', 'GA', 31206);
insert into orders values(1020, 1008, to_date('05-4-03','yy-mm-dd'), null, '195 JAMISON LANE', 'CHEYENNE', 'WY', 82003);


insert into orderitems values(1000, 1, '3437212490', 1);
insert into orderitems values(1001, 1, '9247381001', 1);
insert into orderitems values(1001, 2, '2491748320', 1);
insert into orderitems values(1002, 1, '8843172113', 2);
insert into orderitems values(1003, 1, '8843172113', 1);
insert into orderitems values(1003, 2, '1059831198', 1);
insert into orderitems values(1003, 3, '3437212490', 1);
insert into orderitems values(1004, 1, '2491748320', 2);
insert into orderitems values(1005, 1, '2147428890', 1);
insert into orderitems values(1006, 1, '9959789321', 1);
insert into orderitems values(1007, 1, '3957136468', 3);
insert into orderitems values(1007, 2, '9959789321', 1);
insert into orderitems values(1007, 3, '8117949391', 1);
insert into orderitems values(1007, 4, '8843172113', 1);
insert into orderitems values(1008, 1, '3437212490', 2);
insert into orderitems values(1009, 1, '3437212490', 1);
insert into orderitems values(1009, 2, '0401140733', 1);
insert into orderitems values(1010, 1, '8843172113', 1);
insert into orderitems values(1011, 1, '2491748320', 1);
insert into orderitems values(1012, 1, '8117949391', 1);
insert into orderitems values(1012, 2, '1915762492', 2);
insert into orderitems values(1012, 3, '2491748320', 1);
insert into orderitems values(1012, 4, '0401140733', 1);
insert into orderitems values(1013, 1, '8843172113', 1);
insert into orderitems values(1014, 1, '0401140733', 2);
insert into orderitems values(1015, 1, '3437212490', 1);
insert into orderitems values(1016, 1, '2491748320', 1);
insert into orderitems values(1017, 1, '8117949391', 2);
insert into orderitems values(1018, 1, '3437212490', 1);
insert into orderitems values(1018, 2, '8843172113', 1);
insert into orderitems values(1019, 1, '0401140733', 1);
insert into orderitems values(1020, 1, '3437212490', 1);


insert into author values();
insert into bookauthor values();

insert into publisher values(1, 'PRINTING IS US', 'TOMMIE SEYMOUR', '000-714-8321'); 
insert into publisher values(2, 'PUBLISH OUR WAY', 'JAME TOML IN', '010-410-0010');
insert into publisher values(3, 'AMERICAN PUBLISING', 'DAUID DAUIDSON', '800-555-1211');
insert into publisher values(4, 'READING MATERIALS INC.', 'RENEE SMITH', '800-555-9743');
insert into publisher values(5, 'REED-N-RITE', 'SEBASTIAN JONES', '800-555-8284');

insert into promotion values('BOOKMARKER', 0, 12);
insert into promotion values('BOOK LABELS', 12.01, 25);
insert into promotion values('BOOK COVER', 25.01, 56);
insert into promotion values('FREE SHIPPING', 56.01, 999.99);

