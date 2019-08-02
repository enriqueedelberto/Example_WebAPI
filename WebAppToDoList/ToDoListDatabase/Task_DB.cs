using Insight.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ToDoListDatabase
{
    public interface Task_DB : IDbConnection, IDbTransaction
    {
        [Sql("task_list", CommandType.StoredProcedure)]
        List<dynamic> pr_Test_list();

    }
}
