
 
 
 DELIMITER $$
DROP PROCEDURE IF EXISTS `user_list` $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE `user_list`(IN `idUser` INT, IN `nmuser` VARCHAR(255), IN `createTaskOnDate` DATE) 
   SELECT 
       id_user,
	   nm_user ,
	   ds_user ,
	   createOnDate,
	   lastModifiedOnDate DATE 
       
   FROM `Users` 
   WHERE nm_user LIKE `nmuser`
		 AND  createTaskOnDate = `createTaskOnDate` ;
$$
  DELIMITER ;