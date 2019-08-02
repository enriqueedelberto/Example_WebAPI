using System;
using System.Collections.Generic;
using System.Net;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using ToDoList.Database;
using ToDoList.Entities;
using WebAppToDoList.Controllers;
using WebAppToDoList.Models;

namespace WebAppToDoList.Tests
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            var conex = ToDoList_DB.getInstance().singleton;
        }


        [TestMethod]
        public void TestMethodApiUser_ListUsers()
        {
            var contrlUser = new UserController();
            //var conex = ToDoList_DB.getInstance().singleton;

            var user = new GetUserViewModel() {
                cd_user = "",
                createdOnDate = DateTime.Now,
                nm_user= "Me",
                pageIndex = 1,
                pageTotal = 3
                

            };
           // var lstUsers = contrlUser.GetAllUsers(user);

            Assert.AreEqual(HttpStatusCode.BadRequest, "404");
        }






        private List<User> GetTestUsers()
        {
            var testProducts = new List<User>();
            testProducts.Add(new User { cd_user = "23", nm_user = "Demo1"  });
            testProducts.Add(new User { cd_user = "23", nm_user = "Demo2" });
            testProducts.Add(new User { cd_user = "23", nm_user = "Demo3"  });
            testProducts.Add(new User { cd_user = "23", nm_user = "Demo4"  });

            return testProducts;
        }
    }
}
