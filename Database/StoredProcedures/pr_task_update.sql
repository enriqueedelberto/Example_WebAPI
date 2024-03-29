SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE pr_task_update
	-- Add the parameters for the stored procedure here
	     @idTask INT = NULL,
	     @cdTask VARCHAR(255) = NULL,
	     @titletask VARCHAR(255),
	     @dstasks VARCHAR(255),
	     @statustask VARCHAR(255),  
		 @cdUser VARCHAR(255) = NULL, 
		 @createTaskOnDate DATE = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE [ToDoList].[Tasks]
   SET [cd_task] = @cdTask
      ,[title_task] = @titletask
      ,[ds_task] = @dstasks
      ,[status_task] = @statustask
      ,[cd_user] = @cdUser 
      ,[lastModifiedOnDate] = @createTaskOnDate
 WHERE [id_task] = @idTask

END
GO
