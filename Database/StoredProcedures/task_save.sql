
 
 
 DELIMITER $$
DROP PROCEDURE IF EXISTS `task_save` $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE `task_save`( 
	   IN `titletask` VARCHAR(255), 
	   IN `dstasks` VARCHAR(255), 
	   IN `statustask` VARCHAR(255), 
	   IN `idUser` INT,
	   IN `createTaskOnDate` DATE,
	   IN `lastModifiedTaskOnDate` DATE) 

    
   INSERT INTO `tasks` (`id_task`, 
                        `title_task`, 
						`ds_task`, 
						`status_task`, 
						`id_user`, 
						`createOnDate`, 
						`lastModifiedOnDate`) 
               VALUES 
			   (NULL, `titletask`, `dstasks`,`statustask`, `idUser`, `createTaskOnDate`, `lastModifiedTaskOnDate`);
 
$$
  DELIMITER ;