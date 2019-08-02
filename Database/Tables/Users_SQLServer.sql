DROP TABLE IF EXISTS `Users`;


CREATE TABLE  ToDoList.Users
  (
	
	id_user INT PRIMARY KEY IDENTITY (1, 1) PRIMARY KEY,
	cd_user VARCHAR(255) NOT NULL,
	nm_user VARCHAR(255),
	ds_user VARCHAR(255),
	createOnDate DATE,
	lastModifiedOnDate DATE
	
	
  
  );
  
  
  INSERT INTO `users` (`id_user`, `nm_user`, `ds_user`, `createOnDate`, `lastModifiedOnDate`) VALUES (NULL, 'Enrique Reyes', 'Usuario inicial', '2019-07-09', '2019-07-09');