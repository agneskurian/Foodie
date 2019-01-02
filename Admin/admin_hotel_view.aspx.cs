using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_admin_hotel_view : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["email"].ToString() == "")
        {
            Response.Redirect("~/Guest/FoodieDefault.aspx");
        }
   
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("approveshop.aspx?id=" + GridView1.SelectedRow.Cells[0].Text + "&id1=" + GridView1.SelectedRow.Cells[1].Text);

    }
}