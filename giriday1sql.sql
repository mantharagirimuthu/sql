create table student(
idstudent int,
name varchar(20),
marks int
);
insert into student values(1,'giri',428);
insert into student values(2,'san',500);
insert into student values(3,'rag',800);
select * from student group by name having idstudent>2;
create table department(
subject varchar(20),
depid int
);
insert into department values('maths',1);
insert into department values('cse',2);
insert into department values('sci',3);
select  * from student where idstudent in (select depid from department where subject='maths');
select * from department;
select  * from student s,(select * from departmrnt where depid>1)d where d.subject='maths';
select s.idstudent,s.name,d.subject from student s,department d where s.idstudent=d.depid and s.marks>500;
select * from student order by name;
select count(*) as total from student;
select distinct idstudent from student;
select * from student order by idstudent asc;

select * from student order by idstudent desc;
select idstudent as roll_number from student;

select * from student where marks >70 and marks <90;

select * from student where marks >70 or marks <90;
select depid from department where subject='maths'|| subject='cse';
select name from student where idstudent = (select depid from department where subject= 'cse');
select * from student where idstudent in (select depid from department where subject='maths'|| subject='cse');

select * from student s, department d where s.marks > 70 and d.subject= 'maths';