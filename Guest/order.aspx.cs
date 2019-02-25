using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Guest_order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
        if (Session["email"] == null)
        {
            Response.Redirect("~/Guest/adminlogin.aspx");
        }
         if(Session["email"].ToString() == "")
        {
            Response.Redirect("~/Guest/FoodieDefault.aspx");
        }
        if (!IsPostBack)
        {
            //cmd.Parameters.Add("@cartid", get_ids());

            Class1 obj = new Class1();
            obj.getconnect();
            SqlCommand cmd = new SqlCommand("spViewSingleProducts", obj.con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@shopid", Request.QueryString["id"].ToString());
            cmd.Parameters.Add("@categoryid", Request.QueryString["catid"].ToString());
            cmd.Parameters.Add("@foodid", Request.QueryString["fid"].ToString());

            DataTable dt = new DataTable();
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            adt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                //Response.Write("Y");
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
            else
                Response.Write("NOO");
        }

    }
    protected int get_ids()
    {
        {
            int id = 5;
            Class1 obj = new Class1();
            obj.getconnect();
            SqlCommand cmd = new SqlCommand("spaddcart", obj.con);
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
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
      //  Class1 obj = new Class1();
      //  obj.getconnect();
      //  SqlCommand cmd = new SqlCommand("spViewSingleProduct", obj.con);
      //  cmd.CommandType = CommandType.StoredProcedure;
      //  cmd.Parameters.Add("@flag", 1);
      //  //cmd.Parameters.Add("@cartid", get_ids());
      //  cmd.Parameters.Add("@shopid", Request.QueryString["shopid"].ToString());
      //  cmd.Parameters.Add("@categoryid", Request.QueryString["catid"].ToString());
      //  cmd.Parameters.Add("@foodid", Request.QueryString["fid"].ToString());
      //  cmd.ExecuteNonQuery();
      ////  Response.Redirect("purchase.aspx");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spaddcart", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@cartid", get_ids());
        cmd.Parameters.Add("@shopid", Request.QueryString["id"].ToString());
        cmd.Parameters.Add("@categoryid", Convert.ToInt32(Request.QueryString["catid"].ToString()));
        cmd.Parameters.Add("@foodid",Convert.ToInt32( Request.QueryString["fid"].ToString()));
        cmd.Parameters.Add("@email", Session["email"].ToString());
        cmd.Parameters.Add("@quantity",Convert.ToInt32(( txtquan.Text)));
        cmd.Parameters.Add("@totalcost", Label2.Text);
        cmd.Parameters.Add("@status", "Not Approved");
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Added to cart Successfully you can check in your cart')</script>");
        //
    }
    protected void txtquan_TextChanged(object sender, EventArgs e)
    {
        int req = Convert.ToInt32(txtquan.Text);
        int price = 0;
   foreach( DataListItem item in DataList1.Items)
   {

       Label lblprice = (Label)item.FindControl("priceLabel");
       price = Convert.ToInt32(lblprice.Text);


   }
   int totalCost = price * req;
   Label2.Text = "Rs " + totalCost.ToString();
        


    
    }
}