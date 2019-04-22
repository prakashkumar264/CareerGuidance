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
    public partial class admin1 : System.Web.UI.Page
    { 
        AdminEntity objadminEntity = new AdminEntity();
        AdminDAL objadminDAL = new AdminDAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_sign_Click(object sender, EventArgs e)
        {
            string Password = txtPassword.Text;
            string Name = txtname.Text;

            try
            {
                DataSet dslogin = objadminDAL.loginadmin(Name, Password);

                if (dslogin.Tables[0].Rows.Count == 0)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Wrong Username or Password');window.location ='admin.aspx';", true);
                    txtPassword.Text = string.Empty;
                    txtname.Text = string.Empty;
                }
                else
                {
                    string passDB = Convert.ToString(dslogin.Tables[0].Rows[0]["Password"]);

                    if(Password == passDB)
                    {
                        string adminname = Convert.ToString(dslogin.Tables[0].Rows[0]["Name"]);
                        int adminid = Convert.ToInt32(dslogin.Tables[0].Rows[0]["id"]);

                        Session["adminid"] = adminid;
                        Session["adminname"] = adminname;

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Login Successfully');window.location ='users.aspx';", true);
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Wrong Username or Password');window.location ='login.aspx';", true);
                        txtPassword.Text = string.Empty;
                        txtname.Text = string.Empty;
                    }
                    
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}