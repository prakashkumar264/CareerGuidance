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
    public class AdminDAL
    {
        DataSet ds = new DataSet();

        //admin login
        public DataSet loginadmin(string Name, string Password)
        {
            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[2];


                objSqlParm[0] = new SqlParameter("@Name", SqlDbType.VarChar, 255);
                objSqlParm[0].Direction = ParameterDirection.Input;
                objSqlParm[0].Value = Name;

                objSqlParm[1] = new SqlParameter("@Password", SqlDbType.VarChar, 255);
                objSqlParm[1].Direction = ParameterDirection.Input;
                objSqlParm[1].Value = Password;


                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "getadminlogin", objSqlParm);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;
        }

        public DataSet getadvisor()
        {
            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[0];

                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "getadvisorlist", objSqlParm);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;
        }

        public DataSet getparticularuser(int viewid)
        {
            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[1];


                objSqlParm[0] = new SqlParameter("@id", SqlDbType.Int);
                objSqlParm[0].Direction = ParameterDirection.Input;
                objSqlParm[0].Value = viewid;

                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "getparticularuser", objSqlParm);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;
        }

        public DataSet getallusers()
        {
            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[0];

                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "getallusers", objSqlParm);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;
        }
    }
}
