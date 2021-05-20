# 날짜 : 2021/05/18
# 이름 : 김동현
# 내용 : 3.SQL 고급실습 

# 직원 테이블 생성 
CREATE TABLE `Member`(
`uid` VARCHAR(10) PRIMARY KEY,
`name` VARCHAR(10),
`hp` CHAR(13),
`pos` VARCHAR(10),
`dep` TINYINT,
`rdate` DATETIME );

# 부서 테이블 생성 

CREATE TABLE `Depart`(
`depNo` TINYINT PRIMARY KEY,
`name` VARCHAR(10),
`tel` CHAR(12)
);
# 매출 테이블 생성 

CREATE TABLE `Sale`(
`seq` INT AUTO_INCREMENT PRIMARY KEY,
`uid` VARCHAR(10),
`year` YEAR,
`month` TINYINT,
`sales` INT
);


INSERT INTO `Member` VALUES ('a102','김유신','010-1234-1002','차장',101,NOW());
INSERT INTO `Member` VALUES ('a103','김춘추','010-1234-1003','사원',101,NOW());
INSERT INTO `Member` VALUES ('a104','장보고','010-1234-1004','대리',102,NOW());
INSERT INTO `Member` VALUES ('a105','강감찬','010-1234-1005','과장',102,NOW());
INSERT INTO `Member` VALUES ('a106','이성계','010-1234-1006','차장',103,NOW());
INSERT INTO `Member` VALUES ('a107','정철','010-1234-1007','차장',103,NOW());
INSERT INTO `Member` VALUES ('a108','이순신','010-1234-1008','부장',104,NOW());
INSERT INTO `Member` VALUES ('a109','허균','010-1234-1009','부장',104,NOW());
INSERT INTO `Member` VALUES ('a110','정약용','010-1234-1010','사원',105,NOW());
INSERT INTO `Member` VALUES ('a111','박지원','010-1234-1011','사원',105,NOW());

INSERT INTO `Depart` VALUES (101,'영업1부','051-512-1001');
INSERT INTO `Depart` VALUES (102,'영업2부','051-512-1002');
INSERT INTO `Depart` VALUES (103,'영업3부','051-512-1003');
INSERT INTO `Depart` VALUES (104,'영업4부','051-512-1004');
INSERT INTO `Depart` VALUES (105,'영업5부','051-512-1005');
INSERT INTO `Depart` VALUES (106,'영업지원부','051-512-1006');
INSERT INTO `Depart` VALUES (107,'인사부','051-512-1007');


INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a101','2018',1,98100);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a102','2018',1,136000);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a103','2018',1,80100);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a104','2018',1,78000);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a105','2018',1,93000);

INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a101','2018',2,23500);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a102','2018',2,126000);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a103','2018',2,18500);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a105','2018',2,19000);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a106','2018',2,53000);

INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a101','2019',1,24000);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a102','2019',1,109000);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a103','2019',1,101000);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a104','2019',1,53500);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a107','2019',1,24000);

INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a102','2019',2,160000);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a103','2019',2,101000);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a104','2019',2,43000);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a105','2019',2,24000);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a106','2019',2,109000);

INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a102','2020',1,201000);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a104','2020',1,63000);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a105','2020',1,74000);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a106','2020',1,122000);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a107','2020',1,111000);

INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a102','2020',2,120000);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a103','2020',2,93000);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a104','2020',2,84000);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a105','2020',2,180000);
INSERT INTO `Sale` (`uid`,`year`,`month`,`sales`) VALUES ('a108','2020',2,76000);


# 실습하기 3-1 

SELECT * FROM `Member` WHERE `name` = '김유신';
SELECT * FROM `Member` WHERE `name` <> '김춘추'; #  <> = != [부정문]
SELECT * FROM `Member` WHERE `pos` IN('사원','대리');  # IN(x,y) = x Or y
SELECT * FROM `Member` WHERE `name` LIKE '%신'; # 신으로 끝나는 이름 찾기.
SELECT * FROM `Member` WHERE `name` LIKE '정_'; # 정씨지만 이름이 2자인 사람 찾기.
SELECT * FROM `Sale` WHERE `sales` > 50000;
SELECT * FROM `Sale` WHERE `sales` >= 50000 AND `sales` < 100000 AND `month` = 1;
SELECT * FROM `Sale` WHERE `sales` BETWEEN 50000 AND 100000;
SELECT * FROM `Sale` WHERE `sales` not BETWEEN 50000 AND 100000;
SELECT * FROM `Sale` WHERE `year` IN(2020);
SELECT * FROM `Sale` WHERE `month` IN(1,2); 

# 실습 3-2 [정렬]
SELECT * FROM `Sale` ORDER BY `sales`;
SELECT * FROM `Sale` ORDER BY `sales` ASC ;
SELECT * FROM `Sale` ORDER BY `sales` DESC ;
SELECT * FROM `Member` ORDER BY `name`;
SELECT * FROM `Member` ORDER BY `name` DESC ;
SELECT * FROM `Member` ORDER BY `rdate` ASC ;
SELECT * FROM `Sale` WHERE `sales` > 50000 ORDER BY `sales` DESC ;
SELECT * FROM `Sale` WHERE `sales` > 50000 ORDER BY `year`,`month`,`sales` DESC ;

# 실습 3-3 [제한된 출력]
SELECT * FROM `Sale` LIMIT 3 ;
SELECT * FROM `Sale` LIMIT 0,3 ;
SELECT * FROM `Sale` LIMIT 1,4 ;
SELECT * FROM `Sale` LIMIT 2,5 ;

SELECT * FROM `Sale` ORDER BY `sales` DESC LIMIT 3,5; 
SELECT * FROM `Sale` WHERE `sales` < 50000 ORDER BY `sales` DESC LIMIT 3,5; 
SELECT * FROM `Sale` WHERE `sales` > 50000 ORDER BY `year` DESC, `month`,`sales` DESC LIMIT 5; 

# 실습 3-4 [ 내장함수]
SELECT SUM(`sales`) AS `합계` FROM `Sale`;
SELECT AVG(`sales`) AS `평균` FROM `Sale`;
SELECT MAX(`sales`) AS `최댓값` FROM `Sale`;
SELECT MIN(`sales`) AS `최소값` FROM `Sale`;
SELECT COUNT(`sales`) AS `갯수` FROM `Sale`;
SELECT COUNT(*) AS `갯수` FROM `Sale`;

SELECT SUBSTRING(`hp`,10,4) AS `전화번호 끝가지` FROM `Member`;
INSERT INTO `Member` VALUES ('b101','을지문덕','010-5555-1234','사장',107,NOW());

# 연습문제 1
SELECT SUM(`sales`) AS `2018년 1월 총합` 
FROM `Sale`
WHERE `year`= 2018 AND `month` = 1;
# 연습문제 2

SELECT SUM(`sales`) AS `2019년 2월 총합`,
       AVG(`sales`) AS `2019년 2월 평균`
FROM `Sale`
WHERE `year` = 2019 AND 
		`month` = 2 AND 
		`sales` >= 50000;
# 연습문제 3

SELECT MIN(`sales`) AS `2020 최저값`,
       MAX(`sales`) AS `2020 최고값`
FROM `Sale`
WHERE `year` = 2020;		
		
# 실습 3-5

SELECT * FROM `Sale` GROUP BY `uid`;
SELECT * FROM `Sale` GROUP BY `year`;
SELECT * FROM `Sale` GROUP BY `uid`,`year`;

SELECT `uid`, COUNT(*) AS `건수` FROM `Sale` GROUP BY `uid`;
SELECT `uid`, SUM(`sales`) AS `합계` FROM `Sale` GROUP BY `uid`;
SELECT `uid`, AVG(`sales`) AS `합계` FROM `Sale` GROUP BY `uid`;
SELECT `uid`, SUM(`sales`) AS `합계` FROM `Sale` GROUP BY `uid`;

SELECT `uid`,`year`, SUM(`sales`) AS `합계` 
FROM `Sale` 
GROUP BY `uid`,`year`;

SELECT `uid`,`year`, SUM(`sales`) AS `합계` 
FROM `Sale` 
GROUP BY `uid`,`year` 
ORDER BY `year` ASC,`합계` DESC;

SELECT `uid`,`year`, SUM(`sales`) AS `합계` 
FROM `Sale` 
WHERE `sales` >= 50000 
GROUP BY `uid`,`year` 
ORDER BY `합계` DESC;


# 실습하기 3-6
SELECT `uid`, SUM(`sales`) AS `합계` 
FROM `Sale`
GROUP BY `uid`
HAVING SUM(`sales`) >= 200000 # 불안정한 데이터 ↓ 에서 정리함.

SELECT `uid`,`year`, SUM(`sales`) AS `합계` 
FROM `Sale`
WHERE `sales` >= 100000
GROUP BY `uid`,`year`
HAVING SUM(`sales`) >= 200000
ORDER BY `합계` DESC;

# 실습하기 3-7 [테이블 합치기]

CREATE TABLE `Sale2` LIKE `Sale`;
INSERT INTO `Sale2` SELECT * FROM `Sale`;
UPDATE `Sale2` SET `year` = `year` + 3;

SELECT * FROM `Sale` UNION SELECT * FROM `Sale2`;

SELECT `uid`,`year`,`sales` FROM `Sale`
UNION 
SELECT `uid`,`year`,`sales` FROM `Sale2`;

SELECT `uid`,`year`,SUM(sales) AS `합계`
FROM `Sale`
GROUP BY `uid`,`year`
UNION 
SELECT `uid`,`year`,SUM(sales) AS `합계`
FROM `Sale2`
GROUP BY `uid`,`year`
ORDER BY `year` ASC , `합계` DESC;

# 실습하기  3-8 [union된 table에서 추출]

SELECT `uid`,`year`,`sales` FROM `Sale`
UNION 
SELECT `uid`,`year`,`sales` FROM `Sale2`;

SELECT `uid`,`year`,`sales` FROM `Sale`
UNION ALL 
SELECT `uid`,`year`,`sales` FROM `Sale2`;

# 실습하기 3-9 [ join ]

SELECT * FROM `Sale` INNER JOIN `Member` ON Sale.uid = Member.uid;

SELECT Sale.`seq`,Sale.`year`,Sale.`month`,Sale.`uid`,`name`,`pos`,`sales`   # column 선별하기.
FROM `Sale`
JOIN `Member` ON Sale.uid = Member.uid;  

SELECT a.`seq`, a.`uid`, a.`sales`, b.`name`, b.`pos`
FROM `Sale` AS a
JOIN `Member` AS b
ON a.uid = b.uid;  # = USING(`uid`);

SELECT * FROM `Sale` AS a, `Member` AS b
WHERE a.uid = b.uid; 

# 3개 join 하기.
SELECT * 
FROM `Sale` AS a
JOIN `Member` AS b ON a.uid = b.uid 
JOIN `Depart` AS c ON b.dep = c.depNo;

# 3-10 [외부 join] - > 기준이 되는 곳에 따라 left/right를 잡는다.

SELECT * 
FROM `Sale`
RIGHT JOIN `Member`
ON `Sale`.uid = `Member`.uid;