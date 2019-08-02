SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE pr_task_changeStatus
	-- Add the parameters for the stored procedure here
	     @idTask INT = NULL,
	      
	     @statustask VARCHAR(255),  
		
		 @createTaskOnDate DATE = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    UPDATE [ToDoList].[Tasks]
   SET  [status_task] = @statustask 
       ,[lastModifiedOnDate] = @createTaskOnDate
 WHERE [id_task] = @idTask

END
GO
