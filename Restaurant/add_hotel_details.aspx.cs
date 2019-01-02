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


public partial class Restaurant_add_hotel_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected int get_ids()
    {
        {
            int id = 99;
            int a = 0;
            Class1 obj = new Class1();
            obj.getconnect();
            SqlCommand cmd = new SqlCommand("spaddhoteldetails", obj.con);
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
    }
  
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 obj = new Class1();
        obj.getconnect();
        SqlCommand cmd = new SqlCommand("spaddhoteldetails", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag",0);
        cmd.Parameters.Add("@Hoteldetailid",get_ids());
        cmd.Parameters.Add("@shopid", Session["shopid"].ToString());
        cmd.Parameters.Add("@HotelName", txthname.Text);
        cmd.Parameters.Add("@HotelType", DropDownList1.Text);
        cmd.Parameters.Add("@image", ViewState["filepath"].ToString());
        cmd.Parameters.Add("@City", txtcity.Text);
        cmd.Parameters.Add("@Location", txtlocation.Text);
        cmd.Parameters.Add("@Deliverytime", txtdtm.Text);
        cmd.Parameters.Add("@Facility", DropDownList2.Text);
        cmd.Parameters.Add("@Description",txtdescription.Text);
        cmd.Parameters.Add("@Status", "Pending");
        cmd.Parameters.Add("@Date", txtdate.Text);
        cmd.ExecuteNonQuery();
        clear();
        Response.Write("<script>alert('Inserted Successfully')</script>");

    }
    protected void clear()
    {
        txthname.Text = "";
        DropDownList1.Text="";
        txtcity.Text = "";
        txtlocation.Text = "";
        txtdescription.Text = "";
        txtdtm.Text="";
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