using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Data.Common;

namespace ToDoList.Database
{
    public class ToDoList_DB
    {
        private static  ToDoList_DB instance = new ToDoList_DB();
        public DbConnection singleton = null;
        private IDbConnection _connection;


        private ToDoList_DB() {
            singleton = new SqlConnection(ConnectionStringWebAPI());
            _connection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ConnectionString.ToString());
            _connection.Open();
        }

        public static string ConnectionStringWebAPI()
        {
            
            return System.Configuration.ConfigurationManager.ConnectionStrings[ConfigurationManager.AppSettings["Task_DB"]].ConnectionString.ToString();
        }

        public static ToDoList_DB getInstance() {
            if(instance != null)
                instance = new ToDoList_DB();

            return instance;

        }
    }
}
