DROP TABLE IF EXISTS `Tasks`;


CREATE TABLE EXISTS ToDoList.Tasks
  (
    id_task INT PRIMARY KEY IDENTITY (1, 1) PRIMARY KEY,
	cd_task VARCHAR(255) NOT NULL,
	title_task VARCHAR(255) NOT NULL,
	ds_task VARCHAR(255) NULL,
	status_task VARCHAR(255) NOT NULL,
	id_user INT NULL,
	createOnDate DATETIME,
	lastModifiedOnDate DATETIME
	
	
  );
  
  
  
  
  INSERT INTO `tasks` (`id_task`, `title_task`, `ds_task`, `status_task`, `id_user`, `createOnDate`, `lastModifiedOnDate`) 
               VALUES 
			   (NULL, 'Task 1', 'Crear una base de datos en Mysql', 'IN_PROGRESS', '1', '2019-07-09', '2019-07-09');