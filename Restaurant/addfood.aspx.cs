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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spaddfood", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@foodname", txtfname.Text);
        cmd.Parameters.Add("@category", DropDownList1.Text);
        cmd.Parameters.Add("@Description", txtdescription.Text);
        cmd.Parameters.Add("@availability", txtavail.Text);
        cmd.Parameters.Add("@price", txtprice.Text);

        cmd.Parameters.Add("@image", ViewState["filepath"].ToString());
        cmd.ExecuteNonQuery();
        clear();
        Response.Write("<script>alert('Inserted Successfully')</script>");

    }
    protected void clear()
    {
        txtfname.Text = "";
        DropDownList1.Text = "";
        txtdescription.Text = "";
        txtavail.Text = "";
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
