using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class Guest_userregister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected int get_id()
    {
        int id = 0;
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spuserregister", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 1);
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        adt.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            id = Int32.Parse(dt.Rows[i][0].ToString());
        }
        id = id + 1;

        return id;

    }
    protected int get_ids()
    {
        {
            int id = 99;
            int a = 0;
            Class1 obj = new Class1();
            obj.getconnect();
            SqlCommand cmd = new SqlCommand("splogin", obj.con);
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

        if (Page.IsValid)
        {

            Class1 obj = new Class1();
            obj.getconnect();
            SqlCommand cmd = new SqlCommand("splogin", obj.con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@flag", 0);
            cmd.Parameters.Add("@loginid", get_ids());
            cmd.Parameters.Add("@email", txtemail.Text);
            cmd.Parameters.Add("@password", txtpass.Text);
            cmd.Parameters.Add("@usertype", "Guest");
            cmd.ExecuteNonQuery();

            SqlCommand cmd1 = new SqlCommand("spuserregister", obj.con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.Add("@flag", 0);
            cmd1.Parameters.Add("@userregid", get_id());
            cmd1.Parameters.Add("@name", txtname.Text);
            cmd1.Parameters.Add("@phone", txtphn.Text);
            cmd1.Parameters.Add("@email", txtemail.Text);
            cmd1.Parameters.Add("@password", txtpass.Text);
            cmd1.ExecuteNonQuery();
            Response.Redirect("adminlogin.aspx");
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
}