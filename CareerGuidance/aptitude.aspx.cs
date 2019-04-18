using CareerGuidanceDAL;
using CareerGuidanceEntity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareerGuidance
{
    public partial class aptitude : System.Web.UI.Page
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
                    var id = Convert.ToInt32(Request.QueryString["id"]);
                    

                    if (id > 0)
                    {
                        Session["aptilistid"] = id;
                        Response.Redirect("aptitudeview.aspx");

                    }
                  
                    string userid = Convert.ToString(Session["usrid"]);

                    DataSet dsskilllist = objskillDAL.getskilllist();

                    ddlskill.DataTextField = "SkillName";
                    ddlskill.DataValueField = "id";
                    ddlskill.DataSource = dsskilllist;
                    ddlskill.DataBind();

                    DataSet ds = objskillDAL.getuserskilllist(userid);

                    ddluserspecificskill.DataTextField = "SkillName";
                    ddluserspecificskill.DataValueField = "Skillid";
                    ddluserspecificskill.DataSource = ds;
                    ddluserspecificskill.DataBind();


                    DataSet dsaptilist = objskillDAL.getuseraptilist(userid);

                    if(dsaptilist.Tables[0].Rows.Count == 0)
                    {
                        StringBuilder sb = new StringBuilder();

                        sb.Append("<tr>");
                        sb.Append("    <th scope=\"row\">1</th>");
                        sb.Append("    <td><b> Python </b></td>");
                        sb.Append("    <td>25th October, 10:20pm</td>");
                        sb.Append("    <td> <b> 6 | 10</b></td>");
                        sb.Append("    <td> <a href=\"#\"   > View </a> ");
                        sb.Append("</td>");
                        sb.Append("</tr>");

                        aptilist.InnerHtml = sb.ToString();
                    }
                    else
                    {
                        StringBuilder sb = new StringBuilder();

                        for (int i = 0; i < dsaptilist.Tables[0].Rows.Count; i++)
                        {
                            sb.Append("<tr>");
                            sb.Append("    <th scope=\"row\">1</th>");
                            sb.Append("    <td><b>" + dsaptilist.Tables[0].Rows[i]["skillname"] + "</b></td>");
                            sb.Append("    <td>" + dsaptilist.Tables[0].Rows[i]["Datetaken"] + "</td>");
                            sb.Append("    <td> <b> " + dsaptilist.Tables[0].Rows[i]["counter"] + " / 10</b></td>");
                            sb.Append("    <td> <a href=\"aptitude.aspx?id=" + dsaptilist.Tables[0].Rows[i]["id"] + "\"   >View</a> ");
                            sb.Append("</td>");
                            sb.Append("</tr>");
                        }

                        aptilist.InnerHtml = sb.ToString();
                    }

                    
                    


                }

            }
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string userid = Convert.ToString(Session["usrid"]);
            string skillid = ddlskill.SelectedValue;
            string skillname = Convert.ToString(ddlskill.SelectedItem);

            Session["selectedskillfortest"] = skillid;
            Session["selectedskillname"] = skillname;
            Response.Redirect("AptitudeTest.aspx");
        }

        protected void btn_subtwo_Click(object sender, EventArgs e)
        {
            string userid = Convert.ToString(Session["usrid"]);
            string skillid = ddluserspecificskill.SelectedValue;
            string skillname = Convert.ToString(ddluserspecificskill.SelectedItem);

            Session["selectedskillfortest"] = skillid;
            Session["selectedskillname"] = skillname;
            Response.Redirect("AptitudeTest.aspx");


        }


    }
}