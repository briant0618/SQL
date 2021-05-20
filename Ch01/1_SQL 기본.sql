# 날짜 : 2021/05/17
# 이름 : 김동현
# 내용 : 1.SQL 기본문

# 실습하기 1-1
# CREATE DATABASE `testDB`; # 관리자가 아니라서 실행할수가 없다.
# DROP DATAbase `testDB`; # 관리자가 아니라서 실행할수가 없다.

# 실습하기 1- 2 [Relation DataBase]
# Create table + insert [ 생성하기  ] 
CREATE TABLE `USER1`(
`uid` VARCHAR(20),
`name` VARCHAR(20),
`hp` CHAR(13),
`age` INT 
); 

DROP TABLE `USER1`;

# 조회하기 [ select 문 ] 
INSERT INTO `USER1` VALUES ('A101','김유신','010-1234-1111',26);
INSERT INTO `USER1` VALUES ('A102','김춘추','010-1234-2222',23);
INSERT INTO `USER1` VALUES ('A103','장보고','010-1234-3333',32);
INSERT INTO `USER1` (`age`,`name`,`uid`,`hp`) VALUES (45,'강감찬','A104','010-1234-4444'); # 내가 순서를 지정 가능.
INSERT INTO `USER1` SET `name` = '이순신', `age` = 51, `hp` = '010-1234-5555',`uid` = 'A105'; 

SELECT `uid`,`name`,`age`,`hp` FROM `USER1`;
SELECT `name`,`uid`,`hp` FROM `USER1`;
SELECT * FROM `USER1`;
SELECT * FROM `USER1` WHERE `uid` = 'A101';
SELECT * FROM `USER1` WHERE `name` = '김춘추';
SELECT * FROM `USER1` WHERE `age` > 30;

# 실습하기 1-5
UPDATE `USER1` SET `hp`='010-1234-1234';
UPDATE `USER1` SET `uid`='B101',`name`='홍길동';
UPDATE `USER1` SET `uid`='A101',`name`='김유신' WHERE `age` = 26;
UPDATE `USER1` SET `hp` = '010-1234-1111' WHERE `name` = '김유신';
UPDATE `USER1` SET `uid`='A102',`name`='김춘추',`hp` = '010-1234-2222' WHERE `age` = 23;

# 1-6 실습
DELETE FROM `USER1` WHERE `uid`='A101';
DELETE FROM `USER1` WHERE `uid`='A102' AND `age` = 25;
DELETE FROM `USER1` WHERE `age` >= 30;