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

# View에 출력 + title 받기위해 join함
SELECT a.*, b.title AS tit1, c.title AS tit2,
FLOOR(price * (1 - discount/100)) AS `salePrice`
FROM `km_product` AS a
JOIN `km_cate1` AS b ON a.cate1 = b.code1
JOIN `km_cate2` AS c ON a.cate1 = c.code1 AND a.cate2 = c.code2
WHERE `code`=6;

# 장바구니 담은 상품 조회 + 상품 이미지 구현을 위해서 join도 추가해야대
SELECT a.*, b.cate1, b.cate2,b.thumb1 FROM `km_product_cart` AS a
JOIN `km_product` AS b 
ON a.code = b.code
WHERE `uid` = 'abcd'
ORDER BY `seq` DESC;

# 주문신청한거 조회하기 
SELECT a.*, 
		 c.`cate1`, 
		 c.`cate2`,
		 c.`thumb1`, 
		 c.`name` AS pName, 
		 c.`price`AS pPrice, 
		 c.`discount` AS pDiscount, 
		 c.`point` AS pPoint, 
		 c.`delivery`AS pDelivery , FLOOR(c.`price` * (1 - c.`discount`/ 100) + c.`delivery`) AS `pTotal`
FROM `km_product_order` AS a
JOIN `km_product_order_detail` AS b
ON a.orderId = b.orderId
JOIN `km_product` AS c
ON b.`code` = c.`code`
WHERE a.`orderId`=5; 


# column 추가하기
ALTER TABLE `km_product_order` ADD COLUMN `applyPoint` INT;
