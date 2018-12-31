using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;


public partial class Guest_contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd1 = new SqlCommand("spcontact", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 0);
        cmd1.Parameters.Add("@name", txtname.Text);
        cmd1.Parameters.Add("@email", txtemail.Text);
        cmd1.Parameters.Add("@phone", txtphone.Text);
        cmd1.Parameters.Add("@message", txtmsg.Text);

        cmd1.ExecuteNonQuery();
        Response.Redirect("FoodieDefault.aspx");
      
    }
}