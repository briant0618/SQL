# BulkInsert
INSERT INTO `JBoard_Article` (`title`,`content`,`uid`,`regip`,`rdate`) 
SELECT `title`,`content`,`uid`,`regip`,`rdate` FROM `JBoard_Article`;

# Paging작업
SELECT COUNT(*) FROM `JBoard_Article`;
SELECT a.*, b.`nick` FROM `JBoard_Article` AS a 
JOIN `JBoard_Member` AS b 
On a.uid = b.uid 
ORDER BY `seq` DESC ;

UPDATE `JBoard_Article` SET `hit` = `hit` + 1 WHERE `seq` = '8208';

SELECT * FROM `JBoard_Article` AS a
LEFT JOIN `JBoard_File` AS b 
ON a.seq = b.parent
WHERE a.seq = '8210';

SELECT * FROM `JBoard_Article` AS a 
JOIN `JBoard_Member` AS b 
on a.uid = b.uid
WHERE `parent` = 8219 
ORDER BY a.`seq`;