SHOW DATABASES; --SHOW TABLES;

CREATE TABLE member(
	id int NOT NULL AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	passwd VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)
);

TABLE member; --SELECT * FROM member;
DESC member; -- 테이블 설명(구조확인)

-- 열을 추가하기
ALTER TABLE member ADD phone VARCHAR(20);
ALTER TABLE member ADD nickname VARCHAR(50); --별명이 왜 필요해요???
-- 열을 삭제하기
ALTER TABLE member DROP COLUMN nickname;

-- 열의 이름을 수정하기
ALTER TABLE member CHANGE COLUMN passwd password varchar(60);

-- 테이블의 이름을 수정하기
RENAME TABLE member To student;
TABLE student;

-- 테이블에서 데이터 삽입하기
INSERT INTO student VALUES('1', '홍길순', '1235', '01012345678');
INSERT INTO student VALUES('2', '수여인', '1236', '01045678901');
INSERT INTO student VALUES('3', '수여남', '1237', '01022223333');
INSERT INTO student VALUES('4', '홍길동', '1238', '01044445555');

-- 조회할때
SELECT name, phone FROM student;

-- 내림차순으로 2개만 보기
SELECT * FROM student ORDER BY id DESC LIMIT 2;

-- ID가 2인 항목만 보기
SELECT * FROM student WHERE id = 2;

INSERT INTO student VALUES('99', '박준현', '0123', 'NULL');

-- 열의 값을 수정할 때
UPDATE student SET phone="01066667777" WHERE name = "박준현";
SELECT * FROM student;

INSERT INTO student VALUES('15', 'Tracy', 'abcd', 'NULL');
TABLE student;

-- 행 삭제하려면
DELETE FROM student WHERE id = '15';
TABLE student;

-- CRUD기능
-- 기능     | 의미   | 행에서     | 테이블에서
-- C(CREATE) 생성 : INSERT.... / CREATE
-- R(Read) 조회 / 읽기 : SELECT / SHOW
-- U(UPDATE) 수정 : UPDATE ... / ALTER
-- D(DELETE) 삭제 : DELETE... / DROP