using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using CareerGuidanceDAL;
using CareerGuidanceEntity;



namespace CareerGuidance
{
    public partial class Register : System.Web.UI.Page
    {
        UserMasterEntity objuserentity = new UserMasterEntity();
        UserMasterDAL objuserDAL = new UserMasterDAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            
           
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string pass = txtPassword.Text;
            string repass = txtRePass.Text;
            string email = txtEmail.Text;
            string password = Helper.ComputeHash(pass, "SHA512", null);

            if(pass == repass)
            {
                try
                {
                    DataSet dsregister = objuserDAL.registerform(name, email, password);

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Registered Successfully');window.location ='login.aspx';", true);
                }
                catch (Exception ex)
                {

                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Passwords Do not match');", true);
            }
        }
           

        }


    }
