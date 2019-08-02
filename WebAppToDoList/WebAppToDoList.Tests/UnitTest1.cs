using System;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using ToDoList.Database;
using ToDoList.Entities;

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
