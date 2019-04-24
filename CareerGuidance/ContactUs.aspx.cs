using CareerGuidanceDAL;
using CareerGuidanceEntity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareerGuidance
{
    public partial class ContactUs : System.Web.UI.Page
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

        protected void submit_Click(object sender, EventArgs e)
        {
            string nm = name.Text;
            string em = email.Text;
            string ms = msg.Text;

            
            try
            {
                MailMessage message = new MailMessage();
                SmtpClient smtpClient = new SmtpClient();
                string msg = string.Empty;
                MailAddress fromAddress = new MailAddress(em);
                message.From = fromAddress;
                message.To.Add("superscientist01@gmail.com");

                message.Subject = nm + " Contacted For Inquiry";
                message.IsBodyHtml = true;
                message.Body = ms;
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
                throw ex;
            }

            //DataSet dsemail = objuserDAL.sendcontact(nm, em, ms);

            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Mail sent Successfully!!! You will be contacted soon');window.location ='home.aspx';", true);
        }
    }
}