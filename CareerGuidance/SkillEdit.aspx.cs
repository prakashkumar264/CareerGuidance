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
    public partial class SkillEdit : System.Web.UI.Page
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

                     string skilleditid = Convert.ToString(Session["skilleditid"]);

                    DataSet dsrating = objskillDAL.getrating();

                    ddlrating.DataTextField = "Rating";
                    ddlrating.DataValueField = "id";
                    ddlrating.DataSource = dsrating;
                    ddlrating.DataBind();


                    DataSet dsedit = objskillDAL.getskillbyid(skilleditid);

                    lblskillname.Text = Convert.ToString(dsedit.Tables[0].Rows[0]["SkillName"]);



                }

            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string skilleditid = Convert.ToString(Session["skilleditid"]);
            string rating = ddlrating.SelectedValue;

            DataSet dsedit = objskillDAL.editskill(skilleditid, rating);

            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Skill Updated Successfullu');window.location ='Skills.aspx';", true);
        }
    }
}