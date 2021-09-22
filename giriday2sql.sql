

delete from department where depid=1;

drop table department;

update student set marks=300 where id='1';

select * from student;

alter table student add results varchar(100);

alter table student drop results;

alter table student modify results int;


create table employee(
empid int not null primary key,
empname varchar(20),
pno int,
adress varchar (20)
);
create table project(
pid int primary key,
empid int,
pname varchar(20),
constraint FK_emp FOREIGN KEY(empid) REFERENCES employee(empid)
);
insert into employee values(1,'giri',9948,'pollachi');
insert into employee values(2,'maha',9248,'kovai');
insert into employee values(3,'viji',8948,'chennai');
insert into project values (34,1,'p1');
insert into project values (35,2,'p2');
insert into project values (36,3,'p3');
select * from employee;
select * from project;
delete from employee where empid=1; /* foreign key not able to delete */

select s.empid,s.empname from employee s , project d where s.empid= d.empid and s.empname= 'giri';
select * from employee s , project d where s.empid= d.empid and s.empname= 'giri';

select * from employee  where empid=(select empid from project where pname='p1');
select s.empid,p.pid from employee s inner join project p on s.empid=p.empid;
select s.empid,p.pid,p.pname from employee s left join project p on s.empid=p.empid;
select s.empid,p.pid,p.pname from employee s right join project p on s.empid=p.empid;
