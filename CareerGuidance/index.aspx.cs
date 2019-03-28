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
            string usrid = Convert.ToString(Session["usrid"]);
            string usrname = Convert.ToString(Session["usrname"]);
            string usremail = Convert.ToString(Session["usremail"]);
        }
    }
}