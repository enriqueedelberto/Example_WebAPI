DROP TABLE IF EXISTS `Tasks`;


CREATE TABLE IF NOT EXISTS Tasks
  (
    id_task INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	title_task VARCHAR(255),
	ds_task VARCHAR(255),
	status_task VARCHAR(255),
	id_user INT NULL,
	createOnDate DATE,
	lastModifiedOnDate DATE
	
  
  );
  
  
  INSERT INTO `tasks` (`id_task`, `title_task`, `ds_task`, `status_task`, `id_user`, `createOnDate`, `lastModifiedOnDate`) VALUES (NULL, 'Task 1', 'Crear una base de datos en Mysql', 'IN_PROGRESS', '1', '2019-07-09', '2019-07-09');