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

        public DataSet getadisorallinfo(int id)
        {
            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[1];


                objSqlParm[0] = new SqlParameter("@id", SqlDbType.Int);
                objSqlParm[0].Direction = ParameterDirection.Input;
                objSqlParm[0].Value = id;



                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "advisorallinfo", objSqlParm);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;
        }

        public DataSet getadvisorinfotwo()
        {
            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[0];

                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "getadminadvisortwo", objSqlParm);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;
        }

        public DataSet getadvisorinfo()
        {
            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[0];

                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "getadvisorinfo", objSqlParm);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;
        }

        public DataSet deleteadvisor(int id)
        {
            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[1];


                objSqlParm[0] = new SqlParameter("@id", SqlDbType.Int);
                objSqlParm[0].Direction = ParameterDirection.Input;
                objSqlParm[0].Value = id;


                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "deleteadvisor", objSqlParm);
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

        public DataSet updateadvisor(int id, string name, string email, string phone, string experience, string about, string profilepic, int locationid, int typeid, string location)
        {
            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[10];


                objSqlParm[0] = new SqlParameter("@Name", SqlDbType.VarChar, 50);
                objSqlParm[0].Direction = ParameterDirection.Input;
                objSqlParm[0].Value = name;

                objSqlParm[1] = new SqlParameter("@Emailid", SqlDbType.VarChar, 50);
                objSqlParm[1].Direction = ParameterDirection.Input;
                objSqlParm[1].Value = email;

                objSqlParm[2] = new SqlParameter("@Phoneno", SqlDbType.VarChar, 50);
                objSqlParm[2].Direction = ParameterDirection.Input;
                objSqlParm[2].Value = phone;

                objSqlParm[3] = new SqlParameter("@Experience", SqlDbType.VarChar, 50);
                objSqlParm[3].Direction = ParameterDirection.Input;
                objSqlParm[3].Value = experience;

                objSqlParm[4] = new SqlParameter("@About", SqlDbType.VarChar, -1);
                objSqlParm[4].Direction = ParameterDirection.Input;
                objSqlParm[4].Value = about;

                objSqlParm[5] = new SqlParameter("@Profilepic", SqlDbType.VarChar, -1);
                objSqlParm[5].Direction = ParameterDirection.Input;
                objSqlParm[5].Value = profilepic;

                objSqlParm[6] = new SqlParameter("@Locationid", SqlDbType.Int);
                objSqlParm[6].Direction = ParameterDirection.Input;
                objSqlParm[6].Value = locationid;

                objSqlParm[7] = new SqlParameter("@Typeid", SqlDbType.Int);
                objSqlParm[7].Direction = ParameterDirection.Input;
                objSqlParm[7].Value = typeid;

                objSqlParm[8] = new SqlParameter("@Location", SqlDbType.VarChar, 50);
                objSqlParm[8].Direction = ParameterDirection.Input;
                objSqlParm[8].Value = location;

                objSqlParm[9] = new SqlParameter("@id", SqlDbType.Int);
                objSqlParm[9].Direction = ParameterDirection.Input;
                objSqlParm[9].Value = id;

                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "Updateadvisor", objSqlParm);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;
        }

        public DataSet addadvisor(string name, string email, string phone, string experience, string about, string profilepic, int locationid, int typeid, string location)
        {
            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[9];


                objSqlParm[0] = new SqlParameter("@Name", SqlDbType.VarChar, 50);
                objSqlParm[0].Direction = ParameterDirection.Input;
                objSqlParm[0].Value = name;

                objSqlParm[1] = new SqlParameter("@Emailid", SqlDbType.VarChar, 50);
                objSqlParm[1].Direction = ParameterDirection.Input;
                objSqlParm[1].Value = email;

                objSqlParm[2] = new SqlParameter("@Phoneno", SqlDbType.VarChar, 50);
                objSqlParm[2].Direction = ParameterDirection.Input;
                objSqlParm[2].Value = phone;

                objSqlParm[3] = new SqlParameter("@Experience", SqlDbType.VarChar, 50);
                objSqlParm[3].Direction = ParameterDirection.Input;
                objSqlParm[3].Value = experience;

                objSqlParm[4] = new SqlParameter("@About", SqlDbType.VarChar, -1);
                objSqlParm[4].Direction = ParameterDirection.Input;
                objSqlParm[4].Value = about;

                objSqlParm[5] = new SqlParameter("@Profilepic", SqlDbType.VarChar, -1);
                objSqlParm[5].Direction = ParameterDirection.Input;
                objSqlParm[5].Value = profilepic;

                objSqlParm[6] = new SqlParameter("@Locationid", SqlDbType.Int);
                objSqlParm[6].Direction = ParameterDirection.Input;
                objSqlParm[6].Value = locationid;

                objSqlParm[7] = new SqlParameter("@Typeid", SqlDbType.Int);
                objSqlParm[7].Direction = ParameterDirection.Input;
                objSqlParm[7].Value = typeid;

                objSqlParm[8] = new SqlParameter("@Location", SqlDbType.VarChar, 50);
                objSqlParm[8].Direction = ParameterDirection.Input;
                objSqlParm[8].Value = location;

                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "addadvisor", objSqlParm);
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
