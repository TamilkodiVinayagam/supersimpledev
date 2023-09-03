create database bct;
use bct;
create table emp (EmpNo int, EmpName varchar(20), Job varchar(20), Mgr int, HireDate date, Sal int, Comm int, Dep_No int,
Primary key (EmpNo));
Select * from Emp;
Insert into Emp (EmpNo, Empname, Job, mgr, Hiredate, Sal, Comm, Dep_no)
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
create table dep (depNo int, depName varchar(20), location varchar(20),Primary key (depNo));
insert into dep values(10,	'ACCOUNTING',	'NEW YORK'),(20,	'RESEARCH',	'DALLAS'),(30,	'SALES',	'CHICAGO'),(40,	'OPERATORS',	'BOSTON');
select * from dep;
select empname from emp where empname like 'S%' and length(empname)=5; 
 select * from emp where length(empname) = 4 and empname like '__R%';
select empname from emp where empname like '__r%' and length(empname)=4;
select empname from emp where empname like 'S%H' and length(empname)=5;
select EmpNo,Empname,hiredate from emp where hiredate like '%-01-%';
SELECT * FROM emp WHERE date_format(hiredate,'%b') LIKE '_A%';
select empname, sal from emp where sal like '%0' and length(sal)=4;
select empname from emp where empname like '%ll%';
select empname,hiredate from emp where hiredate like '__80-%';
select empname,dep_no from emp where dep_no!=20;
select empno,empname,job,sal from emp where job!='president' or empno not in(select mgr from emp) order by sal;
select empname,hiredate from emp where hiredate not like '1981%';
select empno,empname from emp where empno not like '78%';
select empno,empname from emp where empno in (select mgr from emp);
select empno,empname,hiredate from emp where hiredate not like '%-03-%';
select empno,empname,job,dep_no from emp where job='clerk' and dep_no=20;
select * from emp where empname='smith';
select dep.location from dep inner join emp on dep.depno=emp.dep_no where empname='smith';
select emp.EmpNo, emp.Empname, emp.Job, emp.mgr, emp.Hiredate, emp.Sal, emp.Comm, emp.Dep_no,dep.depname,dep.location from emp inner join dep on emp.dep_no=dep.depno where depname in('accounting','research') order by depno;
select empname,job from emp where job='salesman';
select empname,sal from emp where sal>2850;
select empname,hiredate from emp where hiredate< '1981/11/17';
select empno,empname,depno,depname,location from dep inner join emp on dep.depno=emp.dep_no;
select emp.empno,emp.empname,emp.sal,dep.depname,dep.location from emp  inner join dep  on emp.dep_no=dep.depno where empno in (select mgr from emp) and 
emp.job='analyst'and dep.location in('newyork','dallas') and TIMESTAMPDIFF(YEAR, hiredate, CURDATE()) > 7 and comm is null order by dep.location asc;    
 select emp.empno,emp.empname,emp.sal,dep.depname,dep.location,emp.job from emp inner join dep on emp.dep_no=dep.depno 
 where (dep.location='chicago' or dep.depname='accounting') and (emp.sal*12)>28000 and emp.sal not in (3000,2800) and 
 emp.empno not in (select mgr from emp) and emp.empno  like '__7%' and emp.empno  like '__8%' order by dep.depno, emp.job desc;
 create table empgrades as select EmpNo, Empname, Job, mgr, Hiredate, Sal, Comm, Dep_no,
 CASE
	when (sal>=800 and sal<=1300) then 5
	when (sal>=1301 and sal<=1500) then 4
	when (sal>=1501 and sal<=2100) then 3 
	when (sal>=2101 and sal<=3100) then 2 
	else 1 
 END as grades 
 from emp order by grades;
 
 select * from empgrades ;
 select * from empgrades where grades in(2,3);
 select empno,grades,job from empgrades where grades in(4,5) or (job='analyst' and empno in (select mgr from empgrades));
 select emp.empno,emp.empname,emp.sal,dep.depname,dep.depno,(emp.sal*12) as annsal,
 CONCAT(
    FLOOR(TIMESTAMPDIFF(MONTH,emp.hiredate, CURDATE()) / 12), ' years, ',
    MOD(TIMESTAMPDIFF(MONTH, emp.hiredate, CURDATE()), 12), ' months, ',
    FLOOR(DATEDIFF(CURDATE(), DATE_ADD(emp.hiredate, INTERVAL TIMESTAMPDIFF(MONTH, emp.hiredate, CURDATE()) MONTH))) % 30, ' days'
  ) AS experience, CASE
	when (sal>=800 and sal<=1300) then 5
	when (sal>=1301 and sal<=1500) then 4
	when (sal>=1501 and sal<=2100) then 3 
	when (sal>=2101 and sal<=3100) then 2 
	else 1 
 END as grades FROM emp inner join dep on emp.dep_no=dep.depno where dep.depno in (10,20);
 
 SELECT EmpNo,Empname,Job,mgr,Hiredate,sal,Comm,Dep_no,location,grades FROM (
SELECT emp.EmpNo,emp.Empname,emp.Job,emp.mgr,emp.Hiredate,emp.sal,emp.Comm,emp.Dep_no,dep.location,
        CASE
            WHEN sal >= 800 AND sal <= 1300 THEN 5
            WHEN sal >= 1301 AND sal <= 1500 THEN 4
            WHEN sal >= 1501 AND sal <= 2100 THEN 3
            WHEN sal >= 2101 AND sal <= 3100 THEN 2
            ELSE 1
        END AS grades FROM emp INNER JOIN dep ON emp.dep_no = dep.depno
    WHERE dep.depname != 'operators'
        AND emp.job LIKE '%a%'
        AND emp.hiredate LIKE '1981%'
        AND DATE_FORMAT(emp.hiredate, '%b') NOT IN ('Mar', 'Sep')
        AND emp.sal NOT LIKE '%00'
) AS subquery
WHERE
    grades IN (2, 3, 4)
ORDER BY
    grades;
 select E.empno,E.empname,E.sal,D.depname,D.location,E.dep_no,E.job from emp E,dep D
where (D.location = 'CHICAGO' or D.depname = 'ACCOUNTING') and E.dep_no=D.depno 
and E.empno in (select E.empno from emp E where (12*E.sal) > 28000 and E.sal not in
(3000,2800) and E.job !='MANAGER' and ( E.empno like '__7%' or E.empno like '__8%'))
order by E.dep_no asc , E.job desc;
select emp.empno,emp.empname,emp.sal,dep.depname,dep.location,emp.job from emp inner join dep on emp.dep_no=dep.depno 
 where (dep.location='chicago' or dep.depname='accounting') and (emp.sal*12)>28000 and emp.sal not in (3000,2800) and 
 emp.empno not in (select mgr from emp) and (emp.empno  like '__7%' or emp.empno  like '__8%') order by dep.depno, emp.job desc;
select empname,hiredate from emp where hiredate > '1981-02-20';
create index i_hiredate on emp(hiredate);
show index from emp from bct;