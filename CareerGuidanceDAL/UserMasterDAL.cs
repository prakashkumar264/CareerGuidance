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


        //Register User
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

        //Login User
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

        //fetch user data
        public DataSet userdata(string userid)
        {
            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[1];


                objSqlParm[0] = new SqlParameter("@id", SqlDbType.Int);
                objSqlParm[0].Direction = ParameterDirection.Input;
                objSqlParm[0].Value = userid;

                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "getuserdata", objSqlParm);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;
        }

        //update user data
        public DataSet updatebasicuserdata(string userid, string Email, string Phone, string Location, string JobRole, string Experience, string Skill, string Passion, string Interest)
        {
            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[9];


                objSqlParm[0] = new SqlParameter("@id", SqlDbType.Int);
                objSqlParm[0].Direction = ParameterDirection.Input;
                objSqlParm[0].Value = userid;

                objSqlParm[1] = new SqlParameter("@Email", SqlDbType.VarChar, 255);
                objSqlParm[1].Direction = ParameterDirection.Input;
                objSqlParm[1].Value = Email;

                objSqlParm[2] = new SqlParameter("@Phone", SqlDbType.VarChar, 255);
                objSqlParm[2].Direction = ParameterDirection.Input;
                objSqlParm[2].Value = Phone;

                objSqlParm[3] = new SqlParameter("@Location", SqlDbType.VarChar, 255);
                objSqlParm[3].Direction = ParameterDirection.Input;
                objSqlParm[3].Value = Location;

                objSqlParm[4] = new SqlParameter("@JobRole", SqlDbType.VarChar, 255);
                objSqlParm[4].Direction = ParameterDirection.Input;
                objSqlParm[4].Value = JobRole;

                objSqlParm[5] = new SqlParameter("@Experience", SqlDbType.VarChar, 255);
                objSqlParm[5].Direction = ParameterDirection.Input;
                objSqlParm[5].Value = Experience;

                objSqlParm[6] = new SqlParameter("@Skill", SqlDbType.VarChar, 255);
                objSqlParm[6].Direction = ParameterDirection.Input;
                objSqlParm[6].Value = Skill;

                objSqlParm[7] = new SqlParameter("@Passion", SqlDbType.VarChar, 255);
                objSqlParm[7].Direction = ParameterDirection.Input;
                objSqlParm[7].Value = Passion;

                objSqlParm[8] = new SqlParameter("@Interest", SqlDbType.VarChar, 255);
                objSqlParm[8].Direction = ParameterDirection.Input;
                objSqlParm[8].Value = Interest;

                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "UpdateUserBasicDetail", objSqlParm);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;
        }

        
        //update user education data
        public DataSet updateeducationuserdata(string userid, string tenth, string twelth ,string UGMarks, string GMarks, string UGStream, string GStream, string Profession, string othereducation, string HighSchool, string UGSchool, string GSchool)
        {
            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[12];


                objSqlParm[0] = new SqlParameter("@id", SqlDbType.Int);
                objSqlParm[0].Direction = ParameterDirection.Input;
                objSqlParm[0].Value = userid;

                objSqlParm[1] = new SqlParameter("TenthMarks", SqlDbType.VarChar, 255);
                objSqlParm[1].Direction = ParameterDirection.Input;
                objSqlParm[1].Value = tenth;

                objSqlParm[2] = new SqlParameter("TwelthMarks", SqlDbType.VarChar, 255);
                objSqlParm[2].Direction = ParameterDirection.Input;
                objSqlParm[2].Value = twelth;

                objSqlParm[3] = new SqlParameter("UGMarks", SqlDbType.VarChar, 255);
                objSqlParm[3].Direction = ParameterDirection.Input;
                objSqlParm[3].Value = UGMarks;

                objSqlParm[4] = new SqlParameter("GMarks", SqlDbType.VarChar, 255);
                objSqlParm[4].Direction = ParameterDirection.Input;
                objSqlParm[4].Value = GMarks;

                objSqlParm[5] = new SqlParameter("UGStream", SqlDbType.VarChar, 255);
                objSqlParm[5].Direction = ParameterDirection.Input;
                objSqlParm[5].Value = UGStream;

                objSqlParm[6] = new SqlParameter("GStream", SqlDbType.VarChar, 255);
                objSqlParm[6].Direction = ParameterDirection.Input;
                objSqlParm[6].Value = GStream;

                objSqlParm[7] = new SqlParameter("Profession", SqlDbType.VarChar, 255);
                objSqlParm[7].Direction = ParameterDirection.Input;
                objSqlParm[7].Value = Profession;


                objSqlParm[8] = new SqlParameter("OtherEducation", SqlDbType.VarChar, 255);
                objSqlParm[8].Direction = ParameterDirection.Input;
                objSqlParm[8].Value = othereducation;

                objSqlParm[9] = new SqlParameter("HighSchool", SqlDbType.VarChar, 255);
                objSqlParm[9].Direction = ParameterDirection.Input;
                objSqlParm[9].Value = HighSchool;

                objSqlParm[10] = new SqlParameter("UGSchool", SqlDbType.VarChar, 255);
                objSqlParm[10].Direction = ParameterDirection.Input;
                objSqlParm[10].Value = UGSchool;

                objSqlParm[11] = new SqlParameter("GSchool", SqlDbType.VarChar, 255);
                objSqlParm[11].Direction = ParameterDirection.Input;
                objSqlParm[11].Value = GSchool;



                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "UpdateUserEducationData", objSqlParm);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;
        }

        //Change Password
        public DataSet updatepassword(string ussrid, string newpass)
        {
            SqlConnection objSqlConn = new SqlConnection();

            objSqlConn.ConnectionString = DBHelper.ConnectionString().ToString();
            try
            {
                SqlParameter[] objSqlParm = new SqlParameter[2];


                objSqlParm[0] = new SqlParameter("@id", SqlDbType.Int);
                objSqlParm[0].Direction = ParameterDirection.Input;
                objSqlParm[0].Value = ussrid;

                objSqlParm[1] = new SqlParameter("@Password", SqlDbType.VarChar, 255);
                objSqlParm[1].Direction = ParameterDirection.Input;
                objSqlParm[1].Value = newpass;

                ds = SqlHelper.ExecuteDataset(objSqlConn, CommandType.StoredProcedure, "UpdatePassword", objSqlParm);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;
        }


    }
}
