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
    public partial class SkillAdd : System.Web.UI.Page
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
                    string usrname = Convert.ToString(Session["usrname"]);
                    string usremail = Convert.ToString(Session["usremail"]);

                    DataSet dsskilllist = objskillDAL.getskilllist();
                    DataSet dsrating = objskillDAL.getrating();

                    ddlskill.DataTextField = "SkillName";
                    ddlskill.DataValueField = "id";
                    ddlskill.DataSource = dsskilllist;
                    ddlskill.DataBind();

                    ddlrating.DataTextField = "Rating";
                    ddlrating.DataValueField = "id";
                    ddlrating.DataSource = dsrating;
                    ddlrating.DataBind();

                }

            }

        }


        //Add Skil Rating
        protected void btn_update(object sender, EventArgs e)
        {
            string userid = Convert.ToString(Session["usrid"]);
            string rating = ddlrating.SelectedValue;
            string skillid = ddlskill.SelectedValue;
            string skillname = Convert.ToString(ddlskill.SelectedItem);

            DataSet dsaddskill = objskillDAL.addskill(userid, rating, skillid, skillname);

            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Skill Added Succesfully');window.location ='skills.aspx';", true);

        }
    }
}