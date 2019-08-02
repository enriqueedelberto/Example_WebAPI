using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using ToDoListDatabase;

namespace WebAppToDoList.Tests
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            var conex = ToDoList_DB.ConnectionStringWebAPI();
        }
    }
}
