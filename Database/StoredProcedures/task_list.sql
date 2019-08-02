
 
 
 DELIMITER $$
DROP PROCEDURE IF EXISTS `task_list` $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE `task_list`(
        IN `idTask` INT,
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
   WHERE `idTask` IS NULL OR t.id_task = `idTask`
         and  `idUser` IS NULL OR t.id_user = `idUser`
		 AND  `titletask`  IS NULL OR t.title_task = `titletask` 
		 AND  `statustask`  IS NULL OR t.status_task = `statustask` 
		 AND  `createTaskOnDate` IS NULL OR t.createOnDate = `createTaskOnDate` ;
$$
  DELIMITER ;
  
  