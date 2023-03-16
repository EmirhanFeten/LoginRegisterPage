using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LoginRegisterPage
{
    public class Db
    {

        public SqlConnection connection = new SqlConnection
            (ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

        public void open()
        {
            connection.Open();

        }
        public void close()
        {
            connection.Close();
        }
    }
}