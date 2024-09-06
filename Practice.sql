Enter password: *****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 8.0.39 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> \h

For information about MySQL products and services, visit:
   http://www.mysql.com/
For developer information, including the MySQL Reference Manual, visit:
   http://dev.mysql.com/
To buy MySQL Enterprise support, training, or other products, visit:
   https://shop.mysql.com/

List of all MySQL commands:
Note that all text commands must be first on line and end with ';'
?         (\?) Synonym for `help'.
clear     (\c) Clear the current input statement.
connect   (\r) Reconnect to the server. Optional arguments are db and host.
delimiter (\d) Set statement delimiter.
ego       (\G) Send command to mysql server, display result vertically.
exit      (\q) Exit mysql. Same as quit.
go        (\g) Send command to mysql server.
help      (\h) Display this help.
notee     (\t) Don't write into outfile.
print     (\p) Print current command.
prompt    (\R) Change your mysql prompt.
quit      (\q) Quit mysql.
rehash    (\#) Rebuild completion hash.
source    (\.) Execute an SQL script file. Takes a file name as an argument.
status    (\s) Get status information from the server.
system    (\!) Execute a system shell command.
tee       (\T) Set outfile [to_outfile]. Append everything into given outfile.
use       (\u) Use another database. Takes database name as argument.
charset   (\C) Switch to another charset. Might be needed for processing binlog with multi-byte charsets.
warnings  (\W) Show warnings after every statement.
nowarning (\w) Don't show warnings after every statement.
resetconnection(\x) Clean session context.
query_attributes Sets string parameters (name1 value1 name2 value2 ...) for the next query to pick up.
ssl_session_data_print Serializes the current SSL session data to stdout or file

For server side help, type 'help contents'

mysql> \c
mysql> CREATE DATABASE vk
    -> CREATE TABLE vk(Name VARCHAR(100),City VARCHAR(50),M1 INT,M2 INT);


mysql> CREATE DATABASE vk;
Query OK, 1 row affected (0.02 sec)


mysql> use vk;
Database changed
mysql> CREATE TABLE ks(register_name INT,Name VARCHAR(100),City VARCHAR(100),M1 INT,M2 INT,Percentage INT);
Query OK, 0 rows affected (0.02 sec)


mysql> INSERT INTO ks VALUES(46,'kirthick','coimbatore',98,98,197);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ks(46,'manoj','kovilpatti',81,85,190);
 
mysql> INSERT INTO ks VALUES(46,'manoj','kovilpatti',81,85,190);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO ks VALUES(76,'kali','arupukottai',71,95,130);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ks VALUES(86,'mani','mettupatti',61,85,140);
Query OK, 1 row affected (0.03 sec)

mysql> INSERT INTO ks VALUES(96,'jusvanth','kaakivadanpatti',91,55,150);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT*FROM ks;
+---------------+----------+-----------------+------+------+------------+
| register_name | Name     | City            | M1   | M2   | Percentage |
+---------------+----------+-----------------+------+------+------------+
|            46 | kirthick | coimbatore      |   98 |   98 |        197 |
|            46 | manoj    | kovilpatti      |   81 |   85 |        190 |
|            76 | kali     | arupukottai     |   71 |   95 |        130 |
|            86 | mani     | mettupatti      |   61 |   85 |        140 |
|            96 | jusvanth | kaakivadanpatti |   91 |   55 |        150 |
+---------------+----------+-----------------+------+------+------------+
5 rows in set (0.00 sec)



mysql> SELECT*FROM ks;
+---------------+----------+-----------------+------+------+------------+
| register_name | Name     | City            | M1   | M2   | Percentage |
+---------------+----------+-----------------+------+------+------------+
|            46 | kirthick | coimbatore      |   98 |   98 |        197 |
|             6 | manoj    | kovilpatti      |   81 |   85 |        190 |
|            76 | kali     | arupukottai     |   71 |   95 |        130 |
|            86 | mani     | mettupatti      |   61 |   85 |        140 |
|            96 | jusvanth | kaakivadanpatti |   91 |   55 |        150 |
+---------------+----------+-----------------+------+------+------------+
5 rows in set (0.00 sec)

mysql> SELECT MAX(M1) from ks;
+---------+
| MAX(M1) |
+---------+
|      98 |
+---------+
1 row in set (0.00 sec)

mysql> SELECT MIN(M2) from ks;
+---------+
| MIN(M2) |
+---------+
|      55 |
+---------+
1 row in set (0.00 sec)

mysql> SELECT MAX(Percentage) from ks;
+-----------------+
| MAX(Percentage) |
+-----------------+
|             197 |
+-----------------+
1 row in set (0.00 sec)

mysql> SELECT MIN(Percentage) from ks;
+-----------------+
| MIN(Percentage) |
+-----------------+
|             130 |
+-----------------+
1 row in set (0.00 sec)


mysql> SELECT*FROM ks WHERE Percentage between 130 AND 150;
+---------------+----------+-----------------+------+------+------------+
| register_name | Name     | City            | M1   | M2   | Percentage |
+---------------+----------+-----------------+------+------+------------+
|            76 | kali     | arupukottai     |   71 |   95 |        130 |
|            86 | mani     | mettupatti      |   61 |   85 |        140 |
|            96 | jusvanth | kaakivadanpatti |   91 |   55 |        150 |
+---------------+----------+-----------------+------+------+------------+
3 rows in set (0.00 sec)

mysql> SELECT*FROM ks WHERE M1  between 40 AND 90;
+---------------+-------+-------------+------+------+------------+
| register_name | Name  | City        | M1   | M2   | Percentage |
+---------------+-------+-------------+------+------+------------+
|             6 | manoj | kovilpatti  |   81 |   85 |        190 |
|            76 | kali  | arupukottai |   71 |   95 |        130 |
|            86 | mani  | mettupatti  |   61 |   85 |        140 |
+---------------+-------+-------------+------+------+------------+
3 rows in set (0.00 sec)



mysql> SELECT*FROM ks WHERE Percentage between 150 AND 180;
+---------------+----------+-----------------+------+------+------------+
| register_name | Name     | City            | M1   | M2   | Percentage |
+---------------+----------+-----------------+------+------+------------+
|            96 | jusvanth | kaakivadanpatti |   91 |   55 |        150 |
+---------------+----------+-----------------+------+------+------------+
1 row in set (0.00 sec)


   
mysql> SELECT*FROM ks WHERE City LIKE 'coimbatore';
+---------------+----------+------------+------+------+------------+
| register_name | Name     | City       | M1   | M2   | Percentage |
+---------------+----------+------------+------+------+------------+
|            46 | kirthick | coimbatore |   98 |   98 |        197 |
+---------------+----------+------------+------+------+------------+
1 row in set (0.00 sec)

mysql> ALTER TABLE ks ADD COLUMN Total INT;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> SELECT*FROM ks;
+---------------+----------+-----------------+------+------+------------+-------+
| register_name | Name     | City            | M1   | M2   | Percentage | Total |
+---------------+----------+-----------------+------+------+------------+-------+
|            46 | kirthick | coimbatore      |   98 |   98 |        197 |  NULL |
|             6 | manoj    | kovilpatti      |   81 |   85 |        190 |  NULL |
|            76 | kali     | arupukottai     |   71 |   95 |        130 |  NULL |
|            86 | mani     | mettupatti      |   61 |   85 |        140 |  NULL |
|            96 | jusvanth | kaakivadanpatti |   91 |   55 |        150 |  NULL |
+---------------+----------+-----------------+------+------+------------+-------+
5 rows in set (0.00 sec)

mysql> UPDATE ks SET Total=M1+M2;
Query OK, 5 rows affected (0.01 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> SELECT*FROM ks;
+---------------+----------+-----------------+------+------+------------+-------+
| register_name | Name     | City            | M1   | M2   | Percentage | Total |
+---------------+----------+-----------------+------+------+------------+-------+
|            46 | kirthick | coimbatore      |   98 |   98 |        197 |   196 |
|             6 | manoj    | kovilpatti      |   81 |   85 |        190 |   166 |
|            76 | kali     | arupukottai     |   71 |   95 |        130 |   166 |
|            86 | mani     | mettupatti      |   61 |   85 |        140 |   146 |
|            96 | jusvanth | kaakivadanpatti |   91 |   55 |        150 |   146 |
+---------------+----------+-----------------+------+------+------------+-------+
5 rows in set (0.00 sec)

mysql> ALTER TABLE ks ADD COLUMN Phone INT;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> SELECT*FROM ks;
+---------------+----------+-----------------+------+------+------------+-------+-------+
| register_name | Name     | City            | M1   | M2   | Percentage | Total | Phone |
+---------------+----------+-----------------+------+------+------------+-------+-------+
|            46 | kirthick | coimbatore      |   98 |   98 |        197 |   196 |  NULL |
|             6 | manoj    | kovilpatti      |   81 |   85 |        190 |   166 |  NULL |
|            76 | kali     | arupukottai     |   71 |   95 |        130 |   166 |  NULL |
|            86 | mani     | mettupatti      |   61 |   85 |        140 |   146 |  NULL |
|            96 | jusvanth | kaakivadanpatti |   91 |   55 |        150 |   146 |  NULL |
+---------------+----------+-----------------+------+------+------------+-------+-------+
5 rows in set (0.00 sec)

mysql> UPDATE ks SET Phone=989456778 WHERE Name='kirthick';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE ks SET Phone=989456888 WHERE Name='manoj';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE ks SET Phone=989456999 WHERE Name='mani';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE ks SET Phone=987756999 WHERE Name='kali';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE ks SET Phone=987756432 WHERE Name='jusvanth';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT*FROM ks;
+---------------+----------+-----------------+------+------+------------+-------+-----------+
| register_name | Name     | City            | M1   | M2   | Percentage | Total | Phone     |
+---------------+----------+-----------------+------+------+------------+-------+-----------+
|            46 | kirthick | coimbatore      |   98 |   98 |        197 |   196 | 989456778 |
|             6 | manoj    | kovilpatti      |   81 |   85 |        190 |   166 | 989456888 |
|            76 | kali     | arupukottai     |   71 |   95 |        130 |   166 | 987756999 |
|            86 | mani     | mettupatti      |   61 |   85 |        140 |   146 | 989456999 |
|            96 | jusvanth | kaakivadanpatti |   91 |   55 |        150 |   146 | 987756432 |
+---------------+----------+-----------------+------+------+------------+-------+-----------+
5 rows in set (0.00 sec)

mysql>