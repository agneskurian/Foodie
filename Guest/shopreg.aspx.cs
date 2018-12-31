using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class Guest_shopreg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spshoplogin", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag",0);
        cmd.Parameters.Add("@shopid", txtshopid.Text);
        cmd.Parameters.Add("@password", txtpass.Text);
        cmd.Parameters.Add("@usertype", "Shop");
        cmd.ExecuteNonQuery();

       
        SqlCommand cmd1 = new SqlCommand("spshopregister", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag",0);
        cmd1.Parameters.Add("@shopid", txtshopid.Text);
        //cmd1.Parameters.Add("@shopname", txtsname.Text);
        //cmd1.Parameters.Add("@city", txtcity.Text);
        cmd1.Parameters.Add("@email", txtemail.Text);
        cmd1.Parameters.Add("@password", txtpass.Text);

        cmd1.ExecuteNonQuery();
        Response.Redirect("shoplogin.aspx");
        //    DataTable dt = new DataTable();
        //    SqlDataAdapter adt = new SqlDataAdapter(cmd1);
        //    adt.Fill(dt);
        //    if (dt.Rows.Count > 0)
        //    {
        //        Session["username"] = txtuname.Text;
        //        if (dt.Rows[0][3].ToString().CompareTo("") == 0)
        //        {
        //            Response.Redirect("../Admin/AdminDefault.aspx");
        //        }
        //        else
        //        {
        //            Response.Redirect("~/Restaurant/addprofile.aspx");
        //        }


        //}

    }
}