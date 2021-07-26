DELETE `JBoard_Article` WHERE `seq` = 8247 ;siopmyJBoard_Article

//최신글 따오기
(SELECT * FROM `JBoard_Article` WHERE `cate` = 'grow' AND `parent` =0 ORDER BY `seq` DESC LIMIT 5)
UNION 
(SELECT * FROM `JBoard_Article` WHERE `cate` = 'school' AND `parent` =0 ORDER BY `seq` DESC LIMIT 5)
UNION 
(SELECT * FROM `JBoard_Article` WHERE `cate` = 'story' AND `parent` =0 ORDER BY `seq` DESC LIMIT 5)
UNION 
(SELECT * FROM `JBoard_Article` WHERE `cate` = 'notice' AND `parent` =0 ORDER BY `seq` DESC LIMIT 3)
UNION 
(SELECT * FROM `JBoard_Article` WHERE `cate` = 'qna' AND `parent` =0 ORDER BY `seq` DESC LIMIT 3)
UNION 
(SELECT * FROM `JBoard_Article` WHERE `cate` = 'faq' AND `parent` =0 ORDER BY `seq` DESC LIMIT 3);