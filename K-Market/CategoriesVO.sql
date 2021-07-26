# Categories VO의 SQL문

SELECT * FROM `km_cate1` AS c1
		JOIN `km_cate2` AS c2
		ON c1.code1 = c2.code1;

# column이 code2까지 Categoies / title은 cate2다.



# column에 중복이 있기때문에 선별작업이 필요함
SELECT c1.title AS tit1,
	 	c2.code1,
	 	c2.code2,
	 	c1.title AS tit1,
	 	c2.title AS tit2
	 	FROM `km_cate1` AS c1
		JOIN `km_cate2` AS c2
		ON c1.code1 = c2.code1
		ORDER BY c2.code1, c2.code2;