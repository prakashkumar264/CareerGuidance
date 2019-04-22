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
    public partial class userview : System.Web.UI.Page
    {
        AdminEntity objadminEntity = new AdminEntity();
        AdminDAL objadminDAL = new AdminDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["adminid"] == null)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('You Have to login before accessing this page');window.location ='admin.aspx';", true);
                }
                else
                {
                    var viewid  = Convert.ToInt32(Session["viewid"]);

                    DataSet dsparticularuser = objadminDAL.getparticularuser(viewid);

                    Name.InnerText =      Convert.ToString(dsparticularuser.Tables[0].Rows[0]["Name"]);
                    emailid.Text =        Convert.ToString(dsparticularuser.Tables[0].Rows[0]["Email"]);
                    phone.Text =          Convert.ToString(dsparticularuser.Tables[0].Rows[0]["Phone"]);
                    location.Text =       Convert.ToString(dsparticularuser.Tables[0].Rows[0]["Location"]);
                    jobrole.Text =        Convert.ToString(dsparticularuser.Tables[0].Rows[0]["JobRole"]);
                    experience.Text =     Convert.ToString(dsparticularuser.Tables[0].Rows[0]["Experience"]);
                    skills.Text =         Convert.ToString(dsparticularuser.Tables[0].Rows[0]["Skill"]);
                    Passion.Text =        Convert.ToString(dsparticularuser.Tables[0].Rows[0]["Passion"]);
                    interest.Text =       Convert.ToString(dsparticularuser.Tables[0].Rows[0]["Interest"]);
                    profilepic2.ImageUrl= Convert.ToString(dsparticularuser.Tables[0].Rows[0]["profilepic"]);
                    linkCV.NavigateUrl =  Convert.ToString(dsparticularuser.Tables[0].Rows[0]["CV"]);
                    tenthmarks.Text =     Convert.ToString(dsparticularuser.Tables[0].Rows[0]["TenthMarks"]);
                    twelthmarks.Text =    Convert.ToString(dsparticularuser.Tables[0].Rows[0]["TwelthMarks"]);
                    UGmarks.Text =        Convert.ToString(dsparticularuser.Tables[0].Rows[0]["UGMarks"]);
                    Gmarks.Text =         Convert.ToString(dsparticularuser.Tables[0].Rows[0]["GMarks"]);
                    UGStream.Text =       Convert.ToString(dsparticularuser.Tables[0].Rows[0]["UGStream"]);
                    GStream.Text =        Convert.ToString(dsparticularuser.Tables[0].Rows[0]["GStream"]);
                    Profession.Text =     Convert.ToString(dsparticularuser.Tables[0].Rows[0]["Profession"]);
                    OtherEducation.Text = Convert.ToString(dsparticularuser.Tables[0].Rows[0]["OtherEducation"]);
                    HighSchool.Text =     Convert.ToString(dsparticularuser.Tables[0].Rows[0]["HighSchool"]);
                    UGSchool.Text =       Convert.ToString(dsparticularuser.Tables[0].Rows[0]["UGSchool"]);
                    GSchool.Text =        Convert.ToString(dsparticularuser.Tables[0].Rows[0]["GSchool"]);



                }
            }


        }

        protected void goback_Click(object sender, EventArgs e)
        {
            Response.Redirect("users.aspx");
        }
    }
}