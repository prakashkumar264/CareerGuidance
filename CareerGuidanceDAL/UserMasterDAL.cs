using CareerGuidance;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;



namespace CareerGuidanceDAL
{
    public class UserMasterDAL
    {
        DataSet ds = new DataSet();

        public DataSet registerform(string name, string email, string password)
        {
            SqlConnection objSqlConn = new SqlConnection();
           
            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[3];

                objSqlParm[0] = new SqlParameter("@Name", SqlDbType.VarChar, 255);
                objSqlParm[0].Direction = ParameterDirection.Input;
                objSqlParm[0].Value = name;

                objSqlParm[1] = new SqlParameter("@Email", SqlDbType.VarChar, 255);
                objSqlParm[1].Direction = ParameterDirection.Input;
                objSqlParm[1].Value = email;

                objSqlParm[2] = new SqlParameter("@Password", SqlDbType.VarChar, 255);
                objSqlParm[2].Direction = ParameterDirection.Input;
                objSqlParm[2].Value = password;

                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "registeruser", objSqlParm);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;
        }

        public DataSet loginuser(string email, string password)
        {
            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[2];


                objSqlParm[0] = new SqlParameter("@Email", SqlDbType.VarChar, 255);
                objSqlParm[0].Direction = ParameterDirection.Input;
                objSqlParm[0].Value = email;

                objSqlParm[1] = new SqlParameter("@Password", SqlDbType.VarChar, 255);
                objSqlParm[1].Direction = ParameterDirection.Input;
                objSqlParm[1].Value = password;

                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "loginuser", objSqlParm);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;
        }


    }
}
