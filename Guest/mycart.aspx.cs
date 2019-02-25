using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;



public partial class Guest_mycart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"].ToString() == "")
        {
            Response.Redirect("~/Guest/FoodieDefault.aspx");
        }
        
        //if (!IsPostBack)
        //{

        //    Class1 obj = new Class1();
        //    obj.getconnect();
        //    SqlCommand cmd = new SqlCommand("spviewcart", obj.con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.Add("@foodid", Request.QueryString["fid"].ToString());

        //        DataTable dt = new DataTable();
        //        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        //        adt.Fill(dt);
        //        if (dt.Rows.Count > 0)
        //        {
        //            //Response.Write("Y");
        //            GridView1.DataSource = dt;
        //            GridView1.DataBind();
        //        }
        //        else
        //            Response.Write("NOO");
        //    }

        }
     protected int get_id()
    {
        {
            int id = 5;
            Class1 obj = new Class1();
            obj.getconnect();
            SqlCommand cmd = new SqlCommand("spaddcart", obj.con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@flag", 2);
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
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Guest/viewproducts.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
    //    Class1 obj = new Class1();
    //    obj.getconnect();
    //    SqlCommand cmd = new SqlCommand("sporder", obj.con);
    //    cmd.CommandType = CommandType.StoredProcedure;
    //    cmd.Parameters.Add("@flag", 0);
    //    cmd.Parameters.Add("@oid", get_id());
    //    cmd.Parameters.Add("@foodid", Request.QueryString["fid"].ToString());
    //    cmd.Parameters.Add("@email", Session["email"].ToString());
    //    cmd.Parameters.Add("@status", "Not approved");
        //cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Your order placed Successfully')</script>");

    
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd1 = new SqlCommand("spdaddress", obj.con);
        cmd1.CommandType = CommandType.StoredProcedure;
        cmd1.Parameters.Add("@flag", 0);
        cmd1.Parameters.Add("@name", txtname.Text);
        cmd1.Parameters.Add("@phone", txtphn.Text);
        cmd1.Parameters.Add("@land", txtland.Text);
        cmd1.Parameters.Add("@town", txttown.Text);
        cmd1.Parameters.Add("@address", txtadd.Text);
        cmd1.ExecuteNonQuery();

        clear();
        Response.Write("<script>alert('Inserted Successfully')</script>");
    }
    protected void clear()
    {
        txtname.Text = "";
        txtphn.Text = "";
        txtland.Text = "";
        txttown.Text = "";
        txtadd.Text = "";
        // DropDownList1.Text = "";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("payment.aspx");
    }
}

