


SELECT * FROM employee ORDER BY emp_name;

create table emp (eid INT primary key, ename varchar(10), salary double);

insert into emp (eid, ename, salary) values (101, 'Sonu', 90000);
insert into emp (eid, ename, salary) values (102, 'Monu', 95000);
insert into emp (eid, ename, salary) values (103, 'Tonu', 85000);
insert into emp (eid, ename, salary) values (104, 'Ponu', 80000);
insert into emp (eid, ename, salary) values (105, 'Gonu', 99000);

SELECT * FROM emp ORDER BY eid;
CREATE TABLE countrylanguage (CountryCode VARCHAR(40) PRIMARY KEY, Language VARCHAR(40), IsOfficial VARCHAR(40), Percentage DOUBLE);

SELECT * FROM countrylanguage;

DELETE FROM countrylanguage;

DROP TABLE countrylanguage;

SELECT * FROM emp ORDER BY eid;


-- SQL Errors and Warnings -- 


SELECT COUNT(*) FROM film;

SELECT COUNT(*) FROM film_text;

-- SELECT * FROM city WHERE city LIKE ORDER BY city_id LIMIT;

SELECT * FROM city WHERE city LIKE 'a%' ORDER BY city_id;

SELECT * FROM vaman;

show errors;

SELECT * FROM city WHERE city = 'vaman';

GET DIAGNOSTICS @p1 = NUMBER, @p2 = ROW_COUNT;

DROP TABLE test.no_such_table;

GET DIAGNOSTICS CONDITION 1 @p1 = RETURNED_SQLSTATE, @p2 = MESSAGE_TEXT, @P3 = MYSQL_ERRNO;





SELECT COUNT(*) FROM film;

SELECT COUNT(*) FROM film_text;

-- SELECT * FROM city WHERE city LIKE ORDER BY city_id LIMIT;

SELECT * FROM city WHERE city LIKE 'a%' ORDER BY city_id;



SELECT * FROM emp ORDER BY eid;

CREATE OR REPLACE VIEW emps_with_high_salary AS SELECT * FROM emp WHERE salary > 95000 ORDER BY salary; 

SELECT * FROM emps_with_high_salary;

DELETE FROM emp WHERE ename = 'Aliya';

DROP VIEW emps_with_high_salary;

INSERT INTO emp VALUES (116, 'Abcd', 95500);
INSERT INTO emp VALUES (117, 'Aliya', 96000);

SET SQL_SAFE_UPDATES = 0; -- delete works 
SET SQL_SAFE_UPDATES = 1; -- delete does not work 

SELECT * FROM emp;

DESCRIBE emp;

DESC emp;

SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME ='emps_with_high_salary';

SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME ='emp';

-- 101, 'Sonu', 90000
-- 101, 'Sonu', 90000 -- this 


CREATE TABLE string_demo (c1 CHAR(10), c2 VARCHAR(10), c3 TEXT);

DROP TABLE string_demo;


SELECT * FROM string_demo;


SELECT UPPER('aBcD'), LOWER('aBcD');

SELECT length('aBcD');

SELECT concat('aaa', 'bbb');

SELECT right('9876543210', 4);


SELECT concat(concat( 'Account ending in ', right('9876543210', 4), ' debited with Rs,100/-.')) as message;







-- CREATE TABLE t1(c1 INT, c2 VARCHAR(10));

-- INSERT INTO t1 VALUES(10, 'abc');
-- INSERT INTO t1 VALUES(10, 'abc');

-- SELECT * FROM t1;
-- SELECT c1, c2 FROM t1;
-- SELECT c1, c2 FROM t1;


SELECT 10 / 3 AS output, 10 div 3 AS output2;



SELECT round(5462738.827439);
SELECT round(5462738.827439, 2);
SELECT round(5462738.827439, 4);
SELECT round(5462738.827439, -1);
SELECT round(5462738.827439, -2);
SELECT round(5462738.827439, -3);


SELECT sysdate();


-- bank transfer 
-- debit from payer's account   100 - 20 = 80  
-- credit to payee's account    100 + 20 = 120 


set autocommit = off;
set autocommit = on;

SELECT * from emp order by eid;
commit; 
rollback;

update emp set salary = salary * 2 where eid = 102;

create table t5 (c1 int); -- DDL operatoins == commit ;

-- query optimizaton 

-- DML operations - INSERT UPDATE DELETE  
-- DQL DRL operations - SELECT 

SELECT * FROM emp WHERE salary > 20000 AND salary < 40000;
SELECT * FROM emp;

CREATE TABLE t6 (c1 INT, c2 VARCHAR(10), INDEX (c2));

CREATE TABLE t7 (c1 INT, c2 VARCHAR(10), c3 DOUBLE);
CREATE INDEX t7_c3_index ON t7(c3);




