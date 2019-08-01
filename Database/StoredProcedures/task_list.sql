
 
 
 DELIMITER $$
DROP PROCEDURE IF EXISTS `task_list` $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE `task_list`(
        
		IN `idUser` INT, 
		IN `titletaks` VARCHAR(255), 
		IN `statustask` VARCHAR(255), 
		IN `createTaskOnDate` DATE) 
		

   SELECT id_task ,
   id_user,
   title_task , 
   ds_task , 
   status_task , 
    
   createOnDate,
   lastModifiedOnDate 
   FROM `tasks` t
   WHERE t.id_user = `idUser`
		 AND  t.title_task = `titletaks` 
		 AND `statustask`  IS NULL OR t.status_task = `statustask` 
		 AND  t.createOnDate = `createTaskOnDate` ;
$$
  DELIMITER ;
  
  --SET @p0='1'; SET @p1=''; SET @p2=''; SET @p3=''; SET @p4=''; CALL `task_list`(@p0, @p1, @p2, @p3, @p4);