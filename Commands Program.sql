
mysql> CREATE DATABASE vk
    -> use vk;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'use vk' at line 2
mysql> use vk
Database changed

mysql>  CREATE TABLE cs(register_name INT,Name VARCHAR(100),City VARCHAR(100),M1 INT,M2 INT,Percentage INT);
Query OK, 0 rows affected (0.04 sec)

mysql>  CREATE TABLE cs(Age INT,Name VARCHAR(100),City VARCHAR(100),Maths INT,English INT,Science INT,Total INT,Percentage INT);
ERROR 1050 (42S01): Table 'cs' already exists
mysql>  CREATE TABLE cbe(Age INT,Name VARCHAR(100),City VARCHAR(100),Maths INT,English INT,Science INT,Total INT,Percentage INT);
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO ks VALUES(18,'kirthick','coimbatore',98,98,97,293,290);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO ks VALUES(19,'kali','aruppukottai',91,97,56,233,250);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ks VALUES(17,'manoj','kovilpatti',71,77,86,223,240);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ks VALUES(17,'mani','sattur',51,57,76,199,200);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO ks VALUES(17,'muthu','sivakasi',41,56,75,198,190);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT*FROM cbe;
Empty set (0.00 sec)

mysql> SELECT*FROM ks;
+---------------+----------+-----------------+------+------+------------+-------+-----------+
| register_name | Name     | City            | M1   | M2   | Percentage | Total | Phone     |
+---------------+----------+-----------------+------+------+------------+-------+-----------+
|            46 | kirthick | coimbatore      |   98 |   98 |        197 |   196 | 989456778 |
|             6 | manoj    | kovilpatti      |   81 |   85 |        190 |   166 | 989456888 |
|            76 | kali     | arupukottai     |   71 |   95 |        130 |   166 | 987756999 |
|            86 | mani     | mettupatti      |   61 |   85 |        140 |   146 | 989456999 |
|            96 | jusvanth | kaakivadanpatti |   91 |   55 |        150 |   146 | 987756432 |
|            18 | kirthick | coimbatore      |   98 |   98 |         97 |   293 |       290 |
|            19 | kali     | aruppukottai    |   91 |   97 |         56 |   233 |       250 |
|            17 | manoj    | kovilpatti      |   71 |   77 |         86 |   223 |       240 |
|            17 | mani     | sattur          |   51 |   57 |         76 |   199 |       200 |
|            17 | muthu    | sivakasi        |   41 |   56 |         75 |   198 |       190 |
+---------------+----------+-----------------+------+------+------------+-------+-----------+
10 rows in set (0.00 sec)

mysql> INSERT INTO cbe VALUES(18,'kirthick','coimbatore',98,98,97,293,290);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO cbe VALUES(19,'kali','aruppukottai',91,97,56,233,250);
Query OK, 1 row affected (0.01 sec)

mysql>  INSERT INTO cbe VALUES(17,'manoj','kovilpatti',71,77,86,223,240);
Query OK, 1 row affected (0.01 sec)

mysql>  INSERT INTO cbe VALUES(17,'mani','sattur',51,57,76,199,200);
Query OK, 1 row affected (0.01 sec)

mysql> NSERT INTO cbe VALUES(17,'muthu','sivakasi',41,56,75,198,190);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'NSERT INTO cbe VALUES(17,'muthu','sivakasi',41,56,75,198,190)' at line 1
mysql> INSERT INTO cbe VALUES(17,'muthu','sivakasi',41,56,75,198,190);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT*FROM cbe;
+------+----------+--------------+-------+---------+---------+-------+------------+
| Age  | Name     | City         | Maths | English | Science | Total | Percentage |
+------+----------+--------------+-------+---------+---------+-------+------------+
|   18 | kirthick | coimbatore   |    98 |      98 |      97 |   293 |        290 |
|   19 | kali     | aruppukottai |    91 |      97 |      56 |   233 |        250 |
|   17 | manoj    | kovilpatti   |    71 |      77 |      86 |   223 |        240 |
|   17 | mani     | sattur       |    51 |      57 |      76 |   199 |        200 |
|   17 | muthu    | sivakasi     |    41 |      56 |      75 |   198 |        190 |
+------+----------+--------------+-------+---------+---------+-------+------------+
5 rows in set (0.00 sec)

mysql> CREATE DATABASE kk;
Query OK, 1 row affected (0.03 sec)

mysql> use kk
Database changed

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ID INT,Category Varchar(100),Price INT,Stock Quantity INT)' at line 1
mysql>  CREATE TABLE cb(Quantity INT,PName VARCHAR(100),Category VARCHAR(100),Price INT);
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO cb VALUES(17,'oppo','application',30000);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO cb VALUES(17,'vivo','application',35000);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO cb VALUES(19,'chair','furniture',39000);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO cb VALUES(10,'bulb','electronics',45999);
Query OK, 1 row affected (0.02 sec)

mysql> SELECT*FROM cb;
+----------+-------+-------------+-------+
| Quantity | PName | Category    | Price |
+----------+-------+-------------+-------+
|       17 | oppo  | application | 30000 |
|       17 | vivo  | application | 35000 |
|       19 | chair | furniture   | 39000 |
|       10 | bulb  | electronics | 45999 |
+----------+-------+-------------+-------+
4 rows in set (0.00 sec)


+--------------+
| UPPER(PName) |
+--------------+
| OPPO         |
| VIVO         |
| CHAIR        |
| BULB         |
+--------------+
4 rows in set (0.00 sec)

mysql> SELECT LOWER(PName)FROM cb;
+--------------+
| LOWER(PName) |
+--------------+
| oppo         |
| vivo         |
| chair        |
| bulb         |
+--------------+
4 rows in set (0.00 sec)

mysql> SELECT SUBSTRING(Price,3,1) FROM cb;
+----------------------+
| SUBSTRING(Price,3,1) |
+----------------------+
| 0                    |
| 0                    |
| 0                    |
| 9                    |
+----------------------+
4 rows in set (0.00 sec)

mysql> SELECT SUBSTRING(Price,3,3) FROM cb;
+----------------------+
| SUBSTRING(Price,3,3) |
+----------------------+
| 000                  |
| 000                  |
| 000                  |
| 999                  |
+----------------------+
4 rows in set (0.00 sec)

mysql> SELECT SUBSTRING(Category,3,3) FROM cb;
+-------------------------+
| SUBSTRING(Category,3,3) |
+-------------------------+
| pli                     |
| pli                     |
| rni                     |
| ect                     |
+-------------------------+
4 rows in set (0.00 sec)

mysql> SELECT LENGTH(PName) FROM cb;
+---------------+
| LENGTH(PName) |
+---------------+
|             4 |
|             4 |
|             5 |
|             4 |
+---------------+
4 rows in set (0.00 sec)

mysql> SELECT TRIM(PName) FROM cb;
+-------------+
| TRIM(PName) |
+-------------+
| oppo        |
| vivo        |
| chair       |
| bulb        |
+-------------+
4 rows in set (0.00 sec)

mysql> SELECT CONCAT(PName,'',Quantity) FROM cb;
+---------------------------+
| CONCAT(PName,'',Quantity) |
+---------------------------+
| oppo17                    |
| vivo17                    |
| chair19                   |
| bulb10                    |
+---------------------------+
4 rows in set (0.00 sec)

mysql> SELECT REPLACE(PName,'vivo','samsung')FROM cb;
+---------------------------------+
| REPLACE(PName,'vivo','samsung') |
+---------------------------------+
| oppo                            |
| samsung                         |
| chair                           |
| bulb                            |
+---------------------------------+
4 rows in set (0.00 sec)

mysql> SELECT ABS(-785)AS AbsoluteValue;
+---------------+
| AbsoluteValue |
+---------------+
|           785 |
+---------------+
1 row in set (0.00 sec)

mysql> SELECT MOD(10,2);
+-----------+
| MOD(10,2) |
+-----------+
|         0 |
+-----------+
1 row in set (0.00 sec)

mysql>