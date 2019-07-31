
 
 
 DELIMITER $$
DROP PROCEDURE IF EXISTS `user_save` $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE `user_save`( 
	   IN `nmUser` VARCHAR(255), 
	   IN `dsUser` VARCHAR(255), 
	   IN `createUserOnDate` DATE,
	   IN `lastModifiedUserOnDate` DATE) 

    
   INSERT INTO `users` (`id_user`, 
                        `nm_user`, 
						`ds_user`, 
						`createOnDate`, 
						`lastModifiedOnDate`) 
               VALUES 
			   (NULL, `nmUser`, `dsUser`, `createUserOnDate`, `lastModifiedUserOnDate`);
 
$$
  DELIMITER ;