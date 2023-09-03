create database sqltest;
use sqltest;
create table emp (Emp_No int, Emp_Name varchar(20), Job varchar(20), Mgr int, Hire_Date date, Sal int, Comm int, Dep_No int,
Primary key (Emp_No));
Insert into Emp (Emp_No, Emp_name, Job, mgr, Hire_date, Sal, Comm, Dep_no)
values (7369,	'SMITH',	'CLERK',	7902,	'1980-12-17',	800,	Null,	20),
(7499,	'ALLEN',	'SALESMAN',	7698,	'1981-02-20',	1600,	300,	30),
(7521,	'WARD',	'SALESMAN',	7698,	'1981-02-22',	1250,	500,	30),
(7566,	'JONES',	'MANAGER',	7839,	'1981-04-02',	2975,	Null,	20),
(7654,	'MARTIN',	'SALESMAN',	7698,	'1981-09-28',	1250,	Null,	30),
(7698,	'BLAKE',	'MANAGER',	7839,	'1981-05-01',	2850,	1400,	30),
(7782,	'CLARK',	'MANAGER',	7839,	'1981-06-09',	2450,	Null,	10),
(7788,	'SCOTT',	'ANALYST',	7566,	'1982-12-09',	3000,	Null,	20),
(7839,	'KING',	'PRESIDENT',	Null,	'1981-11-17',	5000,	Null,	10),
(7844,	'TURNER',	'SALESMAN',	7698,	'1981-09-08',	1500,	0,	30),
(7876,	'ADAMS',	'CLERK',	7788,	'1983-01-12',	1100,	Null,	20),
(7900,	'JAMES',	'CLERK',	7698,	'1981-12-03',	950,	Null,	30),
(7902,	'FORD',	'ANALYST',	7566,	'1981-12-03',	3000,	Null,	20),
(7934,	'MILLER',	'CLERK',	7782,	'1982-01-23',	1300,	Null,	10);
Select * from Emp;
select distinct job from emp;
select * from emp order by sal;
select dep_no,job from emp order by dep_no asc,job desc;
select * from emp order by dep_no asc,job desc;
select distinct job from emp order by job desc;
select * from emp where emp_no in(select mgr from emp);
select * from emp where hire_date < '1981-01-01';
select Emp_No from emp;
select Emp_No, Emp_name,Sal as Monthly_Salary ,Sal/30 as dailysalary, 12*Sal as annsal from emp order by annsal asc;
select * from emp where comm>sal;
select * from emp where hire_date>'1981-12-31' order by job;
SELECT emp_no,emp_name,sal,datediff(curdate(),hire_date) as "Experience" FROM emp WHERE (sal/30)>100;
SELECT emp_no,emp_name,sal,CONCAT(
    FLOOR(TIMESTAMPDIFF(MONTH, hire_date, CURDATE()) / 12), ' years, ',
    MOD(TIMESTAMPDIFF(MONTH, hire_date, CURDATE()), 12), ' months, ',
    FLOOR(DATEDIFF(CURDATE(), DATE_ADD(hire_date, INTERVAL TIMESTAMPDIFF(MONTH, hire_date, CURDATE()) MONTH))) % 30, ' days'
  ) AS experience FROM emp WHERE (sal/30)>100;
select * from emp where job='clerk' or job='analyst' order by job desc;
select * from emp where hire_date in('1981-05-01','1981-12-03','1981-12-17','1980-01-19' ) order by hire_date asc;
select * from emp where dep_no=10 or dep_no=20;
select * from emp where hire_date between '1981-01-01' and '1981-12-31';
select * from emp where hire_date between '1980-08-01' and '1980-08-31';
select * from emp where 12*Sal between 22000 and 45000;
SELECT emp_name FROM emp WHERE LENGTH(trim(emp_name))=5;
alter table emp modify emp_name varchar(21);
describe emp;

