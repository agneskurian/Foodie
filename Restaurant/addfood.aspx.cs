using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class Restaurant_addfood : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["shopid"].ToString() == "")
        {
            Response.Redirect("~/Guest/FoodieDefault.aspx");
        }

    }
    protected int get_id()
    {
        int id = 99;
        int a = 0;
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spaddemployee", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 1);
        DataTable dt = new DataTable();
        SqlDataAdapter adt = new SqlDataAdapter(cmd);
        adt.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            a = Int32.Parse(dt.Rows[i][0].ToString());
            if (a > id)
            {
                id = a;
            }
        }
        id = id + 1;
        return id;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spaddfood", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@foodid", get_id());
        cmd.Parameters.Add("@shopid", Session["shopid"].ToString());
        cmd.Parameters.Add("@foodname", txtfname.Text);
        cmd.Parameters.Add("@categoryid", DropDownList1.SelectedValue.ToString());
        cmd.Parameters.Add("@description", txtdescription.Text);
        cmd.Parameters.Add("@image", ViewState["filepath"].ToString());
        cmd.Parameters.Add("@price", txtprice.Text);
        cmd.ExecuteNonQuery();
        clear();
        Response.Write("<script>alert('Inserted Successfully')</script>");

    }
    protected void clear()
    {
        txtfname.Text = "";
       // DropDownList1.Text = "";
        txtdescription.Text = "";
        txtprice.Text = "";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            String filename = Path.Combine(Server.MapPath("~/images1/"), FileUpload1.FileName);
            String strExtension = Path.GetExtension(FileUpload1.FileName);
            if (strExtension == ".jpg" || strExtension == ".bmp" || strExtension == ".gif")
            {
                //if (Check_dimension() && Check_Size())
                // {
                FileUpload1.SaveAs(filename);

                Image1.ImageUrl = "~/images1/" + FileUpload1.FileName;
                ViewState["filepath"] = Image1.ImageUrl;
            }
            //    else
            //    {

        //       Response.Write("<script>alert('Select image with appropriate size ')</script>");

        //    }
            //     }
            else
            {
                Response.Write("<script>alert('Select a valid image')</script>");
            }

        }
        else
        {

            Response.Write("<script>alert('Upload image')</script>");

        }


    }
      
}   
