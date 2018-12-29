using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_viewshop1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["email"].ToString() == "")
        //{
        //    Response.Redirect("~/Guest/FoodieDefault.aspx");

        //}
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("approveshop.aspx?id=" + GridView2.SelectedRow.Cells[0].Text + "&id1=" + GridView2.SelectedRow.Cells[1].Text);
        //Response.Redirect("View_tblresrv_details.aspx?id=" + GridView1.SelectedRow.Cells[0].Text + "&id1=" + GridView1.SelectedRow.Cells[1].Text);


    }
}