create table myboard(
	idx int not null auto_increment,	/* auto_increment : 오라클 의 시퀀스 개념 */
	title varchar(100) not null,
	content varchar(2000) not null,
	writer varchar(30) not null,
	indate datetime default now(),
	count int default 0,
	primary key(idx)
);

insert into myboard(title,content,writer)values(
'게시판 연습','게시판 연습','관리자');
insert into myboard(title,content,writer)values(
'게시판 연습','게시판 연습','김재민');
insert into myboard(title,content,writer)values(
'게시판 연습','게시판 연습','이상현');

select * from myboard order by idx desc;

create table tblMember(
	memId varchar(50) not null,
	memPwd varchar(50) not null,
	memName varchar(50) not null,
	primary key(memId)
);

drop table tblmember;

insert into tblMember(memId,memPwd,memName)values('bit01','bit01','관리자');
insert into tblMember(memId,memPwd,memName)values('bit02','bit02','홍길동');
insert into tblMember(memId,memPwd,memName)values('bit03','bit03','테스트');

select * from tblMember;


