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
        public static readonly string DB_CONFIG = "Task_DB";
        private IDbConnection _connection;


        private ToDoList_DB() {
            singleton = new SqlConnection(ConnectionStringWebAPI());
            _connection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ConnectionString.ToString());
            _connection.Open();
        }

        public static string ConnectionStringWebAPI()
        {
            
           var stringConnection = Configuration.ConfigurationManager.ConnectionStrings[ConfigurationManager.AppSettings[DB_CONFIG]];
            
            if (stringConnection == null) {
                throw new  Exception(  $"ConnectionString doesnt found: {DB_CONFIG}");
            }
            
              return stringConnection.ConnectionString;
        }

        public static ToDoList_DB getInstance() {
            if(instance != null)
                instance = new ToDoList_DB();

            return instance;

        }
    }
}
