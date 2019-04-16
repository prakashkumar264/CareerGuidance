using CareerGuidanceDAL;
using CareerGuidanceEntity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareerGuidance
{
    public partial class aptitudeview : System.Web.UI.Page
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
                    string aptilistid = Convert.ToString(Session["aptilistid"]);

                    DataSet dsaptilist = objskillDAL.getaptianswers(aptilistid);

                    skilhead.Text = Convert.ToString(dsaptilist.Tables[0].Rows[0]["SkillName"]);
                    counter.Text = Convert.ToString(dsaptilist.Tables[0].Rows[0]["Counter"]);
                    dattime.Text = Convert.ToString(dsaptilist.Tables[0].Rows[0]["DateTaken"]);

                    Q1.Text =     Convert.ToString(dsaptilist.Tables[0].Rows[0]["Question"]);
                    Q1a.Text =    Convert.ToString(dsaptilist.Tables[0].Rows[0]["OptOne"]);
                    Q1b.Text =    Convert.ToString(dsaptilist.Tables[0].Rows[0]["OptTwo"]);
                    Q1c.Text =    Convert.ToString(dsaptilist.Tables[0].Rows[0]["OptThree"]);
                    Q1d.Text =    Convert.ToString(dsaptilist.Tables[0].Rows[0]["OptFour"]);
                    Q1ans.Text =  Convert.ToString(dsaptilist.Tables[0].Rows[0]["selectanswer"]);
                    Q1crt.Text =  Convert.ToString(dsaptilist.Tables[0].Rows[0]["CrtAnswer"]);

                    Q2.Text = Convert.ToString(dsaptilist.Tables[0].Rows[1]["Question"]);
                    Q2a.Text = Convert.ToString(dsaptilist.Tables[0].Rows[1]["OptOne"]);
                    Q2b.Text = Convert.ToString(dsaptilist.Tables[0].Rows[1]["OptTwo"]);
                    Q2c.Text = Convert.ToString(dsaptilist.Tables[0].Rows[1]["OptThree"]);
                    Q2d.Text = Convert.ToString(dsaptilist.Tables[0].Rows[1]["OptFour"]);
                    Q2ans.Text = Convert.ToString(dsaptilist.Tables[0].Rows[1]["selectanswer"]);
                    Q2crt.Text = Convert.ToString(dsaptilist.Tables[0].Rows[1]["CrtAnswer"]);

                    Q3.Text = Convert.ToString(dsaptilist.Tables[0].Rows[2]["Question"]);
                    Q3a.Text = Convert.ToString(dsaptilist.Tables[0].Rows[2]["OptOne"]);
                    Q3b.Text = Convert.ToString(dsaptilist.Tables[0].Rows[2]["OptTwo"]);
                    Q3c.Text = Convert.ToString(dsaptilist.Tables[0].Rows[2]["OptThree"]);
                    Q3d.Text = Convert.ToString(dsaptilist.Tables[0].Rows[2]["OptFour"]);
                    Q3ans.Text = Convert.ToString(dsaptilist.Tables[0].Rows[2]["selectanswer"]);
                    Q3crt.Text = Convert.ToString(dsaptilist.Tables[0].Rows[2]["CrtAnswer"]);

                    Q4.Text = Convert.ToString(dsaptilist.Tables[0].Rows[3]["Question"]);
                    Q4a.Text = Convert.ToString(dsaptilist.Tables[0].Rows[3]["OptOne"]);
                    Q4b.Text = Convert.ToString(dsaptilist.Tables[0].Rows[3]["OptTwo"]);
                    Q4c.Text = Convert.ToString(dsaptilist.Tables[0].Rows[3]["OptThree"]);
                    Q4d.Text = Convert.ToString(dsaptilist.Tables[0].Rows[3]["OptFour"]);
                    Q4ans.Text = Convert.ToString(dsaptilist.Tables[0].Rows[3]["selectanswer"]);
                    Q4crt.Text = Convert.ToString(dsaptilist.Tables[0].Rows[3]["CrtAnswer"]);

                    Q5.Text = Convert.ToString(dsaptilist.Tables[0].Rows[4]["Question"]);
                    Q5a.Text = Convert.ToString(dsaptilist.Tables[0].Rows[4]["OptOne"]);
                    Q5b.Text = Convert.ToString(dsaptilist.Tables[0].Rows[4]["OptTwo"]);
                    Q5c.Text = Convert.ToString(dsaptilist.Tables[0].Rows[4]["OptThree"]);
                    Q5d.Text = Convert.ToString(dsaptilist.Tables[0].Rows[4]["OptFour"]);
                    Q5ans.Text = Convert.ToString(dsaptilist.Tables[0].Rows[4]["selectanswer"]);
                    Q5crt.Text = Convert.ToString(dsaptilist.Tables[0].Rows[4]["CrtAnswer"]);

                    Q6.Text = Convert.ToString(dsaptilist.Tables[0].Rows[5]["Question"]);
                    Q6a.Text = Convert.ToString(dsaptilist.Tables[0].Rows[5]["OptOne"]);
                    Q6b.Text = Convert.ToString(dsaptilist.Tables[0].Rows[5]["OptTwo"]);
                    Q6c.Text = Convert.ToString(dsaptilist.Tables[0].Rows[5]["OptThree"]);
                    Q6d.Text = Convert.ToString(dsaptilist.Tables[0].Rows[5]["OptFour"]);
                    Q6ans.Text = Convert.ToString(dsaptilist.Tables[0].Rows[5]["selectanswer"]);
                    Q6crt.Text = Convert.ToString(dsaptilist.Tables[0].Rows[5]["CrtAnswer"]);

                    Q7.Text = Convert.ToString(dsaptilist.Tables[0].Rows[6]["Question"]);
                    Q7a.Text = Convert.ToString(dsaptilist.Tables[0].Rows[6]["OptOne"]);
                    Q7b.Text = Convert.ToString(dsaptilist.Tables[0].Rows[6]["OptTwo"]);
                    Q7c.Text = Convert.ToString(dsaptilist.Tables[0].Rows[6]["OptThree"]);
                    Q7d.Text = Convert.ToString(dsaptilist.Tables[0].Rows[6]["OptFour"]);
                    Q7ans.Text = Convert.ToString(dsaptilist.Tables[0].Rows[6]["selectanswer"]);
                    Q7crt.Text = Convert.ToString(dsaptilist.Tables[0].Rows[6]["CrtAnswer"]);

                    Q8.Text = Convert.ToString(dsaptilist.Tables[0].Rows[7]["Question"]);
                    Q8a.Text = Convert.ToString(dsaptilist.Tables[0].Rows[7]["OptOne"]);
                    Q8b.Text = Convert.ToString(dsaptilist.Tables[0].Rows[7]["OptTwo"]);
                    Q8c.Text = Convert.ToString(dsaptilist.Tables[0].Rows[7]["OptThree"]);
                    Q8d.Text = Convert.ToString(dsaptilist.Tables[0].Rows[7]["OptFour"]);
                    Q8ans.Text = Convert.ToString(dsaptilist.Tables[0].Rows[7]["selectanswer"]);
                    Q8crt.Text = Convert.ToString(dsaptilist.Tables[0].Rows[7]["CrtAnswer"]);

                    Q9.Text = Convert.ToString(dsaptilist.Tables[0].Rows[8]["Question"]);
                    Q9a.Text = Convert.ToString(dsaptilist.Tables[0].Rows[8]["OptOne"]);
                    Q9b.Text = Convert.ToString(dsaptilist.Tables[0].Rows[8]["OptTwo"]);
                    Q9c.Text = Convert.ToString(dsaptilist.Tables[0].Rows[8]["OptThree"]);
                    Q9d.Text = Convert.ToString(dsaptilist.Tables[0].Rows[8]["OptFour"]);
                    Q9ans.Text = Convert.ToString(dsaptilist.Tables[0].Rows[8]["selectanswer"]);
                    Q9crt.Text = Convert.ToString(dsaptilist.Tables[0].Rows[8]["CrtAnswer"]);

                    Q10.Text = Convert.ToString(dsaptilist.Tables[0].Rows[9]["Question"]);
                    Q10a.Text = Convert.ToString(dsaptilist.Tables[0].Rows[9]["OptOne"]);
                    Q10b.Text = Convert.ToString(dsaptilist.Tables[0].Rows[9]["OptTwo"]);
                    Q10c.Text = Convert.ToString(dsaptilist.Tables[0].Rows[9]["OptThree"]);
                    Q10d.Text = Convert.ToString(dsaptilist.Tables[0].Rows[9]["OptFour"]);
                    Q10ans.Text = Convert.ToString(dsaptilist.Tables[0].Rows[9]["selectanswer"]);
                    Q10crt.Text = Convert.ToString(dsaptilist.Tables[0].Rows[9]["CrtAnswer"]);



                    if(Q1ans.Text == Q1crt.Text)
                    {
                        Q1ans.ForeColor = System.Drawing.ColorTranslator.FromHtml("#14e614");
                    }
                    else if(Q1ans.Text == "Not Answered")
                    {
                        Q1ans.ForeColor = System.Drawing.Color.Blue;
                    }
                    else
                    {
                        Q1ans.ForeColor = System.Drawing.Color.Red;
                    }
                    if (Q2ans.Text == Q2crt.Text)
                    {
                        Q2ans.ForeColor = System.Drawing.ColorTranslator.FromHtml("#14e614");
                    }
                    else if (Q2ans.Text == "Not Answered")
                    {
                        Q2ans.ForeColor = System.Drawing.Color.Blue;
                    }
                    else
                    {
                        Q2ans.ForeColor = System.Drawing.Color.Red;
                    }
                    if (Q3ans.Text == Q3crt.Text)
                    {
                        Q3ans.ForeColor = System.Drawing.ColorTranslator.FromHtml("#14e614");
                    }
                    else if (Q3ans.Text == "Not Answered")
                    {
                        Q3ans.ForeColor = System.Drawing.Color.Blue;
                    }
                    else
                    {
                        Q3ans.ForeColor = System.Drawing.Color.Red;
                    }
                    if (Q4ans.Text == Q4crt.Text)
                    {
                        Q4ans.ForeColor = System.Drawing.ColorTranslator.FromHtml("#14e614");
                    }
                    else if (Q4ans.Text == "Not Answered")
                    {
                        Q4ans.ForeColor = System.Drawing.Color.Blue;
                    }
                    else
                    {
                        Q4ans.ForeColor = System.Drawing.Color.Red;
                    }
                    if (Q5ans.Text == Q5crt.Text)
                    {
                        Q5ans.ForeColor = System.Drawing.ColorTranslator.FromHtml("#14e614");
                    }
                    else if (Q5ans.Text == "Not Answered")
                    {
                        Q5ans.ForeColor = System.Drawing.Color.Blue;
                    }
                    else
                    {
                        Q5ans.ForeColor = System.Drawing.Color.Red;
                    }
                    if (Q6ans.Text == Q6crt.Text)
                    {
                        Q6ans.ForeColor = System.Drawing.ColorTranslator.FromHtml("#14e614");
                    }
                    else if (Q6ans.Text == "Not Answered")
                    {
                        Q6ans.ForeColor = System.Drawing.Color.Blue;
                    }
                    else
                    {
                        Q6ans.ForeColor = System.Drawing.Color.Red;
                    }
                    if (Q7ans.Text == Q7crt.Text)
                    {
                        Q7ans.ForeColor = System.Drawing.ColorTranslator.FromHtml("#14e614");
                    }
                    else if (Q7ans.Text == "Not Answered")
                    {
                        Q7ans.ForeColor = System.Drawing.Color.Blue;
                    }
                    else
                    {
                        Q7ans.ForeColor = System.Drawing.Color.Red;
                    }
                    if (Q8ans.Text == Q8crt.Text)
                    {
                        Q8ans.ForeColor = System.Drawing.ColorTranslator.FromHtml("#14e614");
                    }
                    else if (Q8ans.Text == "Not Answered")
                    {
                        Q8ans.ForeColor = System.Drawing.Color.Blue;
                    }
                    else
                    {
                        Q8ans.ForeColor = System.Drawing.Color.Red;
                    }
                    if (Q9ans.Text == Q9crt.Text)
                    {
                        Q9ans.ForeColor = System.Drawing.ColorTranslator.FromHtml("#14e614");
                    }
                    else if (Q9ans.Text == "Not Answered")
                    {
                        Q9ans.ForeColor = System.Drawing.Color.Blue;
                    }
                    else
                    {
                        Q9ans.ForeColor = System.Drawing.Color.Red;
                    }
                    if (Q10ans.Text == Q10crt.Text)
                    {
                        Q10ans.ForeColor = System.Drawing.ColorTranslator.FromHtml("#14e614");
                    }
                    else if (Q10ans.Text == "Not Answered")
                    {
                        Q10ans.ForeColor = System.Drawing.Color.Blue;
                    }
                    else
                    {
                        Q10ans.ForeColor = System.Drawing.Color.Red;
                    }




                }
            }
        }
    }
}