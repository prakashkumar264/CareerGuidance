using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CareerGuidanceDAL
{
    public class DBHelper
    {
        public DBHelper()
        {

        }

        public string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["career"].ToString();


        }

        public static string ConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["career"].ToString();

        }


    }

   
}
