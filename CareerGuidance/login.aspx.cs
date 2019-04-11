using System;
using System.Collections.Specialized;
using System.Data;
using System.Text;
using System.Web.UI;
using CareerGuidanceDAL;
using CareerGuidanceEntity;


namespace CareerGuidance
{
    public partial class login : System.Web.UI.Page
    {
        UserMasterEntity objuserentity = new UserMasterEntity();
        UserMasterDAL objuserDAL = new UserMasterDAL();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
           
            string password = txtPassword.Text;
            string email = txtEmail.Text;

            try
            {
      
                DataSet dslogin = objuserDAL.loginuser( email, password);

                if (dslogin.Tables[0].Rows.Count == 0)
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('You Have Entered Wrong Email id or Password!');", true);

                    txtPassword.Text = string.Empty;
                    txtEmail.Text = string.Empty;

                }
                else
                {
                    string passentered = txtPassword.Text;
                    string passDB = Convert.ToString(dslogin.Tables[0].Rows[0]["Password"]);
                    Session["passDB"] = passDB;

                    bool flag = Helper.VerifyHash(passentered, "SHA512", passDB);
                    if (flag == true)
                    {
                        string usrid = Convert.ToString(dslogin.Tables[0].Rows[0]["id"]);
                        string usrname = Convert.ToString(dslogin.Tables[0].Rows[0]["Name"]);
                        string emailid = Convert.ToString(dslogin.Tables[0].Rows[0]["Email"]);

                        Session["usrid"] = usrid;
                        Session["usrname"] = usrname;
                        Session["usremail"] = emailid;

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Login  Successfully');window.location ='index.aspx';", true);

                    }
                    else
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "s", "window.alert('You Have Entered Wrong Email id or Password!');", true);

                        txtPassword.Text = string.Empty;
                        txtEmail.Text = string.Empty;
                    }

                }
            }
            catch (Exception ex)
            {
                
            }
        }
    }
}