
 
 
 DELIMITER $$
DROP PROCEDURE IF EXISTS `task_list` $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE `task_list`(IN `idTask` INT, IN `idUser` INT, IN `titletaks` VARCHAR(255), IN `statustask` VARCHAR(255), IN `createTaskOnDate` DATE) 
NOT DETERMINISTIC READS SQL DATA SQL SECURITY DEFINER 
   SELECT id_task ,
   title_task , 
   ds_task , 
   status_task , 
   id_user, 
   createOnDate,
   lastModifiedOnDate 
   FROM `tasks` 
   WHERE `idTask`  IS NOT NULL OR id_task = `idTask` 
         AND `idUser` IS NOT NULL OR id_user = `idUser`
		 AND `titletaks`  IS NOT NULL OR title_task = `titletaks` 
		 AND `statustask`  IS NOT NULL OR status_task = `statustask` 
		 AND `createTaskOnDate`  IS NOT NULL OR createTaskOnDate = `createTaskOnDate` 
$$
  DELIMITER ;