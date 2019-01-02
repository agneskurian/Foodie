using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;





public partial class Admin_sendnotification : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("sphapprove_notification", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@shopid", DropDownList1.SelectedValue.ToString());
        cmd.Parameters.Add("@message", TextBox1.Text);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert(' successfully send notification')</script>");

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}