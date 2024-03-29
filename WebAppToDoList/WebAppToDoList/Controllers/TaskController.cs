﻿using Insight.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ToDoList.Database;
using WebAppToDoList.Models;

namespace WebAppToDoList.Controllers
{
    [RoutePrefix("api/Task")]
    public class TaskController : ApiController
    {
        [HttpGet]
        [Route("GetUsers")]
        public HttpResponseMessage GetAllTasks([FromBody] GetTaskViewModel task)
        {
            try
            {
                var resp = ToDoList_DB.getInstance().singleton.As<Task_DB>().pr_task_list(
                                                                                iVch_cd_task: task.cd_task,
                                                                                iVch_fecha: task.createdOnDate,
                                                                                iVch_status_task: task.status_task,
                                                                                iVch_title_task:task.title_task,
                                                                                iVch_cd_user: task.cd_user,
                                                                                pageIndex: task.pageIndex,
                                                                                         pageTotal: task.pageTotal);

                var vTest = new
                {
                    data = resp
                };

                return Request.CreateResponse(HttpStatusCode.OK, vTest);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.ToString());
            }
        }

        [HttpPost]
        [Route("saveTask")]
        public HttpResponseMessage SaveTask([FromBody] GetTaskViewModel task)
        {
            try
            {
                ToDoList_DB.getInstance().singleton.As<Task_DB>().pr_task_save(
                              iVch_cd_task: task.cd_task,
                              iVch_title_task: task.title_task,
                              iVch_status_task: task.status_task,
                              iVch_cd_user : task.cd_user,
                              iVch_desc_task: task.desc_task
                     );

                var vTest = new
                {
                    data = "Success"
                };

                return Request.CreateResponse(HttpStatusCode.OK, vTest);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.ToString());
            }
        }

        [HttpPost]
        [Route("updateTask")]
        public HttpResponseMessage UpdateTask([FromBody] GetTaskViewModel task)
        {
            try
            {
                ToDoList_DB.getInstance().singleton.As<Task_DB>().pr_task_update(
                              iVch_cd_task: task.cd_task,
                              iVch_title_task: task.title_task,
                              iVch_status_task: task.status_task,
                              iVch_cd_user: task.cd_user,
                              iVch_desc_task: task.desc_task
                     );

                var vTest = new
                {
                    data = "Success"
                };

                return Request.CreateResponse(HttpStatusCode.OK, vTest);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.ToString());
            }
        }

        [HttpPost]
        [Route("changeStatusTask")]
        public HttpResponseMessage ChangeStatusTask([FromBody] GetTaskViewModel task)
        {
            try
            {
                ToDoList_DB.getInstance().singleton.As<Task_DB>().pr_task_changeStatus(
                              iVch_cd_task: task.cd_task,

                              iVch_status_task: task.status_task
                             
                     );

                var vTest = new
                {
                    data = "Success"
                };

                return Request.CreateResponse(HttpStatusCode.OK, vTest);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.ToString());
            }
        }

        [HttpPost]
        [Route("assignUserToTask")]
        public HttpResponseMessage AssignUserToTask([FromBody] GetTaskViewModel task)
        {
            try
            {
                ToDoList_DB.getInstance().singleton.As<Task_DB>().pr_task_assignUser(
                              iVch_cd_task: task.cd_task,

                              iVch_cd_user: task.cd_user

                     );

                var vTest = new
                {
                    data = "Success"
                };

                return Request.CreateResponse(HttpStatusCode.OK, vTest);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.ToString());
            }
        }

        [HttpPost]
        [Route("removeUserToTask")]
        public HttpResponseMessage RemoveUserToTask([FromBody] GetTaskViewModel task)
        {
            try
            {
                ToDoList_DB.getInstance().singleton.As<Task_DB>().pr_task_removeUser(
                              iVch_cd_task: task.cd_task,

                              iVch_cd_user: task.cd_user

                     );

                var vTest = new
                {
                    data = "Success"
                };

                return Request.CreateResponse(HttpStatusCode.OK, vTest);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.ToString());
            }
        }
    }
}
