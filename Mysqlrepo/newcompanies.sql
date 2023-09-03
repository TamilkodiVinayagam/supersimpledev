create database newcompanies;
use newcompanies;
create table company(companycode varchar(20),founder varchar(20));
insert into company values('C1','Monika'),('C2','Samantha');
create table lead_manager(lmcode varchar(20),companycode varchar(20));
insert into lead_manager values('LM1','C1'),('LM2','C2');
create table sm(smcode varchar(20),lmcode varchar(20));
insert into sm values('SM1','LM1'),('SM2','LM1'),('SM3','LM2');
create table m(mcode varchar(20),smcode varchar(20));
insert into m values('M1','SM1'),('M2','SM3'),('M3','SM3');
create table emp(empcode varchar(20),mcode varchar(20));
insert into emp values('E1','M1'),('E2','M1'),('E3','M2'),('E4','M3');
select company.companycode,company.founder,count(distinct lead_manager.lmcode),count(distinct sm.smcode),count(distinct m.mcode),count(distinct emp.empcode) from company left join lead_manager on company.companycode=
lead_manager.companycode left join sm on lead_manager.lmcode=sm.lmcode left join m on sm.smcode=m.smcode left join emp on m.mcode=emp.mcode group by company.companycode,company.founder order by companycode asc;




