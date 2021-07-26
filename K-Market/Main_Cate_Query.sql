# hit상품 메인에 구현
SELECT * FROM `km_product` ORDER BY `hit` DESC LIMIT 8;

# 추천 상품 구현
SELECT * FROM `km_product` ORDER BY `score` DESC LIMIT 8;

# 할인율 discount 추가 적용 
SELECT * , FLOOR(price * (1 - discount/100)) AS `salePrice` FROM `km_product`
ORDER BY `hit` DESC LIMIT 8;