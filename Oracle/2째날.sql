

drop sequence seq_1;

create SEQUENCE seq_1
increment by 1
start with 0
minvalue 0
maxvalue 100
nocycle
nocache;

insert into major values(seq_1.currval,'');
insert into major values(seq_1.nextval,'��������');
insert into major values(seq_1.nextval,'��ǻ�Ͱ���');
insert into major values(seq_1.nextval,'������');
insert into major values(seq_1.nextval,'�������');
insert into major values(seq_1.nextval,'������������');
insert into major values(seq_1.nextval,'��������');
insert into major values(seq_1.nextval,'�߾��߹���');
insert into major values(seq_1.nextval,'����');
insert into major values(seq_1.nextval,'������');
insert into major values(seq_1.nextval,'���������');
insert into major values(seq_1.nextval,'�������');
insert into major values(seq_1.nextval,'�濵������');

delete  from major;


create table major(
  code number primary key,
  name nvarchar2(20) NOT null);  
create table city(
  code number primary key,
  name nvarchar2(20) NOT NULL);
create table students(
  no number primary key,
  name nvarchar2(20) NOT NULL,
  gender char(1) NOT NULL,
  constraints check1 check(gender in('m','f')),
  major number NOT NULL,
  constraints major1 foreign key(major)
  references major(code),
  city number NOT NULL,
  constraints city1 foreign key(city)
  references city(code),
  created_at date default sysdate);
  
  drop table major;
  drop table city;
  drop table students;
  
  drop sequence seq_1;
  drop sequence seq_2;
  drop sequence seq_3;
  
  
  
  create sequence seq_2 start with 0
                        increment by 1
                        minvalue 0
                        maxvalue 100
                        nocycle
                        nocache;
                        
  delete from city;
                        
  select seq_2.currval from dual;
  
  drop sequence seq_2;
  insert into city values(seq_2.nextval,'����');
  insert into city values(seq_2.nextval,'��õ');
  insert into city values(seq_2.nextval,'â��');
  insert into city values(seq_2.nextval,'�λ�');
  insert into city values(seq_2.nextval,'��õ');
  insert into city values(seq_2.nextval,'����');
  insert into city values(seq_2.nextval,'�뱸');
  insert into city values(seq_2.nextval,'����');
  insert into city values(seq_2.nextval,'����');
  insert into city values(seq_2.nextval,'����');
  
  select * from city;
  select * from major;
  select * from students;
create sequence seq_3
increment by 1
start with 0
minvalue 0
maxvalue 100
nocycle
nocache;

delete from students;
drop sequence seq_3;

select * from students;
select * from major;


insert into students(no,name,gender,major,city) values(seq_3.currval,'','m',0,0);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'������','m',9,0);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'������','f',1,5);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'���ȣ','m',1,0);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'�赿��','m',5,0);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'�輭��','m',1,1);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'��ƿ�','f',5,7);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'��켺','m',7,0);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'������','f',4,9);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'�����','f',1,0);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'�ε���','m',1,0);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'�ڹ�ȣ','m',3,0);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'������','f',0,0);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'���߱�','m',8,8);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'������','m',10,0);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'������','m',1,0);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'��âȯ','m',1,0);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'���ʷ�','f',1,5);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'������','m',3,0);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'�氡��','f',2,0);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'�缺��','m',5,4);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'�����','m',4,0);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'�����','m',1,0);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'�̸�','m',5,4);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'�̸��','m',2,9);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'�̼���','f',6,0);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'��â��','m',4,0);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'��ȣ��','m',11,3);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'�ӿ���','f',1,0);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'������','m',1,0);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'����ȯ','m',1,0);
insert into students(no,name,gender,major,city) values(seq_3.nextval,'�ֹ���','f',4,1);


select * from students;

select a.no, a.name, a.gender, b.name as major, c.name as city, a.team
from students a, major b, city c
where a.major = b.code and a.city = c.code
order by a.no asc;

/*  ������ �����*/


select name from students where city = 0 ;
select count(name) from students where city=0;

select a.name from students a, city b
where a.city = b.code and b.name = '����'
order by a.name desc;


select name from students where major = 4;

select count(name) from students where major = 4;
select count(a.name) from students a, major b
where a.major = b.code and b.name = '������������';

select * from students;


/*-----------------------------------------------------------------*/

create table team(
  code number primary key,
  name nvarchar2(20) not null,
  leader number ,
  constraints leader1 foreign key (leader)
  references students (no)
  );
  
  
  insert into team values(0,'�ڹ�Ÿ��',17);
  insert into team values(1,'�����帮��',25);
  insert into team values(2,'������',12);
  insert into team values(3,'�غ����',20);
  insert into team values(4,'���ϸ���',29);
  insert into team values(5,'�����',6);
  
  select * from students;
  
  select a.name from students a, team b
  where a.no =b.leader and b.name='�����';
------------���̺� team�÷��߰�(�ܷ�Ű)----------  
  alter table students add team number;
  alter table students add constraints team1 foreign key(team)
  references team(code);
  
update students set team=5 where no=0;
update students set team=0 where no=1;
update students set team=1 where no=2;
update students set team=2 where no=3;
update students set team=4 where no=4;
update students set team=5 where no=5;
update students set team=5 where no=6;
update students set team=2 where no=7;
update students set team=4 where no=8;
update students set team=0 where no=9;
update students set team=1 where no=10;
update students set team=5 where no=11;
update students set team=2 where no=12;
update students set team=3 where no=13;
update students set team=4 where no=14;
update students set team=5 where no=15;
update students set team=0 where no=16;
update students set team=0 where no=17;
update students set team=1 where no=18;
update students set team=2 where no=19;
update students set team=3 where no=20;
update students set team=4 where no=21;
update students set team=5 where no=22;
update students set team=0 where no=23;
update students set team=2 where no=24;
update students set team=1 where no=25;
update students set team=1 where no=26;
update students set team=3 where no=27;
update students set team=3 where no=28;
update students set team=4 where no=29;
update students set team=4 where no=30;

 select * from students;
 ------------���ϸ����� �������-----------
 select count(a.name) from students a, team b
 where a.team=b.code and b.name ='���ϸ���';
 --------�ڹ�Ÿ�� ���� ������-----
 
 select count(a.name) from students a, team b
 where a.team=b.code and b.name ='�ڹ�Ÿ��' and a.GENDER='f';
 
 drop table team6;
 
 create table team_1 (
 name nvarchar2(10),
 major nvarchar2(10),
 city nvarchar2(10));
 
 create table team_2 (
 name nvarchar2(10),
 major nvarchar2(10),
 city nvarchar2(10));
 
 create table team_3 (
 name nvarchar2(10),
 major nvarchar2(10),
 city nvarchar2(10));
 
 create table team_4 (
 name nvarchar2(10),
 major nvarchar2(10),
 city nvarchar2(10));
 
 create table team_5 (
 name nvarchar2(10),
 major nvarchar2(10),
 city nvarchar2(10));
 
 create table team_6 (
 name nvarchar2(10),
 major nvarchar2(10),
 city nvarchar2(10));
 
insert into team_1 values('������','��ǻ�Ͱ���','����');

delete from  team_1 ;

insert into team_1(name,major,city)
select a.name, b.name, c.name from students a, major b, city c
where a.major=b.code and a.city=c.code and a.team =0;

insert into team_2(name,major,city)
select a.name, b.name, c.name from students a, major b, city c
where a.major=b.code and a.city=c.code and a.team =1;

insert into team_3(name,major,city)
select a.name, b.name, c.name from students a, major b, city c
where a.major=b.code and a.city=c.code and a.team =2;

insert into team_4(name,major,city)
select a.name, b.name, c.name from students a, major b, city c
where a.major=b.code and a.city=c.code and a.team =3;

insert into team_5(name,major,city)
select a.name, b.name, c.name from students a, major b, city c
where a.major=b.code and a.city=c.code and a.team =4;

insert into team_6(name,major,city)
select a.name, b.name, c.name from students a, major b, city c
where a.major=b.code and a.city=c.code and a.team =5;

select * from team_6;

 create table merge_1 (
 name nvarchar2(10),
 major nvarchar2(10),
 city nvarchar2(10));
 
insert into merge_1 
select * from team_4;

select*from merge_1;

 select * from students;

merge into merge_1 
  using (select a.no, a.name, a.gender, b.name as major, c.name as city, a.team
       from students a, major b, city c
       where a.major = b.code and a.city = c.code and a.gender = 'f') e
    on(merge_1.name = e.name)
  when matched then
    update set merge_1.major=e.major,merge_1.city=e.city
  when not matched then
    insert (merge_1.name,merge_1.major,merge_1.city) values (e.name,e.major,e.city);
    
select a.no, a.name, a.gender, b.name as major, c.name as city, a.team  
from students a, major b, city c
where a.major = b.code and a.city = c.code and a.gender = 'f'
order by a.no asc;

create table distance(
  city nvarchar2(20),
  dis number
);

insert into distance values('��õ',35);
insert into distance values('â��',364);
insert into distance values('�λ�',392);
insert into distance values('��õ',43);
insert into distance values('����',44);
insert into distance values('�뱸',285);
insert into distance values('����',126);
insert into distance values('����',243);
insert into distance values('����',26);

select dis from distance;

select greatest(select dis from distance),
least(select dis from distance)
    from distance;

select greatest(1,2,3,2),
least(1,2,3,2)
    from distance;

