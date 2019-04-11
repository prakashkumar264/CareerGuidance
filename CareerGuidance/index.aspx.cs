using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CareerGuidance;

namespace CareerGuidance
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["usrid"] == null)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('You Have to login before accessing this page');window.location ='login.aspx';", true);
            }
            else
            {
                string usrid = Convert.ToString(Session["usrid"]);
                string usrname = Convert.ToString(Session["usrname"]);
                string usremail = Convert.ToString(Session["usremail"]);
            }

            
        }
    }
}