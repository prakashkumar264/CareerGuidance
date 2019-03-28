using System;
using System.Data;
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
            string password = txtPassword.Text;
            string email = txtEmail.Text;

            try
            {
                DataSet dsregister = objuserDAL.registerform(name,email, password);

                Response.Redirect("login.aspx");
            }
            catch (Exception ex)
            {

            }

        }
    }
}