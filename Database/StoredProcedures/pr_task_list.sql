-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE pr_task_list 
	-- Add the parameters for the stored procedure here
	     @idTask INT = NULL,
		 @cdTask INT = NULL,
		 @idUser INT, 
		 @titletask VARCHAR(255), 
		 @statustask VARCHAR(255), 
		 @createTaskOnDate DATE
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [id_task],
	       [cd_task] ,
           [title_task],[ds_task],[status_task],[id_user],[createOnDate],
           [lastModifiedOnDate]


	FROM ToDoList.Tasks
	where @idTask IS NULL Or id_task = @idTask
	      and @titletask IS NULL OR [title_task] = @titletask
		  and @idUser IS NULL OR [id_user] = @idUser
		  and @statustask IS NULL OR [status_task] = @statustask
END
GO
