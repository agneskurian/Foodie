using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class Guest_purchase : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["email"].ToString() == "")
        //{
        //    Response.Redirect("~/Guest/FoodieDefault.aspx");
        //}
   

    }
    protected int get_ids()
    {
        {
            int id = 99;
            int a = 0;
            Class1 obj = new Class1();
            obj.getconnect();
            SqlCommand cmd = new SqlCommand("spcart", obj.con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@flag", 1);
            DataTable dt = new DataTable();
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            adt.Fill(dt);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                a = Int32.Parse(dt.Rows[i][0].ToString());
                if (a > id)
                {
                    id = a;
                }
            }
            id = id + 1;
            return id;
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spcart", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@cartid", get_ids());
        cmd.Parameters.Add("@shopid", Session["shopid"].ToString());
        cmd.Parameters.Add("@categoryid", Request.QueryString["catid"].ToString());
        cmd.Parameters.Add("@foodid", Request.QueryString["fid"].ToString());
        cmd.ExecuteNonQuery();
        Response.Redirect("purchase.aspx");
    } 
}