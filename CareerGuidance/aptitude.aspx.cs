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
    public partial class aptitude : System.Web.UI.Page
    {
        SkillEntity objskillEntity = new SkillEntity();
        SkillDAL objskillDAL = new SkillDAL();
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

                    DataSet dsskilllist = objskillDAL.getskilllist();

                    ddlskill.DataTextField = "SkillName";
                    ddlskill.DataValueField = "id";
                    ddlskill.DataSource = dsskilllist;
                    ddlskill.DataBind();

                    DataSet ds = objskillDAL.getuserskilllist(userid);

                    ddluserspecificskill.DataTextField = "SkillName";
                    ddluserspecificskill.DataValueField = "Skillid";
                    ddluserspecificskill.DataSource = ds;
                    ddluserspecificskill.DataBind();


                }

            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string userid = Convert.ToString(Session["usrid"]);
            string skillid = ddlskill.SelectedValue;

            Session["selectedskillfortest"] = skillid;
            Response.Redirect("AptitudeTest.aspx");
        }

        protected void btn_subtwo_Click(object sender, EventArgs e)
        {
            string userid = Convert.ToString(Session["usrid"]);
            string skillid = ddluserspecificskill.SelectedValue;

            Session["selectedskillfortest"] = skillid;
            Response.Redirect("AptitudeTest.aspx");


        }
    }
}