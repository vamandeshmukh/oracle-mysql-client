


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



