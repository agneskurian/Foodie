using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class Guest_adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         Class1 obj = new Class1();
        obj.getconnect();        
        
        SqlCommand cmd1 = new SqlCommand("splogin", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 1);
        cmd1.Parameters.Add("@email", txtemail.Text);
        cmd1.Parameters.Add("@password", txtpass.Text);
        cmd1.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd1);
        adt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["email"] = txtemail.Text;
            if (dt.Rows[0][3].ToString().CompareTo("admin") == 0)
            {
                Response.Redirect("../Admin/AdminDefault.aspx");
            }
            else
            {
                Response.Redirect("~/Restaurant/addprofile.aspx");
            }
            
            //{
            //        Response.Redirect("~/Guest/Product.aspx");
            //    }
            //}
        }
    }
   


    }
