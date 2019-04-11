58using System;
using System.Collections.Specialized;
using System.Data;
using System.Text;
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
                
                string usrid = Convert.ToString(dslogin.Tables[0].Rows[0]["id"]);
                string usrname = Convert.ToString(dslogin.Tables[0].Rows[0]["Name"]);
                string emailid = Convert.ToString(dslogin.Tables[0].Rows[0]["Email"]);

                Session["usrid"] = usrid;
                Session["usrname"] = usrname;
                Session["usremail"] = emailid;

                Response.Redirect("index.aspx");
               
            }
            catch (Exception ex)
            {

            }
        }
    }
}