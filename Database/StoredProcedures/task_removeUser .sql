
 
 DELIMITER $$
DROP PROCEDURE IF EXISTS `task_removeUser` $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE `task_removeUser`(
       IN `idTask` INT,  
	   IN `idUser` INT, 
	   IN `lastModifiedTaskOnDate` DATE) 

    UPDATE `tasks` 
	SET  `id_user` = `idUser`,
		`lastModifiedOnDate` = `lastModifiedTaskOnDate`
	       
	WHERE `tasks`.`id_task` = `idTask`;
	 
$$
  DELIMITER ;