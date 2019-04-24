using CareerGuidanceDAL;
using CareerGuidanceEntity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareerGuidance
{
    public partial class advisors : System.Web.UI.Page
    {
        SkillEntity objskillEntity = new SkillEntity();
        SkillDAL objskillDAL = new SkillDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["usrid"] == null)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('You Have to login before accessing this page');window.location ='login.aspx';", true);

                }
                else
                {
                    string userid = Convert.ToString(Session["usrid"]);
                    string useremail = Convert.ToString(Session["usremail"]);
                    string username = Convert.ToString(Session["usrname"]);


                    DataSet dstype = objskillDAL.getadvicetype();
                    DataSet dslocation = objskillDAL.getlocationlist();

                    ddltype.DataTextField = "Type";
                    ddltype.DataValueField = "id";
                    ddltype.DataSource = dstype;
                    ddltype.DataBind();

                    ddllocation.DataTextField = "Location";
                    ddllocation.DataValueField = "id";
                    ddllocation.DataSource = dslocation;
                    ddllocation.DataBind();

                }

            }
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {

            int typeid = Convert.ToInt32(ddltype.SelectedValue);
            int locationid = Convert.ToInt32(ddllocation.SelectedValue);

            Session["typeid"] = typeid;
            Session["locationid"] = typeid;

           

            DataSet dssearchresult = objskillDAL.advicesearch(typeid, locationid);


            StringBuilder sb = new StringBuilder();

            for (int i = 0; i < dssearchresult.Tables[0].Rows.Count; i++)
            {
                sb.Append(" <div class=\"card\">");
                sb.Append("   <div class=\"header bg-cyan\">");
                sb.Append("       <div class=\"row\">");
                sb.Append("           <div class=\"col-md-2\">");
                sb.Append("           <img src=\""+dssearchresult.Tables[0].Rows[i]["Profilepic"]+"\"  style=\"min-width: 100px; min-height: 100px;max-width: 150px;max-height: 150px;\" />");
                sb.Append("           </div>");
                sb.Append("           <div class=\"col-md-7\">");
                sb.Append("               <h2> " + dssearchresult.Tables[0].Rows[i]["Name"] + " </h2>");
                sb.Append("               <h5>" + dssearchresult.Tables[0].Rows[i]["Emailid"] + "</h5>");
                sb.Append("               <h5>" + dssearchresult.Tables[0].Rows[i]["Phoneno"] + "</h5>");
                sb.Append("               <h5> Experience : " + dssearchresult.Tables[0].Rows[i]["Experience"] + "years</h5>");
                sb.Append("           </div>");
                sb.Append("           <div class=\"col-md-3\">");
                sb.Append("            ");
                sb.Append("             <div>");
                sb.Append("              <div class=\"button-demo js-modal-buttons\">");
                sb.Append("                 <button type=\"button\" data-color=\"light-blue\" class=\"btn bg-light-blue waves-effect\">SEND EMAIL</button>");
                sb.Append("             </div>");
                sb.Append("             <div class=\"modal fade\" id=\"mdModal\" tabindex=\"-1\" role=\"dialog\">");
                sb.Append("                 <div class=\"modal-dialog\" role=\"document\">");
                sb.Append("                     <div class=\"modal-content\">");
                sb.Append("                         <div class=\"modal-header\">");
                sb.Append("                             <h4 class=\"modal-title\" id=\"defaultModalLabel\">Send Mail </h4>");
                sb.Append("                         </div>");
                sb.Append("                         <div class=\"modal-body\">");
                sb.Append("                            <div class=\"form-group\" style=\"margin-bottom:0px;\">");
                sb.Append("                                <div class=\"row\">");
                sb.Append("                                 <div class=\"col-md-1\">");
                sb.Append("                                    ");
                sb.Append("                                 </div>");
                sb.Append("                                 <div class=\"col-md-8\">");
                sb.Append("                                     <div class=\"form-line\">");
                sb.Append("                                         <input id=\"txtsubject\" name=\"subject\" type=\"text\" placeholder=\"Subject \" class=\"form-control\"/>");
                sb.Append("                                     </div>");
                sb.Append("                                 </div>");
                sb.Append("                                </div>");
                sb.Append("                             </div>");
                sb.Append("                             <br />");
                sb.Append("                              <div class=\"form-group\" style=\"margin-bottom:0px;\">                                                ");
                sb.Append("                                 <div class=\"row\">");
                sb.Append("                                 <div class=\"col-md-1\">");
                sb.Append("                                   ");
                sb.Append("                                 </div>");
                sb.Append("                                 <div class=\"col-md-8\">");
                sb.Append("                                     <div class=\"form-line\">");
                sb.Append("                                            <input id=\"txtmessage\" name=\"message\" type=\"text\" placeholder=\"Message\" class=\"form-control\" />");
                sb.Append("                                     </div>");
                sb.Append("                                 </div>");
                sb.Append("                                 </div>");
                sb.Append("                             </div>");
                sb.Append("                                                  ");
                sb.Append("                         </div>");
                sb.Append("                         <div class=\"modal-footer\">");
                sb.Append("                             <button type=\"button\" class=\"btn btn-link waves-effect sendmail \" id=\" " + dssearchresult.Tables[0].Rows[i]["Emailid"]+","+Convert.ToString(Session["usrname"])+","+Convert.ToString(Session["usremail"])+" \">  Send Mail </button>");
                sb.Append("                             <button type=\"button\" class=\"btn btn-link waves-effect\" data-dismiss=\"modal\">CLOSE</button>");
                sb.Append("                         </div>");
                sb.Append("                     </div>");
                sb.Append("                 </div>                                                                                             ");
                sb.Append("           </div>");
                sb.Append("             </div>");
                sb.Append("          ");
                sb.Append("     ");
                sb.Append("           </div>");
                sb.Append("           </div>");
                sb.Append("  </div>");
                sb.Append("   <div class=\"body\">");
                sb.Append("       <p>  " + dssearchresult.Tables[0].Rows[i]["About"] + " </p>");
                sb.Append("   </div>");
                sb.Append("</div>");

            }
            advicelistcard.InnerHtml = sb.ToString();
        }




        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('You have been Logged Out Successfully');window.location ='login.aspx';", true);

        }


        [WebMethod]
        public static string sendmail(string cmsg, string subject, string advisormail, string username, string usermail)
        {
            
            string sub = Convert.ToString(subject);
            string mssgg = Convert.ToString(cmsg);
            string advmail = Convert.ToString(advisormail);
            string usrname = Convert.ToString(username);
            string usremail = Convert.ToString(usermail);


            try
            {
                MailMessage message = new MailMessage();
                SmtpClient smtpClient = new SmtpClient();
                string msg = string.Empty;
                try
                {
                    MailAddress fromAddress = new MailAddress(usremail);
                    message.From = fromAddress;
                    message.To.Add(advmail);
                    
                    message.Subject = usrname + "  Contacted For " + sub;
                    message.IsBodyHtml = true;
                    message.Body = mssgg;
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
                    msg = ex.Message;
                }

                return "Success";
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}