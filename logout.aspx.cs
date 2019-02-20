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
using System.Xml.Linq;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;


public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["shopid"] = "";
        Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));http://localhost:62758/logout.aspx.cs
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Redirect("~/Guest/FoodieDefault.aspx");

    }

    protected void Timer_Tick(object sender, EventArgs e)
    {
        Session.Clear();       
        Response.Redirect("~/Guest/FoodieDefault.aspx");

    }
}