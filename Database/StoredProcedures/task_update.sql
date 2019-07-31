
 
 DELIMITER $$
DROP PROCEDURE IF EXISTS `task_update` $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE `task_update`(
       IN `idTask` INT, 
	   IN `idUser` INT, 
	   IN `titletaks` VARCHAR(255), 
	   IN `ds_task` VARCHAR (255),
	   IN `statustask` VARCHAR(255), 
	   IN `createTaskOnDate` DATE,
	   IN `lastModifiedTaskOnDate` DATE) 

    UPDATE `tasks` 
	SET `title_task` = `titletaks`,
	    `id_user` = `idUser`,
		`ds_task` = `ds_task`, 
		`status_task` = `statustask`, 
		`createOnDate` = `createTaskOnDate`, 
		`lastModifiedOnDate` = `lastModifiedTaskOnDate`
	       
	WHERE `tasks`.`id_task` = `idTask`;
	 
$$
  DELIMITER ;