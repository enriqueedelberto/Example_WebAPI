
 
 
 DELIMITER $$
DROP PROCEDURE IF EXISTS `task_save` $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE `task_save`(
       IN `idTask` INT, 
	   IN `idUser` INT, 
	   IN `titletaks` VARCHAR(255), 
	   IN `statustask` VARCHAR(255), 
	   IN `createTaskOnDate` DATE,
	   IN `lastModifiedOnDate` DATE) 

    
   INSERT INTO `tasks` (`id_task`, 
                        `title_task`, 
						`ds_task`, 
						`status_task`, 
						`id_user`, 
						`createOnDate`, 
						`lastModifiedOnDate`) 
               VALUES 
			   (NULL, `idTask`, 
			           `titletaks`, `statustask`, `idUser`, `createTaskOnDate`, `lastModifiedOnDate`);
 
$$
  DELIMITER ;