using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareerGuidance
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["usrid"] == null)
                {
                    

                }
                else
                {
                    StringBuilder sb = new StringBuilder();

                    sb.Append("<a href=\"profile.aspx\" >Dashboard <i class=\"fa fa-angle-down\"></i></a>");

                    dash.InnerHtml = sb.ToString();
                }
            }

        }
    }
}