# 날짜 : 2021/05/17
# 이름 : 김동현
# 내용 : 2_table 설정.


# primary key 
CREATE TABLE `USER2` (
`uid` VARCHAR(20) PRIMARY KEY,
`name` VARCHAR(10),
`hp` CHAR(13),
`age` TINYINT );

INSERT INTO `USER2` VALUES ('A101','김유신','010-1234-1111',26);
INSERT INTO `USER2` VALUES ('A102','김춘추','010-1234-2222',23);
INSERT INTO `USER2` VALUES ('A103','장보고','010-1234-3333',32);
INSERT INTO `USER2` (`age`,`name`,`uid`,`hp`) VALUES (45,'강감찬','A104','010-1234-4444'); # 내가 순서를 지정 가능.
INSERT INTO `USER2` SET `name` = '이순신', `age` = 51, `hp` = '010-1234-5555',`uid` = 'A105'; 

# primary key + unique
CREATE TABLE `USER3` (
`uid` VARCHAR(20) PRIMARY KEY,
`name` VARCHAR(10),
`hp` CHAR(13) UNIQUE,
`age` TINYINT );

INSERT INTO `USER3` VALUES ('A104','김유신','010-1234-4444',26);
INSERT INTO `USER3` VALUES ('A105','김춘추','010-1234-5555',23);
INSERT INTO `USER3` VALUES ('A106','장보고','010-1234-6666',32);
INSERT INTO `USER3` (`uid`,`age`) VALUES ('A107',21);
INSERT INTO `USER3` (`uid`,`age`) VALUES ('A108',29);

# not null 
CREATE TABLE `USER4` (
`uid` VARCHAR(20) PRIMARY KEY ,
`name` VARCHAR(10) NOT NULL ,
`hp` CHAR(13) UNIQUE NOT NULL ,
`age` TINYINT DEFAULT 10 );

# auto_increment
CREATE TABLE `USER5` (
`seq` INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(20),
`gender` TINYINT,
`age` INT,
`addr` VARCHAR(255) );

INSERT INTO `USER5` (`name`,`gender`,`age`,`addr`) VALUES ('김유신','1','25','김해시');
INSERT INTO `USER5` (`name`,`gender`,`age`,`addr`) VALUES ('김춘추','1','21','경주시');
INSERT INTO `USER5` (`name`,`gender`,`age`,`addr`) VALUES ('장보고','1','35','완도군');
INSERT INTO `USER5` (`name`,`gender`,`age`,`addr`) VALUES ('신사임당','2','27','강릉시');
INSERT INTO `USER5` (`name`,`gender`,`age`,`addr`) VALUES ('이순신','1','51','서울시');

# 테이블 복사 실습.
CREATE TABLE `USER6` SELECT * FROM `USER5`;
SELECT * FROM `USER6`;

# 테이블의 컬럼 구조만 복사하기
CREATE TABLE `USER7` LIKE `USER5`;

# 테이블의 데이터만 복사합시다.
INSERT INTO `USER7` SELECT * FROM `USER5`;
INSERT INTO `USER7` (`name`,`gender`,`age`,`addr`) SELECT `name`,`gender`,`age`,`addr` FROM `USER5`;