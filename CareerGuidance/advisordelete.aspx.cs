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
    public partial class advisordelete : System.Web.UI.Page
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
                    string name = Convert.ToString(Session["advisordeleteid"]);

                    adminname.Text = name;



                }
            }

         }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["advisordeleteid"]);

            DataSet dsdelete = objadminDAL.deleteadvisor(id);

            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Advisor Deleted');window.location ='adminadvisors.aspx';", true);
        }
    }
}