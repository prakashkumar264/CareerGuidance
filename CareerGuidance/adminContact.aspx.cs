﻿using CareerGuidanceDAL;
using CareerGuidanceEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CareerGuidance
{
    public partial class adminContact : System.Web.UI.Page
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

                }
            }
        }
    }
}