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
    public partial class AptitudeTest : System.Web.UI.Page
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

                    string skillid = Convert.ToString(Session["selectedskillfortest"]);

                    //Get Questions for Apti
                    DataSet dsquestions = objskillDAL.getaptiquestions(skillid);

                    quesone.Text = Convert.ToString(dsquestions.Tables[0].Rows[0]["Question"]);
                    QSONE.Items.FindByText("quesoptone").Value = Convert.ToString(dsquestions.Tables[0].Rows[0]["OptOne"]);
                    QSONE.Items.FindByText("quesoptone").Text = Convert.ToString(dsquestions.Tables[0].Rows[0]["OptOne"]);
                    QSONE.Items.FindByText("quesopttwo").Value = Convert.ToString(dsquestions.Tables[0].Rows[0]["OptTwo"]);
                    QSONE.Items.FindByText("quesopttwo").Text = Convert.ToString(dsquestions.Tables[0].Rows[0]["OptTwo"]);
                    QSONE.Items.FindByText("quesoptthree").Value = Convert.ToString(dsquestions.Tables[0].Rows[0]["OptThree"]);
                    QSONE.Items.FindByText("quesoptthree").Text = Convert.ToString(dsquestions.Tables[0].Rows[0]["OptThree"]);
                    QSONE.Items.FindByText("quesoptfour").Value = Convert.ToString(dsquestions.Tables[0].Rows[0]["OptFour"]);
                    QSONE.Items.FindByText("quesoptfour").Text = Convert.ToString(dsquestions.Tables[0].Rows[0]["OptFour"]);

                    questwo.Text = Convert.ToString(dsquestions.Tables[0].Rows[1]["Question"]);
                    QSTWO.Items.FindByText("questwoone").Value = Convert.ToString(dsquestions.Tables[0].Rows[1]["OptOne"]);
                    QSTWO.Items.FindByText("questwoone").Text = Convert.ToString(dsquestions.Tables[0].Rows[1]["OptOne"]);
                    QSTWO.Items.FindByText("questwotwo").Value = Convert.ToString(dsquestions.Tables[0].Rows[1]["OptTwo"]);
                    QSTWO.Items.FindByText("questwotwo").Text = Convert.ToString(dsquestions.Tables[0].Rows[1]["OptTwo"]);
                    QSTWO.Items.FindByText("questwothree").Value = Convert.ToString(dsquestions.Tables[0].Rows[1]["OptThree"]);
                    QSTWO.Items.FindByText("questwothree").Text = Convert.ToString(dsquestions.Tables[0].Rows[1]["OptThree"]);
                    QSTWO.Items.FindByText("questwofour").Value = Convert.ToString(dsquestions.Tables[0].Rows[1]["OptFour"]);
                    QSTWO.Items.FindByText("questwofour").Text = Convert.ToString(dsquestions.Tables[0].Rows[1]["OptFour"]);

                    questhree.Text = Convert.ToString(dsquestions.Tables[0].Rows[2]["Question"]);
                    QSTHREE.Items.FindByText("questhreeone").Value = Convert.ToString(dsquestions.Tables[0].Rows[2]["OptOne"]);
                    QSTHREE.Items.FindByText("questhreeone").Text = Convert.ToString(dsquestions.Tables[0].Rows[2]["OptOne"]);
                    QSTHREE.Items.FindByText("questhreetwo").Value = Convert.ToString(dsquestions.Tables[0].Rows[2]["OptTwo"]);
                    QSTHREE.Items.FindByText("questhreetwo").Text = Convert.ToString(dsquestions.Tables[0].Rows[2]["OptTwo"]);
                    QSTHREE.Items.FindByText("questhreethree").Value = Convert.ToString(dsquestions.Tables[0].Rows[2]["OptThree"]);
                    QSTHREE.Items.FindByText("questhreethree").Text = Convert.ToString(dsquestions.Tables[0].Rows[2]["OptThree"]);
                    QSTHREE.Items.FindByText("questhreefour").Value = Convert.ToString(dsquestions.Tables[0].Rows[2]["OptFour"]);
                    QSTHREE.Items.FindByText("questhreefour").Text = Convert.ToString(dsquestions.Tables[0].Rows[2]["OptFour"]);

                    quesfour.Text = Convert.ToString(dsquestions.Tables[0].Rows[3]["Question"]);
                    QSFOUR.Items.FindByText("quesfourone").Value = Convert.ToString(dsquestions.Tables[0].Rows[3]["OptOne"]);
                    QSFOUR.Items.FindByText("quesfourone").Text = Convert.ToString(dsquestions.Tables[0].Rows[3]["OptOne"]);
                    QSFOUR.Items.FindByText("quesfourtwo").Value = Convert.ToString(dsquestions.Tables[0].Rows[3]["OptTwo"]);
                    QSFOUR.Items.FindByText("quesfourtwo").Text = Convert.ToString(dsquestions.Tables[0].Rows[3]["OptTwo"]);
                    QSFOUR.Items.FindByText("quesfourthree").Value = Convert.ToString(dsquestions.Tables[0].Rows[3]["OptThree"]);
                    QSFOUR.Items.FindByText("quesfourthree").Text = Convert.ToString(dsquestions.Tables[0].Rows[3]["OptThree"]);
                    QSFOUR.Items.FindByText("quesfourfour").Value = Convert.ToString(dsquestions.Tables[0].Rows[3]["OptFour"]);
                    QSFOUR.Items.FindByText("quesfourfour").Text = Convert.ToString(dsquestions.Tables[0].Rows[3]["OptFour"]);

                    quesfive.Text = Convert.ToString(dsquestions.Tables[0].Rows[4]["Question"]);
                    QSFIVE.Items.FindByText("quesfiveone").Value = Convert.ToString(dsquestions.Tables[0].Rows[4]["OptOne"]);
                    QSFIVE.Items.FindByText("quesfiveone").Text = Convert.ToString(dsquestions.Tables[0].Rows[4]["OptOne"]);
                    QSFIVE.Items.FindByText("quesfivetwo").Value = Convert.ToString(dsquestions.Tables[0].Rows[4]["OptTwo"]);
                    QSFIVE.Items.FindByText("quesfivetwo").Text = Convert.ToString(dsquestions.Tables[0].Rows[4]["OptTwo"]);
                    QSFIVE.Items.FindByText("quesfivethree").Value = Convert.ToString(dsquestions.Tables[0].Rows[4]["OptThree"]);
                    QSFIVE.Items.FindByText("quesfivethree").Text = Convert.ToString(dsquestions.Tables[0].Rows[4]["OptThree"]);
                    QSFIVE.Items.FindByText("quesfivefour").Value = Convert.ToString(dsquestions.Tables[0].Rows[4]["OptFour"]);
                    QSFIVE.Items.FindByText("quesfivefour").Text = Convert.ToString(dsquestions.Tables[0].Rows[4]["OptFour"]);

                    quessix.Text = Convert.ToString(dsquestions.Tables[0].Rows[5]["Question"]);
                    QSSIX.Items.FindByText("quessixone").Value = Convert.ToString(dsquestions.Tables[0].Rows[5]["OptOne"]);
                    QSSIX.Items.FindByText("quessixone").Text = Convert.ToString(dsquestions.Tables[0].Rows[5]["OptOne"]);
                    QSSIX.Items.FindByText("quessixtwo").Value = Convert.ToString(dsquestions.Tables[0].Rows[5]["OptTwo"]);
                    QSSIX.Items.FindByText("quessixtwo").Text = Convert.ToString(dsquestions.Tables[0].Rows[5]["OptTwo"]);
                    QSSIX.Items.FindByText("quessixthree").Value = Convert.ToString(dsquestions.Tables[0].Rows[5]["OptThree"]);
                    QSSIX.Items.FindByText("quessixthree").Text = Convert.ToString(dsquestions.Tables[0].Rows[5]["OptThree"]);
                    QSSIX.Items.FindByText("quessixfour").Value = Convert.ToString(dsquestions.Tables[0].Rows[5]["OptFour"]);
                    QSSIX.Items.FindByText("quessixfour").Text = Convert.ToString(dsquestions.Tables[0].Rows[5]["OptFour"]);

                    quesseven.Text = Convert.ToString(dsquestions.Tables[0].Rows[6]["Question"]);
                    QSSEVEN.Items.FindByText("quessevenone").Value = Convert.ToString(dsquestions.Tables[0].Rows[6]["OptOne"]);
                    QSSEVEN.Items.FindByText("quessevenone").Text = Convert.ToString(dsquestions.Tables[0].Rows[6]["OptOne"]);
                    QSSEVEN.Items.FindByText("quesseventwo").Value = Convert.ToString(dsquestions.Tables[0].Rows[6]["OptTwo"]);
                    QSSEVEN.Items.FindByText("quesseventwo").Text = Convert.ToString(dsquestions.Tables[0].Rows[6]["OptTwo"]);
                    QSSEVEN.Items.FindByText("quesseventhree").Value = Convert.ToString(dsquestions.Tables[0].Rows[6]["OptThree"]);
                    QSSEVEN.Items.FindByText("quesseventhree").Text = Convert.ToString(dsquestions.Tables[0].Rows[6]["OptThree"]);
                    QSSEVEN.Items.FindByText("quessevenfour").Value = Convert.ToString(dsquestions.Tables[0].Rows[6]["OptFour"]);
                    QSSEVEN.Items.FindByText("quessevenfour").Text = Convert.ToString(dsquestions.Tables[0].Rows[6]["OptFour"]);

                    queseight.Text = Convert.ToString(dsquestions.Tables[0].Rows[7]["Question"]);
                    QSEIGHT.Items.FindByText("queseightone").Value = Convert.ToString(dsquestions.Tables[0].Rows[7]["OptOne"]);
                    QSEIGHT.Items.FindByText("queseightone").Text = Convert.ToString(dsquestions.Tables[0].Rows[7]["OptOne"]);
                    QSEIGHT.Items.FindByText("queseighttwo").Value = Convert.ToString(dsquestions.Tables[0].Rows[7]["OptTwo"]);
                    QSEIGHT.Items.FindByText("queseighttwo").Text = Convert.ToString(dsquestions.Tables[0].Rows[7]["OptTwo"]);
                    QSEIGHT.Items.FindByText("queseightthree").Value = Convert.ToString(dsquestions.Tables[0].Rows[7]["OptThree"]);
                    QSEIGHT.Items.FindByText("queseightthree").Text = Convert.ToString(dsquestions.Tables[0].Rows[7]["OptThree"]);
                    QSEIGHT.Items.FindByText("queseightfour").Value = Convert.ToString(dsquestions.Tables[0].Rows[7]["OptFour"]);
                    QSEIGHT.Items.FindByText("queseightfour").Text = Convert.ToString(dsquestions.Tables[0].Rows[7]["OptFour"]);

                    quesnine.Text = Convert.ToString(dsquestions.Tables[0].Rows[8]["Question"]);
                    QSNINE.Items.FindByText("quesnineone").Value = Convert.ToString(dsquestions.Tables[0].Rows[8]["OptOne"]);
                    QSNINE.Items.FindByText("quesnineone").Text = Convert.ToString(dsquestions.Tables[0].Rows[8]["OptOne"]);
                    QSNINE.Items.FindByText("quesninetwo").Value = Convert.ToString(dsquestions.Tables[0].Rows[8]["OptTwo"]);
                    QSNINE.Items.FindByText("quesninetwo").Text = Convert.ToString(dsquestions.Tables[0].Rows[8]["OptTwo"]);
                    QSNINE.Items.FindByText("quesninethree").Value = Convert.ToString(dsquestions.Tables[0].Rows[8]["OptThree"]);
                    QSNINE.Items.FindByText("quesninethree").Text = Convert.ToString(dsquestions.Tables[0].Rows[8]["OptThree"]);
                    QSNINE.Items.FindByText("quesninefour").Value = Convert.ToString(dsquestions.Tables[0].Rows[8]["OptFour"]);
                    QSNINE.Items.FindByText("quesninefour").Text = Convert.ToString(dsquestions.Tables[0].Rows[8]["OptFour"]);

                    questen.Text = Convert.ToString(dsquestions.Tables[0].Rows[9]["Question"]);
                    QSTEN.Items.FindByText("questenone").Value = Convert.ToString(dsquestions.Tables[0].Rows[9]["OptOne"]);
                    QSTEN.Items.FindByText("questenone").Text = Convert.ToString(dsquestions.Tables[0].Rows[9]["OptOne"]);
                    QSTEN.Items.FindByText("questentwo").Value = Convert.ToString(dsquestions.Tables[0].Rows[9]["OptTwo"]);
                    QSTEN.Items.FindByText("questentwo").Text = Convert.ToString(dsquestions.Tables[0].Rows[9]["OptTwo"]);
                    QSTEN.Items.FindByText("questenthree").Value = Convert.ToString(dsquestions.Tables[0].Rows[9]["OptThree"]);
                    QSTEN.Items.FindByText("questenthree").Text = Convert.ToString(dsquestions.Tables[0].Rows[9]["OptThree"]);
                    QSTEN.Items.FindByText("questenfour").Value = Convert.ToString(dsquestions.Tables[0].Rows[9]["OptFour"]);
                    QSTEN.Items.FindByText("questenfour").Text = Convert.ToString(dsquestions.Tables[0].Rows[9]["OptFour"]);


                    Session["crt1"] = Convert.ToString(dsquestions.Tables[0].Rows[0]["CrtAnswer"]);
                    Session["crt2"] = Convert.ToString(dsquestions.Tables[0].Rows[1]["CrtAnswer"]);
                    Session["crt3"] = Convert.ToString(dsquestions.Tables[0].Rows[2]["CrtAnswer"]);
                    Session["crt4"] = Convert.ToString(dsquestions.Tables[0].Rows[3]["CrtAnswer"]);
                    Session["crt5"] = Convert.ToString(dsquestions.Tables[0].Rows[4]["CrtAnswer"]);
                    Session["crt6"] = Convert.ToString(dsquestions.Tables[0].Rows[5]["CrtAnswer"]);
                    Session["crt7"] = Convert.ToString(dsquestions.Tables[0].Rows[6]["CrtAnswer"]);
                    Session["crt8"] = Convert.ToString(dsquestions.Tables[0].Rows[7]["CrtAnswer"]);
                    Session["crt9"] = Convert.ToString(dsquestions.Tables[0].Rows[8]["CrtAnswer"]);
                    Session["crt10"] = Convert.ToString(dsquestions.Tables[0].Rows[9]["CrtAnswer"]);

                    Session["ques1"]  = Convert.ToString(dsquestions.Tables[0].Rows[0]["id"]);
                    Session["ques2"]  = Convert.ToString(dsquestions.Tables[0].Rows[1]["id"]);
                    Session["ques3"]  = Convert.ToString(dsquestions.Tables[0].Rows[2]["id"]);
                    Session["ques4"]  = Convert.ToString(dsquestions.Tables[0].Rows[3]["id"]);
                    Session["ques5"]  = Convert.ToString(dsquestions.Tables[0].Rows[4]["id"]);
                    Session["ques6"]  = Convert.ToString(dsquestions.Tables[0].Rows[5]["id"]);
                    Session["ques7"]  = Convert.ToString(dsquestions.Tables[0].Rows[6]["id"]);
                    Session["ques8"]  = Convert.ToString(dsquestions.Tables[0].Rows[7]["id"]);
                    Session["ques9"]  = Convert.ToString(dsquestions.Tables[0].Rows[8]["id"]);
                    Session["ques10"] = Convert.ToString(dsquestions.Tables[0].Rows[9]["id"]);
                }

            }

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            int counter = 0;
            int i;

            string userid = Convert.ToString(Session["usrid"]);
            string skillname = Convert.ToString(Session["selectedskillname"]);
            string skillid = Convert.ToString(Session["selectedskillfortest"]);

            string[] ques = new string[10];
            ques[0] = Convert.ToString(Session["ques1"]);
            ques[1] = Convert.ToString(Session["ques2"]);
            ques[2] = Convert.ToString(Session["ques3"]);
            ques[3] = Convert.ToString(Session["ques4"]);
            ques[4] = Convert.ToString(Session["ques5"]);
            ques[5] = Convert.ToString(Session["ques6"]);
            ques[6] = Convert.ToString(Session["ques7"]);
            ques[7] = Convert.ToString(Session["ques8"]);
            ques[8] = Convert.ToString(Session["ques9"]);
            ques[9] = Convert.ToString(Session["ques10"]);

            string[] ans = new string[10];
            ans[0] = QSONE.SelectedValue;
            ans[1] = QSTWO.SelectedValue;
            ans[2] = QSTHREE.SelectedValue;
            ans[3] = QSFOUR.SelectedValue;
            ans[4] = QSFIVE.SelectedValue;
            ans[5] = QSSIX.SelectedValue;
            ans[6] = QSSEVEN.SelectedValue;
            ans[7] = QSEIGHT.SelectedValue;
            ans[8] = QSNINE.SelectedValue;
            ans[9] = QSTEN.SelectedValue;

            for (i = 0; i < 10; i++)
            {
                if(ans[i] == "")
                {
                    ans[i] = "Not Answered";
                }
            }

            string[] crt = new string[10];
            crt[0] = Convert.ToString(Session["crt1"]);
            crt[1] = Convert.ToString(Session["crt2"]);
            crt[2] = Convert.ToString(Session["crt3"]);
            crt[3] = Convert.ToString(Session["crt4"]);
            crt[4] = Convert.ToString(Session["crt5"]);
            crt[5] = Convert.ToString(Session["crt6"]);
            crt[6] = Convert.ToString(Session["crt7"]);
            crt[7] = Convert.ToString(Session["crt8"]);
            crt[8] = Convert.ToString(Session["crt9"]);
            crt[9] = Convert.ToString(Session["crt10"]);


            //Calculate score
            for (i = 0; i < 10; i++)
            {
                if ( ans[i] == crt[i])
                {
                    counter++;
                }
                else
                {
                    
                }
            }

            string xyz = DateTime.Now.ToString("HH:mm:ss");

            //Add apti result in Databse
            for (i = 0; i < 10; i++)
            {
                DataSet dsaddaptiresult = objskillDAL.addaptiresult(userid, ques[i], ans[i], xyz);
            }

            DataSet dsaptiscorecard = objskillDAL.aptiscorecard(userid, skillid, skillname, counter, xyz );

            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Aptitude Submitted Successfully');window.location ='aptitude.aspx';", true);


        }
    }
}