using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Guest_shoplogin : System.Web.UI.Page
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
        cmd.Parameters.Add("@flag",1);
        cmd.Parameters.Add("@shopid", txtshopid.Text);
        cmd.Parameters.Add("@password", txtpass.Text);

        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        adt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["shopid"] = txtshopid.Text;
            if (dt.Rows[0][3].ToString().CompareTo("Shop")== 0)
            {
                Response.Redirect("~/Restaurant/RestaurantDefault.aspx");
            }
            else
            {
                Response.Redirect("~/Restaurant/addprofile.aspx");
            }
        }

    }        
    

}