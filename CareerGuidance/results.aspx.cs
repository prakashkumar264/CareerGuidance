using CareerGuidanceDAL;
using CareerGuidanceEntity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareerGuidance
{
    public partial class results : System.Web.UI.Page
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

                    DataSet dspara = objskillDAL.getpara(userid);

                    int i;

                    StringBuilder sbskill = new StringBuilder();
                    for(i=0;i< dspara.Tables[0].Rows.Count; i++)
                    {
                        sbskill.Append(" <p > " + dspara.Tables[0].Rows[i]["SkillName"] + " : " + dspara.Tables[0].Rows[i]["Skillrate"] + " </p>");
                    }
                    paraskill.InnerHtml = sbskill.ToString();

                    StringBuilder sbapti = new StringBuilder();
                    for (i = 0; i < dspara.Tables[1].Rows.Count; i++)
                    {
                        sbapti.Append(" <p > " + dspara.Tables[1].Rows[i]["SkillName"] + " : " + dspara.Tables[1].Rows[i]["counter"] + "  / 10</p>");
                    }
                    paraapti.InnerHtml = sbapti.ToString();



                }
            }
        }

    }
}