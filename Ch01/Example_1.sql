# 날짜 : 2021/05/17
# 이름 : 김동현
# 내용 : P10 실습하기

CREATE TABLE tbl_member(
`member ID` VARCHAR(8) PRIMARY KEY NOT NULL ,
`member Name` VARCHAR(10) NOT NULL , 
`member Address` VARCHAR(20)
);
CREATE TABLE tbl_product(
`productName` VARCHAR(4) NOT NULL PRIMARY KEY,
`cost` INT NOT NULL ,
`makeDate` DATE,
`company` varchar(5),
`amount` INT NOT NULL
);

INSERT INTO `tbl_member`  (`member ID`,`member Name`,`member Address`) VALUES ('jang','장보고','완도군');
INSERT INTO `tbl_member`  (`member ID`,`member Name`,`member Address`) VALUES ('kang','강감찬','서울시');
INSERT INTO `tbl_member` (`member ID`,`member Name`) VALUES ('kim','김유신');
INSERT INTO `tbl_member` (`member ID`,`member Name`,`member Address`) VALUES ('lee','이순신','서울시');

INSERT INTO `tbl_product` (`productName`,`cost`,`makeDate`,`company`,`amount`) VALUES ('냉장고', 800,'2021-05=17','LG',1);
INSERT INTO `tbl_product` (`productName`,`cost`,`makeDate`,`company`,`amount`) VALUES ('노트북', 1500,'2021-05=17','삼성',5);
INSERT INTO `tbl_product` (`productName`,`cost`,`makeDate`,`company`,`amount`) VALUES ('컴퓨터', 1000,'2021-05=17','LG',10);

SELECT * FROM `tbl_member` WHERE `member Address` = '서울시'  ;
