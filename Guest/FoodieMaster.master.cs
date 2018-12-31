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
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spaddhoteldetails", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag",3);
        cmd.Parameters.Add("@City", txtsearch.Text);
        clear();

        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        adt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            //if (("@City") == txtsearch.Text)
            
                Response.Redirect("nearestshop.aspx");
         }
            else
            {
                txtsearch.Text = "Search another city";
            }

        //}

        ////    
        //else
        //{
        //    txtsearch.Text = "No hotels";

        //}

    }
    protected void clear()
    {
        txtsearch.Text = "";

    }
    
       
    

}
