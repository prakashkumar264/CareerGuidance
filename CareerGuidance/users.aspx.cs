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
    public partial class users : System.Web.UI.Page
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
                    var viewid = Convert.ToInt32(Request.QueryString["viewid"]);
                    var deleteid = Convert.ToInt32(Request.QueryString["deleteid"]);

                    if (viewid > 0)
                    {
                        Session["viewid"] = Convert.ToInt32(viewid);
                        Response.Redirect("userview.aspx");
                    }
                    else if (deleteid > 0)
                    {
                        Session["deleteid"] = Convert.ToInt32(deleteid);
                        Response.Redirect("userdelete.aspx");
                    }

                    DataSet dsusers = objadminDAL.getallusers();

                    StringBuilder sb = new StringBuilder();

                    for (int i =0; i< dsusers.Tables[0].Rows.Count; i++)
                    {
                        sb.Append("  <tr>");
                        sb.Append("     <td>" + dsusers.Tables[0].Rows[i]["Name"] + "</td>");
                        sb.Append("     <td>" + dsusers.Tables[0].Rows[i]["Email"] + "</td>");
                        sb.Append("     <td>" + dsusers.Tables[0].Rows[i]["Location"] + "</td>");
                        sb.Append("     <td>" + dsusers.Tables[0].Rows[i]["Profession"] + "</td>");
                        sb.Append("     <td><a href=\"users.aspx?viewid=" + dsusers.Tables[0].Rows[i]["id"] + "\">View</a></td>");
                        sb.Append("     <td><a href=\"users.aspx?deleteid=" + dsusers.Tables[0].Rows[i]["id"] + "\">Delete</a></td>");
                        sb.Append(" </tr>");

                    }

                    list.InnerHtml = sb.ToString();
                }
            }
        }



        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('You have been Logged Out Successfully');window.location ='login.aspx';", true);

        }
        
    }
}