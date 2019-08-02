
 
 
 DELIMITER $$
DROP PROCEDURE IF EXISTS `task_list` $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE `task_list`(
        
		IN `idUser` INT, 
		IN `titletask` VARCHAR(255), 
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
		 AND  t.status_task = `statustask` 
		 AND  t.createOnDate = `createTaskOnDate` ;
$$
  DELIMITER ;
  
  