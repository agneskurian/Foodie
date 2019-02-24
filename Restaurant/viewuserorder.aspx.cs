using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Restaurant_viewuserorder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Response.Redirect("approveorder.aspx?id=" + GridView1.SelectedRow.Cells[3].Text);

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Response.Redirect("Default3.aspx?id=" + GridView1.SelectedRow.Cells[3].Text);

    }
}