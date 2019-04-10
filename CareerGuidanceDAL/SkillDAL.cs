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
    public class SkillDAL
    {
        DataSet ds = new DataSet();

        //Fetch Master Skill List
        public DataSet getskilllist()
        {
            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[0];

                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "getskilllist", objSqlParm);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;
        }

        //Get Rating List
        public DataSet getrating()
        {
            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[0];

                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "getrating", objSqlParm);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;
        }

        //delete skill by id
        public DataSet deleteskillbyid(string skilleditid)
        {
            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[1];


                objSqlParm[0] = new SqlParameter("@id", SqlDbType.Int);
                objSqlParm[0].Direction = ParameterDirection.Input;
                objSqlParm[0].Value = skilleditid;


                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "deleteskillid", objSqlParm);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;
        }

        //get user specific skill list
        public DataSet getskillbyid(string skilleditid)
        {
            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[1];


                objSqlParm[0] = new SqlParameter("@id", SqlDbType.Int);
                objSqlParm[0].Direction = ParameterDirection.Input;
                objSqlParm[0].Value = skilleditid;


                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "getskilldatabyid", objSqlParm);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;
        }

        public DataSet editskill(string skilleditid, string rating)
        {

            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[2];


                objSqlParm[0] = new SqlParameter("@id", SqlDbType.Int);
                objSqlParm[0].Direction = ParameterDirection.Input;
                objSqlParm[0].Value = skilleditid;

                objSqlParm[1] = new SqlParameter("@Skillrate", SqlDbType.VarChar,255);
                objSqlParm[1].Direction = ParameterDirection.Input;
                objSqlParm[1].Value = rating;


                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "updateuserskill", objSqlParm);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;

        }

        //Get User All skill
        public DataSet getuserskilllist(string userid)
        {
            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[1];


                objSqlParm[0] = new SqlParameter("@Userid", SqlDbType.VarChar, 255);
                objSqlParm[0].Direction = ParameterDirection.Input;
                objSqlParm[0].Value = userid;


                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "getuserskilllist", objSqlParm);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;
        }

        //Add User SKill
        public DataSet addskill(string userid, string rating, string skillid, string skillname)
        {
            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[4];


                objSqlParm[0] = new SqlParameter("@Userid", SqlDbType.VarChar, 255);
                objSqlParm[0].Direction = ParameterDirection.Input;
                objSqlParm[0].Value = userid;

                objSqlParm[1] = new SqlParameter("@Skillid", SqlDbType.VarChar, 255);
                objSqlParm[1].Direction = ParameterDirection.Input;
                objSqlParm[1].Value = rating;

                objSqlParm[2] = new SqlParameter("@Skillrate", SqlDbType.VarChar, 255);
                objSqlParm[2].Direction = ParameterDirection.Input;
                objSqlParm[2].Value = skillid;

                objSqlParm[3] = new SqlParameter("@SkillName", SqlDbType.VarChar, 255);
                objSqlParm[3].Direction = ParameterDirection.Input;
                objSqlParm[3].Value = skillname;

                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "addskill", objSqlParm);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;
        }

    
    }
}
