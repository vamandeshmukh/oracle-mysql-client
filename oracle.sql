


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

INSERT INTO emp VALUES (116, 'Abcd', 95500);

SET SQL_SAFE_UPDATES = 0;

