﻿using CareerGuidanceDAL;
using CareerGuidanceEntity;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareerGuidance
{
    public partial class advisoredit : System.Web.UI.Page
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

                    int id = Convert.ToInt32(Session["advisoreditid"]);

                    DataSet dsadvisorallinfo = objadminDAL.getadisorallinfo(id);

                    txtname.Text = Convert.ToString(dsadvisorallinfo.Tables[0].Rows[0]["Name"]);
                    txtEmail.Text = Convert.ToString(dsadvisorallinfo.Tables[0].Rows[0]["Emailid"]);
                    txtPhone.Text = Convert.ToString(dsadvisorallinfo.Tables[0].Rows[0]["Phoneno"]);
                    txtExperience.Text = Convert.ToString(dsadvisorallinfo.Tables[0].Rows[0]["Experience"]);
                    txtabout.Text = Convert.ToString(dsadvisorallinfo.Tables[0].Rows[0]["About"]);
                    profilepic2.ImageUrl = Convert.ToString(dsadvisorallinfo.Tables[0].Rows[0]["Profilepic"]);



                    DataSet dsadvisorinfo = objadminDAL.getadvisorinfo();

                    ddllocation.DataTextField = "Location";
                    ddllocation.DataValueField = "id";
                    ddllocation.DataSource = dsadvisorinfo;
                    ddllocation.DataBind();

                    DataSet dsadvisorinfotwo = objadminDAL.getadvisorinfotwo();

                    ddltype.DataTextField = "Type";
                    ddltype.DataValueField = "id";
                    ddltype.DataSource = dsadvisorinfotwo;
                    ddltype.DataBind();
                }
            }
        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["advisoreditid"]);
            string name = txtname.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            string experience = txtExperience.Text;
            string about = txtabout.Text;
            string profilepic = "";
            int locationid = Convert.ToInt32(ddllocation.SelectedValue);
            int typeid = Convert.ToInt32(ddltype.SelectedValue);
            string location = Convert.ToString(ddltype.SelectedItem);

            if (FUprofilepic.PostedFile.ContentLength > 5242880)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Profile Pic Size should be less than 5MB');", true);
            }
            else
            {
                if (FUprofilepic.HasFile)
                {
                    string path = Server.MapPath("~/AdminPic/" + email + "");
                    try
                    {
                        if (Directory.Exists(path))
                        {

                        }
                        else
                        {
                            DirectoryInfo di = Directory.CreateDirectory(path);
                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("The process failed: {0}", e.ToString());
                    }
                    profilepic = FUprofilepic.FileName.ToString();
                    FUprofilepic.PostedFile.SaveAs(Server.MapPath("~/AdminPic/" + email + "/") + profilepic);
                    profilepic = ("ProfilePic/" + email + "/") + profilepic + "";
                }
                else
                {
                    profilepic = profilepic2.ImageUrl.ToString();
                }
            }

            DataSet dsaddadvisor = objadminDAL.updateadvisor(id, name, email, phone, experience, about, profilepic, locationid, typeid, location);


            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Advisor Updated Successfully');window.location ='adminadvisors.aspx';", true);

        }
    }
}