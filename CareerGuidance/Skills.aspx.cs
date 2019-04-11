using CareerGuidanceDAL;
using CareerGuidanceEntity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareerGuidance
{
    public partial class Skills : System.Web.UI.Page
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

                    var id = Convert.ToInt32(Request.QueryString["id"]);
                    var deleteid = Convert.ToInt32(Request.QueryString["deleteid"]);

                    if(id > 0)
                    {
                        Session["skilleditid"] = id;
                        Response.Redirect("SkillEdit.aspx");

                    }
                    else  if(deleteid > 0)
                    {
                        Session["skilldeleteid"] = deleteid;
                        Response.Redirect("SkillDelete.aspx");

                    }
                       

                    string userid = Convert.ToString(Session["usrid"]);

                    DataSet ds = objskillDAL.getuserskilllist(userid);

                    StringBuilder sb = new StringBuilder();

                    for(int i=0; i< ds.Tables[0].Rows.Count; i++)
                    {
                        sb.Append("     <tr >");
                        sb.Append("            <td style=\"text-align:center\">" + ds.Tables[0].Rows[i]["SkillName"] + "</td>");
                        sb.Append("            <td style=\"text-align:center\">" + ds.Tables[0].Rows[i]["Skillrate"] + "</td>");
                        sb.Append("            <td style=\"text-align:center\">");                      
                        sb.Append("              <a href=\"skills.aspx?id="+ds.Tables[0].Rows[i]["id"]+"\"   >Edit</a> ");
                        sb.Append("		</td>");
                        sb.Append("		   <td style=\"text-align:center\">");
                        sb.Append("              <a href=\"skills.aspx?deleteid="+ds.Tables[0].Rows[i]["id"]+"\"  >Delete</a>  ");
                        sb.Append("		</td>");
                        sb.Append("        </tr>");
                        sb.Append("     ");
                    }

                    userskillaction.InnerHtml = sb.ToString();


                }

            }
        }
    }
}