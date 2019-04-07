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

                    txtEmail.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["Email"]);
                    txtPhone.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["Phone"]);
                    txtLocation.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["Location"]);
                    txtJobRole.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["JobRole"]);
                    txtExperience.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["Experience"]);
                    txtSkills.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["Skill"]);
                    txtPassion.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["Passion"]);
                    txtInterest.Text = Convert.ToString(dsusrdata.Tables[0].Rows[0]["Interest"]);

                    Session["Interest"] = txtInterest.Text;
                    Session["Passion"] = txtPassion.Text;
                    Session["Location"] = txtLocation.Text;
                    Session["Skill"] = txtSkills.Text;
                    Session["JobRole"] = txtJobRole.Text;

                }

            }
           

        }


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



    }
}