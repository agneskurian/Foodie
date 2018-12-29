using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;


public partial class aulogout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["email"] = "";
        Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Redirect("~/Guest/FoodieDefault.aspx");
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/Guest/FoodieDefault.aspx");

    }
}