using CareerGuidanceDAL;
using CareerGuidanceEntity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareerGuidance
{
    public partial class Profile : System.Web.UI.Page
    {
        UserMasterEntity objuserentity = new UserMasterEntity();
        UserMasterDAL objuserDAL = new UserMasterDAL();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["usrid"] == null)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('You Have to login before accessing this page');window.location ='login.aspx';", true);
                    
                }
                else
                {
                    string userid = Convert.ToString(Session["usrid"]);
                    string usrname = Convert.ToString(Session["usrname"]);
                    string usremail = Convert.ToString(Session["usremail"]);

                    DataSet dsusrdata = objuserDAL.userdata(userid);


                    //Basic User Data
                    txtEmail.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["Email"]);
                    txtPhone.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["Phone"]);
                    txtLocation.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["Location"]);
                    txtJobRole.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["JobRole"]);
                    txtExperience.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["Experience"]);
                    txtSkills.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["Skill"]);
                    txtPassion.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["Passion"]);
                    txtInterest.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["Interest"]);

                    //Education User Data
                    txtTenth.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["TenthMarks"]);
                    txttwelth.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["TwelthMarks"]);
                    txtUGMarks.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["UGMarks"]);
                    txtGMarks.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["GMarks"]);
                    txtUGStream.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["UGStream"]);
                    txtGSTream.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["GStream"]);
                    txtProfession.Text= Convert.ToString(dsusrdata.Tables[0].Rows[0]["Profession"]);
                    txtOtherEducation.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["OtherEducation"]);
                    txtHighSchool.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["HighSchool"]);
                    txtUGSchool.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["UGSchool"]);
                    txtGSchool.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["GSchool"]);


                    //Storing for Sidebar
                    Session["Interest"] = txtInterest.Text;
                    Session["Passion"] = txtPassion.Text;
                    Session["Location"] = txtLocation.Text;
                    Session["Skill"] = txtSkills.Text;
                    Session["JobRole"] = txtJobRole.Text;
                    Session["Profession"] = txtProfession.Text;
                    Session["Education"] = txtUGSchool.Text;
                }

            }
           

        }

        //Profile basic data update
        protected void btn_profile_update(object sender, EventArgs e)
        {
            string userid = Convert.ToString(Session["usrid"]);
            string Email = txtEmail.Text;
            string Phone = txtPhone.Text;
            string Location = txtLocation.Text;
            string JobRole = txtJobRole.Text;
            string Experience = txtExperience.Text;
            string Skill = txtSkills.Text;
            string Passion = txtPassion.Text;
            string Interest = txtInterest.Text;


            DataSet dsupdatebasicusrdata = objuserDAL.updatebasicuserdata(userid, Email, Phone, Location, JobRole, Experience, Skill, Passion, Interest);

            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Your Profile has been updated Successfully');window.location ='profile.aspx';", true);

        }

        //User Education Update
        protected void Btn_education_update(object sender, EventArgs e)
        {
            string userid = Convert.ToString(Session["usrid"]);
            string tenth = txtTenth.Text;
            string twelth = txttwelth.Text;
            string UGMarks = txtUGMarks.Text;
            string GMarks = txtGMarks.Text;
            string UGStream = txtUGStream.Text;
            string GStream = txtGSTream.Text;
            string Profession = txtProfession.Text;
            string othereducation = txtOtherEducation.Text;
            string Highschool = txtHighSchool.Text;
            string UGSchool = txtUGSchool.Text;
            string GSchool = txtGSchool.Text;
           

            DataSet dsupdateeducationusrdata = objuserDAL.updateeducationuserdata(userid, tenth, twelth, UGMarks, GMarks, UGStream, GStream, Profession, othereducation, Highschool, UGSchool, GSchool );

            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Your Education Data has been updated Successfully');window.location ='profile.aspx';", true);

        }

        //User Password Update
        protected void Btn_password_update(object sender, EventArgs e)
        {
            string oldpassword = txtoldpassword.Text;

            string oldpasshash =  Convert.ToString(Session["passDB"]);

            bool flag = Helper.VerifyHash(oldpassword, "SHA512", oldpasshash);

            if (flag == true)
            {
                string repass = txtNewPass.Text;
                string renewpass = txtNewREPass.Text;

                if(repass == renewpass)
                {
                    string usssrid = Convert.ToString(Session["usrid"]);
                    string newpass = Helper.ComputeHash(repass, "SHA512", null);

                    DataSet dsupdatedpassword = objuserDAL.updatepassword(usssrid, newpass);

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Password Updated Successully');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('New & Re Password does not match');", true);
                    txtoldpassword.Text = "";
                    txtNewPass.Text = "";
                    txtNewREPass.Text = "";
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Your Old Password is wrong');", true);
                txtoldpassword.Text = "";
                txtNewPass.Text = "";
                txtNewREPass.Text = "";
            }


        }

    }
}