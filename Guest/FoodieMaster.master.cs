using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Guest_FoodieMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpContext.Current.Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
        HttpContext.Current.Response.Cache.SetValidUntilExpires(false);
        HttpContext.Current.Response.Cache.SetRevalidation(HttpCacheRevalidation.AllCaches);
        HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        HttpContext.Current.Response.Cache.SetNoStore();
  
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
    //    Class1 obj = new Class1();
    //    obj.getconnect();
    //    SqlCommand cmd = new SqlCommand("spaddhoteldetails", obj.con);
    //    cmd.CommandType = CommandType.StoredProcedure;
    //    cmd.Parameters.Add("@flag",3);
    //    cmd.Parameters.Add("@City", txtsearch.Text);
    //    clear();

    //    DataTable dt = new DataTable();
    //    SqlDataAdapter adt = new SqlDataAdapter(cmd);
    //    adt.Fill(dt);
    //    if (dt.Rows.Count >0 )
    //    {
            
    //            Response.Redirect("nearestshop.aspx?txtsearch.Text=@City");
    //    }
           
    //    else
    //    {
    //            txtsearch.Text = "No hotels found,Search another city";
    //    }


        
    //    //    
        
    }
    //protected void clear()
    //{
    //    txtsearch.Text = "";

    //}




    //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    DataList1.Visible = true;
    //}
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataList1.Visible = true;

    }
   
}
