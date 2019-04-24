using System;
using System.Data;
using System.Net.Mail;
using System.Text;
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

            if (!IsPostBack)
            {
                if (Session["usrid"] == null)
                {


                }
                else
                {
                    StringBuilder sb = new StringBuilder();

                    sb.Append("<a href=\"index.aspx\" >Dashboard <i class=\"fa fa-angle-down\"></i></a>");

                    dash.InnerHtml = sb.ToString();
                }
            }
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string pass = txtPassword.Text;
            string repass = txtRePass.Text;
            string email = txtEmail.Text;
            string password = Helper.ComputeHash(pass, "SHA512", null);

            DataSet dsemail = objuserDAL.checkemail(email);

            if(dsemail.Tables[0].Rows.Count > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Email id already Registered');window.location ='register.aspx';", true);
            }
            else
            {
                if (pass == repass)
                {
                    try
                    {
                        DataSet dsregister = objuserDAL.registerform(name, email, password);

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Registered Successfully');window.location ='login.aspx';", true);



                        MailMessage message = new MailMessage();
                        SmtpClient smtpClient = new SmtpClient();
                        string msg = string.Empty;
                        try
                        {
                            MailAddress fromAddress = new MailAddress("biodieselprakash@gmail.com");
                            message.From = fromAddress;
                            message.To.Add(email);

                            message.Subject = "Upgrowth - Career Guidance";
                            message.IsBodyHtml = true;
                            message.Body = "You have Successfully Registered on our website. Login on our Site to get Career Advice";
                            smtpClient.Host = "smtp.gmail.com";   // We use gmail as our smtp client
                            smtpClient.Port = 587;
                            smtpClient.EnableSsl = true;
                            smtpClient.UseDefaultCredentials = true;
                            smtpClient.Credentials = new System.Net.NetworkCredential("biodieselprakash@gmail.com", "QAZ123!@#");

                            smtpClient.Send(message);
                            msg = "Successful<BR>";
                        }
                        catch (Exception ex)
                        {

                        }
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

    }
