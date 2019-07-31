
 
 DELIMITER $$
DROP PROCEDURE IF EXISTS `task_changeStatus` $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE `task_changeStatus`(
       IN `idTask` INT,  
	   IN `statustask` VARCHAR(255), 
	    
	   IN `lastModifiedTaskOnDate` DATE) 

    UPDATE `tasks` 
	SET `status_task` = `statustask`, 
		`lastModifiedOnDate` = `lastModifiedTaskOnDate`
	       
	WHERE `tasks`.`id_task` = `idTask`;
	 
$$
  DELIMITER ;