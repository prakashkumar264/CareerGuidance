using System;
using System.Data;


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
                DataSet dslogin = objuserDAL.registerform(name,email, password);

                string id = Convert.ToString(dslogin.Tables[0].Rows[0]["id"]);
                string roleid = Convert.ToString(dslogin.Tables[0].Rows[0]["roleid"]);
                string typeid = Convert.ToString(dslogin.Tables[0].Rows[0]["typeid"]);
            }
            catch (Exception ex)
            {

            }

        }
    }
}