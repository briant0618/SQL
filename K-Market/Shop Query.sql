# Shop list에 불러오기 Query 

SELECT * , FLOOR(price * (1 - discount/100)) AS `salePrice` FROM `km_product` WHERE `cate1`=2 AND `cate2`=2;

# list에서 title표기 Query
SELECT 
c1.title AS tit1,
c2.title AS tit2
FROM `km_cate1` AS c1
JOIN `km_cate2` AS c2
ON c1.code1 = c2.code1
WHERE c1.code1=8 AND c2.code2 = 2;  
