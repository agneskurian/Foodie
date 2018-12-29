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


public partial class Restaurant_addempolyee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["shopid"].ToString() == "")
        {
            Response.Redirect("~/Guest/FoodieDefault.aspx");
        }
   
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
     Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spaddemployee", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@shopid", Session["shopid"].ToString());
        cmd.Parameters.Add("@empid", txtempid.Text);
        cmd.Parameters.Add("@empname", txtename.Text);
        cmd.Parameters.Add("@phone", txtmphn.Text);
        cmd.Parameters.Add("@image", ViewState["filepath"].ToString());
        cmd.ExecuteNonQuery();
        clear();
        Response.Write("<script>alert('Inserted Successfully')</script>");

    }
    protected void clear()
    {
        txtename.Text = "";
        txtempid.Text = "";
        txtmphn.Text = "";
        Image1.ImageUrl = "";


    }

protected void Button2_Click(object sender, EventArgs e)
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
