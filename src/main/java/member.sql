CREATE TABLE member(
	id VARCHAR2(100) PRIMARY KEY,
	password VARCHAR2(100) NOT NULL,
	name VARCHAR2(100)	 NOT NULL,
	address VARCHAR2(100)	 NOT NULL
)

select * from member;

-- 로그인 sql 
select name,address from member where id='java' and password='a';
select name,address from member where id='java' and password='b';
select name,address from member where id='java1' and password='a';
-- 회원수정 sql 
update member set password='a', name='아이유3',address='수원' where id='java';

-- 아이디 중복확인 sql : 아이디가 존재하면 1 , 존재하지 않으면 0 
select count(*) from member where id='java' 

-- DAO 
select password,name,address from member where id=?

select name,address from member where id=? and password=?;