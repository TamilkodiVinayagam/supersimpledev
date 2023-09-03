create database sqlproject;
use sqlproject;
create table student_info(student_id int not null auto_increment primary key,student_name varchar(20),city varchar(20),age int,roll_no int,community varchar(5),course_id int, foreign key(course_id) references course_info(course_id));
create table course_info(course_id int not null primary key auto_increment,course_name varchar(20));
create table mark_info(mark_id int not null primary key auto_increment,student_id int,finance int,cost int,corporate int,foreign key(student_id) references student_info(student_id));
show tables;
describe student_info;
insert into student_info values(1,		'Vasanth',		'Erode',		21,		13001,		'BC',		1),
(2,		'Guru',		'Tiruppur',		20,		13002,		'MBC',		1),
(3,		'Gokul',		'Tiruchirapalli',		18,		13003,		'SC',		1),
(4,		'Mani',		'Kumarapalayam',		24,		13004,		'BC',		1),
(5,		'Moorthy',		'Salem',		18,		13005,		'MBC',		2),
(6,		'Amutha',		'Chennai',		17,		13006,		'SC',		2),
(7,		'Jaga',		'Madurai',		24,		13007,		'BC',		2),
(8,		'Pavithra',		'Erode',	23,		13008,		'MBC',		2),
(9,		'Arthi',		'Tiruppur',		17,		13009,		'SC',		3),
(10,		'Kabilan',		'Tiruchirapalli',		24,		13010,		'BC',		3),
(11,		'Manasi',		'Kumarapalayam',		17,		13011,	'MBC',		3),
(12,		'Suja',		'Salem',		23,		13012,		'SC',		3),
(13,		'Arun',		'Chennai',		22,		13013,		'BC',		3),
(14,		'Deepa',		'Madurai',		20,		13014,		'MBC',		1),
(15,		'Sindhu',		'Erode',		22,		13015,		'SC',		1),
(16,		'Madhavi',		'Tiruppur',		20,		13016,		'BC',		1),
(17,		'Swetha',		'Tiruchirapalli',		17,	13017,		'MBC',		1),
(18,		'Selvi',		'Kumarapalayam',		22,		13018,		'SC',		3),
(19,		'Pooja',		'Salem',		19,	13019,		'BC',		1),
(20,		'Lakshmi',		'Chennai',		17,		13020,		'MBC',		2),
(21,		'Veeramani',		'Madurai',		21,		13021,		'SC',		1),
(22,		'Pandian',		'Erode',		21,		13022,		'BC',		1),
(23,		'Veera',		'Tiruppur',		20,		13023,		'MBC',		2),
(24,		'Devi',		'Tiruchirapalli',		20,	13024,		'SC',	3),
(25,		'Devan',		'Kumarapalayam',		21,		13025,		'BC',		1),
(26,		'Keerthi',	'Salem',		17,		13026,		'MBC',		2),
(27,	'Venkatesh',		'Chennai',		24,		13027,		'SC',		1),
(28,		'Raja',		'Madurai',		24,		13028,		'SC',		3);
insert into course_info values(1,'CMA'),(2,'CA'),(3,'CS');
insert into mark_info values(14001,		1,		75,			76,		65),
(14002,		2,		92,			90,		19),
(14003,		3,		38,			37,		46),
(14004,		4,		39,			90,		58),
(14005,		5,		34,			89,		20),
(14006,		6,		44,			38,		60),
(14007,		7,		50,			26,		98),
(14008,	    8,		59,			78,		82),
(14009,		9,		89,			47,		88),
(14010,		10,		20,			25,		100),
(14011,		11,		74,			50,		100),
(14012,		12,		81,			62,		31),
(14013,		13,		60,			19,		33),
(14014,		14,		77,			22,		23),
(14015,		15,		68,			38,		35),
(14016,		16,		31,			60,		83),
(14017,		17,		83,			53,		79),
(14018,		18,		37,			79,		88),
(14019,		19,		55,			76,		76),
(14020,		20,		25,			40,		81),
(14021,		21,		38,			87,		48),
(14022,		22,		84,			63,		72),
(14023,		23,		80,			44,		64),
(14024,		24,		53,			46,		59),
(14025,		25,		79,			48,		94),
(14026,		26,		48,			66,		70),
(14027,		27,		61,			45,		74),
(14028,		28,		24,			95,		58);
select * from student_info;
select course_name from course_info;
select * from mark_info;
select distinct city from student_info;
select count(distinct city) from student_info;
select student_name from student_info where city='chennai';
select student_name from student_info where city='chennai' and age>18;
select student_name from student_info where city='chennai' or city='madurai';
select student_name from student_info where not city='chennai';
select student_name from student_info order by student_name asc;
select student_id,finance from mark_info order by finance desc;
select student_name,city from student_info order by student_name asc,city desc;
select student_id,student_name from student_info where student_name is null;
select student_id,student_name from student_info where student_name is not null;
update student_info set student_name='Vasanthi' where student_id=1;
delete from mark_info where student_id=28;
delete from student_info where student_id=28;
select * from student_info limit 3;
select * from student_info limit 10,5;
select * from student_info order by student_id desc limit 0,5;
select min(finance) as min_mark,max(finance) as max_mark from mark_info;
select sum(finance),avg(finance) from mark_info;
select student_name from student_info where student_name like 'a%' or student_name like 'g%';
select student_name from student_info where student_name not like 'a%' or student_name not like 'g%';
select student_name from student_info where student_name like '%a' or student_name like '%i';
select student_name from student_info where student_name like '_a%' or student_name like '_i%';
select city from student_info where city regexp '^[CTS]';
select city from student_info where city regexp '[ir]$';
select student_name,city from student_info where city in ('chennai','salem');
select student_name,city from student_info where city not in ('chennai','salem');
select course_id,student_name from student_info where course_id in (select course_id from course_info);
select student_id,(finance+cost+corporate) as total from mark_info;
select finance from mark_info where finance between 50 and 75;
select finance from mark_info where finance not between 50 and 75;
SELECT * FROM student_info inner JOIN course_info ON student_info.course_id = course_info.course_id inner JOIN mark_info ON student_info.student_id = mark_info.student_id;
SELECT student_info.student_name, course_info.course_id,course_info.course_name, mark_info.finance FROM student_info inner JOIN course_info ON
 student_info.course_id = course_info.course_id inner JOIN mark_info ON student_info.student_id = mark_info.student_id where course_info.course_id=1 and mark_info.finance>80;
select Student_info.Student_Name, Student_info.City, Student_info.student_id, Student_info.Course_ID, Course_Info.Course_Name, Mark_info.Finance, Mark_info.Cost, Mark_info.Corporate,
(mark_info.finance+mark_info.cost+mark_info.corporate) as total_marks,
round((mark_info.finance+mark_info.cost+mark_info.corporate)/3,0) as avg_marks,
case  
when mark_info.finance>=35 and mark_info.cost>=35 and mark_info.corporate>=35 then 'pass'
else 'fail' 
End as results,
case  
when mark_info.finance>=35 and mark_info.cost>=35 and mark_info.corporate>=35 then 
case 
when round((mark_info.finance+mark_info.cost+mark_info.corporate)/3,0)>=85 and
round((mark_info.finance+mark_info.cost+mark_info.corporate)/3,0)<=100 then 'A'

when round((mark_info.finance+mark_info.cost+mark_info.corporate)/3,0)>=75 and
round((mark_info.finance+mark_info.cost+mark_info.corporate)/3,0)<=84 then 'B'

when round((mark_info.finance+mark_info.cost+mark_info.corporate)/3,0)>=65 and
round((mark_info.finance+mark_info.cost+mark_info.corporate)/3,0)<=74 then 'C'

else 'D'
end
else 'No Grade'

end as grades

from student_info inner join course_info on student_info.course_id=course_info.course_id inner join mark_info on student_info.student_id=mark_info.student_id where course_info.course_name='CMA' having
results ='pass';
select city,
case 
when city='erode' then 1000
when city='Tiruppur' then 1500
when city='Tiruchirapalli' then 2000
when city='Kumarapalayam' then 800
when city='Salem' then 2500
when city='Chennai' then 500
when city='Madurai' then 1700
End as Bus_Pass_Amount
from student_info;
select count(student_name),city from student_info group by city;
create view chennaistudents as select student_name from student_info where city='chennai';
select * from chennaistudents;
create or replace view chennaistudents as select student_id,student_name,city from student_info where city='chennai';
delimiter //
CREATE DEFINER=`root`@`localhost` PROCEDURE `salem_students`(IN procity varchar(20),IN proage int)
BEGIN
select * from student_info where city=procity and age=proage;
END //
delimiter ;
call salem_students('salem',18);
call salem_students('madurai',20);




