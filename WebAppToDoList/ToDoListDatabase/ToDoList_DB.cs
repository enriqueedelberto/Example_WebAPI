using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

namespace ToDoListDatabase
{
    public class ToDoList_DB
    {
        private IDbConnection _connection;


        private ToDoList_DB() {
            _connection = new MySqlConnection(ConfigurationManager.ConnectionStrings["MySqlConnectionString"].ConnectionString.ToString());
            _connection.Open();
        }

        public static string ConnectionStringWebAPI()
        {
            
            return System.Configuration.ConfigurationManager.ConnectionStrings[ConfigurationManager.AppSettings["Task_DB"]].ConnectionString.ToString();
        }

        public static ToDoList_DB getConnection() {
            return new ToDoList_DB();
        }
    }
}
