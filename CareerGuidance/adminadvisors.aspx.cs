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
    public partial class adminadvisors : System.Web.UI.Page
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
                    var editid = Convert.ToInt32(Request.QueryString["editid"]);
                    var deleteid = Convert.ToInt32(Request.QueryString["deleteid"]);

                    if (editid > 0)
                    {
                        Session["advisoreditid"] = editid;
                        Response.Redirect("advisoredit.aspx");

                    }
                    else if (deleteid > 0)
                    {
                        Session["advisordeleteid"] = deleteid;
                        Response.Redirect("advisordelete.aspx");

                    }


                    DataSet dsadvisors = objadminDAL.getadvisor();

                    StringBuilder sb = new StringBuilder();

                    for (int i =0; i< dsadvisors.Tables[0].Rows.Count; i++)
                    {
                        
                        sb.Append(" <tr>");
                        sb.Append("    <td>" + dsadvisors.Tables[0].Rows[i]["Name"] + "</td>");
                        sb.Append("    <td>" + dsadvisors.Tables[0].Rows[i]["Location"] + "</td>");
                        sb.Append("    <td>" + dsadvisors.Tables[0].Rows[i]["Emailid"] + "</td>");
                        sb.Append("    <td>" + dsadvisors.Tables[0].Rows[i]["Type"] + "</td>");
                        sb.Append("    <td><a href=\"adminadvisors.aspx?editid=" + dsadvisors.Tables[0].Rows[i]["id"] + "\">Edit</a></td>");
                        sb.Append("    <td><a href=\"adminadvisors.aspx?deleteid=" + dsadvisors.Tables[0].Rows[i]["id"] + "\">Delete</a></td>");
                        sb.Append("</tr>");

                    }

                    list.InnerHtml = sb.ToString();
                }
            }
        }




        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('You have been Logged Out Successfully');window.location ='admin.aspx';", true);

        }

        protected void btn_advisor_Click(object sender, EventArgs e)
        {
            Response.Redirect("addadvisor.aspx");
        }
    }
}