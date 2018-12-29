﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_approveshop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spaddprofiles", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag","2");
        cmd.Parameters.Add("@shopid",Session["shopid"].ToString());
        cmd.Parameters.Add("@Status", "Approved");

        //cmd.Parameters.Add("@shopid", Request.QueryString["Approved"].ToString());
        cmd.ExecuteNonQuery();

    }
}