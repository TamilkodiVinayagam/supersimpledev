create database joins;
use joins;
create table student(studentid int not null auto_increment primary key,studentname varchar(20) not null,city varchar(20) not null,age int not null,result varchar(20),marks int);
insert into student values(1,	'Vasanth',	'Erode',	21,	'NoRank',	37),
(2,	'Guru',	'Tiruppur',	20,	'NoRank',	28),
(3,	'Gokul',	'Tiruchirapalli',	18,	'Average',	40),
(4,	'Mani',	'Kumarapalayam',	24,	'NoRank',	31),
(5,	'Moorthy',	'Salem',	18,	'VeryGood',	86),
(6,	'Amutha',	'Chennai',	17,	'Average',	61),
(7,	'Jaga',	'Madurai',	24,	'VeryGood',	89),
(8,	'Pavithra',	'Erode',	23,	'Average',	68),
(9,	'Arthi',	'Tiruppur',	17,	'Average',	53),
(10,	'Kabilan',	'Tiruchirapalli',	24,	'Average',	67),
(11,	'Manasi',	'Kumarapalayam',	17,	'Excellent',	97),
(12,	'Suja',	'Salem',	23,	'VeryGood	', 85),
(13,	'Arun',	'Chennai',	22,	'NoRank',	32),
(14,	'Deepa',	'Madurai',	20,	'Average',	49),
(15,	'Sindhu',	'Erode',	22,	'Average',	65),
(16,	'Madhavi',	'Tiruppur',	20,	'Good',	78),
(17,	'Swetha',	'Tiruchirapalli',	17,	'Good',	73),
(18,	'Selvi',	'Kumarapalayam',	22,	'Average',	47),
(19,	'Pooja',	'Salem',	19,	'VeryGood',	88),
(20,	'Lakshmi',	'Chennai',	17,	'Excellent',	99),
(21,	'Veeramani',	'Madurai',	21,	'Average',	67),
(22,	'Pandian',	'Erode',	21,	'Good',	72),
(23,	'Veera',	'Tiruppur',	20,	'Average',	51),
(24,	'Devi',	'Tiruchirapalli',	20,	'Excellent',	96),
(25,	'Devan',	'Kumarapalayam',	21,	'Excellent',	100),
(26,	'Keerthi',	'Salem',	17,	'VeryGood	',89),
(27,	'Venkatesh',	'Chennai',	24,	'Good',	75),
(28,	'Raja',	'Madurai',	24,	'Average',	42);
select * from student;
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
from student;
SELECT `student information`.`Student ID`,
    `student information`.`Student Name`,
    `student information`.`City/State`,
    `student information`.`Age`,
    `student information`.`Result`,
    `student information`.`Marks`
FROM `student_info`.`student information`;

drop table attendance;
create table attendance(attid int not null auto_increment primary key,studentname varchar(20),studentid int,attdate date,attstatus varchar(2));
update attendance set attstatus=trim(attstatus);
insert into attendance values
(1,	'Vasanth',	1,	'2022-11-01' ,	'P'),
(2,	'Vasanth',	1,	'2022-11-02' ,	'P'),
(3,	'Vasanth',	1,	'2022-11-03' ,	' P'),
(4,	'Vasanth',	1,	'2022-11-04' ,	' A'),
(5,	'Guru',	2,	'2022-11-01' ,	' P'),
(6,	'Guru',	2,	'2022-11-02' ,	' P'),
(7,	'Guru',	2,	'2022-11-03' ,	' A'),
(8,	'Guru',	2,	'2022-11-04' ,	' A'),
(9,	'Gokul',	3,	'2022-11-01' ,	' A'),
(10,	'Gokul',	3,	'2022-11-02' ,	' A'),
(11,	'Gokul',	3,	'2022-11-03' ,	' P'),
(12,	'Gokul',	3,	'2022-11-04' ,	' A'),
(13,	'Mani',	4,	'2022-11-01' ,	' A'),
(14,	'Mani',	4,	'2022-11-02' ,	' P'),
(15,	'Mani',	4,	'2022-11-03' ,	' P'),
(16,	'Mani',	4,	'2022-11-04' ,	' A'),
(17,	'Moorthy',	5,	'2022-11-01' ,	' P'),
(18,	'Moorthy',	5,	'2022-11-02' ,	' A'),
(19,	'Moorthy',	5,	'2022-11-03' ,	' P'),
(20,	'Moorthy',	5,	'2022-11-04' ,	' A'),
(21,	'Amutha',	6,	'2022-11-01' ,	' P'),
(22,	'Amutha',	6,	'2022-11-02' ,	' P'),
(23,	'Amutha',	6,	'2022-11-03' ,	' A'),
(24,	'Amutha',	6,	'2022-11-04' ,	' A'),
(25,	'Jaga',	7,	'2022-11-01' ,	' A'),
(26,	'Jaga',	7,	'2022-11-02' ,	' A'),
(27,	'Jaga',	7,	'2022-11-03' ,	' P'),
(28,	'Jaga',	7,	'2022-11-04' ,	' P'),
(29,	'Pavithra',	8,	'2022-11-01' ,	' P'),
(30,	'Pavithra',	8,	'2022-11-02' ,	' A'),
(31,	'Pavithra',	8,	'2022-11-03' ,	' P'),
(32,	'Pavithra',	8,	'2022-11-04' ,	' A'),
(33,	'Arthi',	9,	'2022-11-01' ,	' A'),
(34,	'Arthi',	9,	'2022-11-02' ,	' A'),
(35,	'Arthi',	9,	'2022-11-03' ,	' A'),
(36,	'Arthi',	9,	'2022-11-04' ,	' P'),
(37,	'Kabilan',	10,	'2022-11-01' ,	' P'),
(38,	'Kabilan',	10,	'2022-11-02' ,	' P'),
(39,	'Kabilan',	10,	'2022-11-03' ,	' A'),
(40,	'Kabilan',	10,	'2022-11-04' ,	' P'),
(41,	'Manasi',	11,	'2022-11-01' ,	' P'),
(42,	'Manasi',	11,	'2022-11-02' ,	' A'),
(43,	'Manasi',	11,	'2022-11-03' ,	' A'),
(44,	'Manasi',	11,	'2022-11-04' ,	' P'),
(45,	'Suja',	12,	'2022-11-01' ,	' P'),
(46,	'Suja',	12,	'2022-11-02' ,	' A'),
(47,	'Suja',	12,	'2022-11-03' ,	' P'),
(48,	'Suja',	12,	'2022-11-04' ,	' P'),
(49,	'Arun',	13,	'2022-11-01' ,	' P'),
(50,	'Arun',	13,	'2022-11-02' ,	' P'),
(51,	'Arun',	13,	'2022-11-03' ,	' A'),
(52,	'Arun',	13,	'2022-11-04' ,	' P'),
(53,	'Deepa',	14,	'2022-11-01' ,	' P'),
(54,	'Deepa',	14,	'2022-11-02' ,	' A'),
(55,	'Deepa',	14,	'2022-11-03' ,	' P'),
(56,	'Deepa',	14,	'2022-11-04' ,	' A'),
(57,	'Sindhu',	15,	'2022-11-01' ,	' P'),
(58,	'Sindhu',	15,	'2022-11-02' ,	' A'),
(59,	'Sindhu',	15,	'2022-11-03' ,	' P'),
(60,	'Sindhu',	15,	'2022-11-04' ,	' A'),
(61,	'Madhavi',	16,	'2022-11-01' ,	' P'),
(62,	'Madhavi',	16,	'2022-11-02' ,	' P'),
(63,	'Madhavi',	16,	'2022-11-03' ,	' A'),
(64,	'Madhavi',	16,	'2022-11-04' ,	' P'),
(65,	'Swetha',	17,	'2022-11-01' ,	' A'),
(66,	'Swetha',	17,	'2022-11-02' ,	' P'),
(67,	'Swetha',	17,	'2022-11-03' ,	' P'),
(68,	'Swetha',	17,	'2022-11-04' ,	' P'),
(69,	'Selvi',	18,	'2022-11-01' ,	' P'),
(70,	'Selvi',	18,	'2022-11-02' ,	' P'),
(71,	'Selvi',	18,	'2022-11-03' ,	' P'),
(72,	'Selvi',	18,	'2022-11-04' ,	' P'),
(73,	'Pooja',	19,	'2022-11-01' ,	' A'),
(74,	'Pooja',	19,	'2022-11-02' ,	' A'),
(75,	'Pooja',	19,	'2022-11-03' ,	' A'),
(76,	'Pooja',	19,	'2022-11-04' ,	' P'),
(77,	'Lakshmi',	20,	'2022-11-01' ,	' A'),
(78,	'Lakshmi',	20,	'2022-11-02' ,	' A'),
(79,	'Lakshmi',	20,	'2022-11-03' ,	' P'),
(80,	'Lakshmi',	20,	'2022-11-04' ,	' P'),
(81,	'Veeramani',	21,	'2022-11-01' ,	' A'),
(82,	'Veeramani',	21,	'2022-11-02' ,	' A'),
(83,	'Veeramani',	21,	'2022-11-03' ,	' P'),
(84,	'Veeramani',	21,	'2022-11-04' ,	' A'),
(85,	'Pandian',	22,	'2022-11-01' , ' P'),
(86,	'Pandian',	22,	'2022-11-02' , ' P'),
(87,	'Pandian',	22,	'2022-11-03' ,	' P'),
(88,	'Pandian',	22,	'2022-11-04' ,	' A'),
(89,	'Veera',	23,	'2022-11-01' ,	' P'),
(90,	'Veera',	23,	'2022-11-02' ,	' A'),
(91,	'Veera',	23,	'2022-11-03' ,	' P'),
(92,	'Veera',	23,	'2022-11-04' ,	' A'),
(93,	'Devi',	24,	'2022-11-01' ,	' P'),
(94,	'Devi',	24,	'2022-11-02' ,	' P'),
(95,	'Devi',	24,	'2022-11-03' ,	' A'),
(96,	'Devi',	24,	'2022-11-04' ,	' A'),
(97,	'Devan',	25,	'2022-11-01' ,	' A'),
(98,	'Devan',	25,	'2022-11-02' ,	' A'),
(99,	'Devan',	25,	'2022-11-03' ,	' P'),
(100,	'Devan',	25,	'2022-11-04' ,	' P'),
(101,	'Keerthi',	26,	'2022-11-01' ,	' P'),
(102,	'Keerthi',	26,	'2022-11-02' ,	' P'),
(103,	'Keerthi',	26,	'2022-11-03' ,	' A'),
(104,	'Keerthi',	26,	'2022-11-04' ,	' A'),
(105,	'Venkatesh',	27,	'2022-11-01' ,	' P'),
(106,	'Venkatesh',	27,	'2022-11-02' ,	' A'),
(107,	'Venkatesh',	27,	'2022-11-03' ,	' P'),
(108,	'Venkatesh',	27,	'2022-11-04' ,	' P'),
(109,	'Raja',	28,	'2022-11-01' ,              ' P'),
(110,	'Raja',	28,	'2022-11-02' ,               ' A'),
(111,	'Raja',	28,	'2022-11-03' ,               ' P'),
(112,	'Raja',	28,	'2022-11-04' ,	' P');
select * from attendance;
select * from student inner join attendance on student.studentid=attendance.studentid;
select student.studentname,student.city,student.age,attendance.attid,attendance.studentid,attendance.attstatus from student inner join attendance on student.studentid=attendance.studentid;
select studentid,count(attdate) as workingdays from attendance group by studentid;
SELECT attendance.studentid,student.studentname, COUNT(IF(attstatus = 'P',attdate,NULL)) AS presentcount,COUNT(IF(attstatus = 'A',attdate,NULL)) AS absentcount FROM student inner join attendance where student.studentid=attendance.studentid group by studentid;
create database jointest;
use jointest;
create table student(stuid int primary key,stname varchar(20),city varchar(20),age int,rollno int,community varchar(5),courseid int);
create table courseinfo(courseid int primary key,coursename varchar(5));
create table mark(markid int primary key,stuid int,finance int,cost int,corporate int);
insert into student values(1,		'Vasanth',		'Erode',		21,		13001,		'BC',		1),
(2,		'Guru',		'Tiruppur',		20,		13002,		'MBC',		1),
(3,		'Gokul',		'Tiruchirapalli',		18,		13003,		'SC',		1),
(4,		'Mani',		'Kumarapalayam',		24,		13004,		'BC',		1),
(5,		'Moorthy',		'Salem',		18,		13005,		'MBC',		2),
(6,		'Amutha',		'Chennai',		17,		13006,		'SC',		2),
(7,		'Jaga',		'Madurai',		24,		13007,		'BC',		2),
(8,		'Pavithra',		'Erode',	23,		13008,		'MBC',		2),
(9,		'Arthi',		'Tiruppur',		17,		13009,		'SC',		3),
(10,		'Kabilan',		'Tiruchirapalli',		24,		13010,		'BC',		3),
(11,		'Manasi',		'Kumarapalayam',		17,		13011,		'MBC',		3),
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
insert into courseinfo values(1,'CMA'),(2,'CA'),(3,'CS');
insert into mark values(14001,		1,		75,			76,		65),
(14002,		2,		92,			90,		19),
(14003,		3,		38,			37,		46),
(14004,		4,		39,			90,		58),
(14005,		5,		34,			89,		20),
(14006,		6,		44,			38,		60),
(14007,		7,		50,			26,		98),
(14008,	        8,		59,			78,		82),
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
SELECT * FROM student inner JOIN courseinfo ON student.courseid = courseinfo.courseid inner JOIN mark ON student.stuid = mark.stuid;
SELECT student.stname, courseinfo.courseid,courseinfo.coursename, mark.finance FROM student inner JOIN courseinfo ON
 student.courseid = courseinfo.courseid inner JOIN mark ON student.stuid = mark.stuid where courseinfo.courseid=1 and mark.finance>80;
select Student.StName, Student.City, Student.stuid, Student.CourseID, CourseInfo.CourseName, Mark.Finance, Mark.Cost, Mark.Corporate,
(Mark.Finance+Mark.Cost+Mark.Corporate) as Total_Marks, 
Round((Mark.Finance+Mark.Cost+Mark.Corporate)/3,0) as Average,

case
When Mark.Cost >=35 and Mark.Finance >=35
 and Mark.Corporate >=35 Then 'Pass'

Else  'Fail'


End as Marks_Results,

case
When Mark.Cost >=35 and Mark.Finance >=35
 and Mark.Corporate >=35 Then 

Case

When Round((Mark.Finance+Mark.Cost+Mark.Corporate)/3,0) >=85
and Round((Mark.Finance+Mark.Cost+Mark.Corporate)/3,0)<=100 Then
'A'

When Round((Mark.Finance+Mark.Cost+Mark.Corporate)/3,0) >=75
and Round((Mark.Finance+Mark.Cost+Mark.Corporate)/3,0)<=84 Then
'B'

When Round((Mark.Finance+Mark.Cost+Mark.Corporate)/3,0) >=65
and Round((Mark.Finance+Mark.Cost+Mark.Corporate)/3,0)<=74 Then
'C'


Else  'D'


End 


Else 'No_Grade'
End As Marks_Grade


 from Student inner join Courseinfo on Student.CourseID = CourseInfo.CourseID 
inner join Mark on Student.StuId=Mark.stuID
Where CourseInfo.CourseName = 'CMA' having Marks_Results = 'Pass';
show tables;


