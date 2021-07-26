# 날짜 : 2021/06/07
# 이름 : 김동현 
# 내용 : Create Board Table

# 약관 테이블 
CREATE TABLE `JBoard_Terms`(
`terms` TEXT,
`privacy` TEXT
); 
# 회원 테이블
CREATE TABLE `JBoard_Member`(
`uid` VARCHAR(20) PRIMARY KEY,
`pass` VARCHAR(255),
`name` VARCHAR(20),
`nick` VARCHAR(20) UNIQUE,
`email` VARCHAR(20) UNIQUE,
`hp` CHAR(13) UNIQUE,
`grade` TINYINT DEFAULT 2,
`zip` CHAR(5) DEFAULT NULL,
`addr1` VARCHAR(255) DEFAULT NULL,
`addr2` VARCHAR(255) DEFAULT NULL,
`regip` VARCHAR(100),
`rdate` DATETIME
); 
# Board Table
CREATE TABLE `JBoard_Article`(
`seq` INT PRIMARY KEY AUTO_INCREMENT,
`parent` INT DEFAULT 0,
`comment` INT DEFAULT 0,
`cate` VARCHAR(10) DEFAULT 'Free',
`title` VARCHAR(255) DEFAULT NULL,  # 댓글은 TITLE이 없기때문에
`content` TEXT,
`file` TINYINT DEFAULT 0,
`hit` INT DEFAULT 0,
`uid` VARCHAR(20),
`regip` VARCHAR(100),
`rdate` DATETIME
); 


# File Table 생성하기

CREATE TABLE `JBoard_File` (
`seq` INT AUTO_INCREMENT PRIMARY KEY,
`parent` INT,
`oriName` VARCHAR(255),
`newName` VARCHAR(255),
`download` INT DEFAULT 0,
`rdate` DATETIME
);
