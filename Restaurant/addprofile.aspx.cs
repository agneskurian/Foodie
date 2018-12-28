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


public partial class Restaurant_addprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spaddprofiles", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@HotelType", DropDownList1.Text);
        cmd.Parameters.Add("@Facility", DropDownList2.Text);
        cmd.Parameters.Add("@Description", txtdescription.Text);
        cmd.Parameters.Add("@Location", txtlocation.Text);
        cmd.Parameters.Add("@Distance", txtdistance.Text);
        cmd.Parameters.Add("@Image", ViewState["filepath"].ToString());
        cmd.ExecuteNonQuery();
        clear();
        Response.Write("<script>alert('Inserted Successfully')</script>");

    }
    protected void clear()
    {
        DropDownList1.Text="";
        txtlocation.Text = "";
        txtdescription.Text = "";
        txtdistance.Text="";
        DropDownList2.Text="";
        txtdescription.Text="";
        Image1.ImageUrl = "";

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            String filename = Path.Combine(Server.MapPath("~/images1/"), FileUpload1.FileName);
            String strExtension = Path.GetExtension(FileUpload1.FileName);
            if (strExtension == ".jpg" || strExtension == ".bmp" || strExtension == ".gif")
            {
                FileUpload1.SaveAs(filename);

                Image1.ImageUrl = "~/images1/" + FileUpload1.FileName;
                ViewState["filepath"] = Image1.ImageUrl;
            }
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