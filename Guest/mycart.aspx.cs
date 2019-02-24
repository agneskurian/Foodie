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
        if (!IsPostBack)
        {
            //cmd.Parameters.Add("@cartid", get_ids());

            Class1 obj = new Class1();
            obj.getconnect();
            SqlCommand cmd = new SqlCommand("spviewcart", obj.con);
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.Add("@shopid", Request.QueryString["id"].ToString());
            //cmd.Parameters.Add("@categoryid", Request.QueryString["catid"].ToString());
            cmd.Parameters.Add("@foodid", Request.QueryString["fid"].ToString());

            DataTable dt = new DataTable();
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            adt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                //Response.Write("Y");
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
                Response.Write("NOO");
        }

    }
}