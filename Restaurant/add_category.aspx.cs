﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class Restaurant_add_category : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("spaddcategory", obj.con);
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
        SqlCommand cmd = new SqlCommand("spaddcategory", obj.con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@flag", 0);
        cmd.Parameters.Add("@categoryid", get_id());
        cmd.Parameters.Add("@shopid", Session["shopid"].ToString());
        cmd.Parameters.Add("@categoryname",txtcname.Text);
        cmd.Parameters.Add("@image", ViewState["filepath"].ToString());
        cmd.ExecuteNonQuery();
        //SqlCommand cmd1 = new SqlCommand("spaddcategory", obj.con);
        //cmd1.CommandType = CommandType.StoredProcedure;
        //cmd1.Parameters.Add("@flag", 2);
        //cmd1.Parameters.Add("@categoryname", txtcname.Text);
        //DataTable dt = new DataTable();
        //SqlDataAdapter adt = new SqlDataAdapter(cmd1);
        //adt.Fill(dt);
        //if (dt.Rows.Count > 0)
        //{
        //    Response.Write("<script>alert('Category already exist')</script>");

        //}
        //else
        //{
        //    cmd1.ExecuteNonQuery();
        //    //obj.closeconnect();
        //    Response.Write("<script>alert('category added succesfully')</script>");
        //    clear();
        //}

        clear();
        Response.Write("<script>alert('Inserted Successfully')</script>");

    }
    protected void clear()
    {
        txtcname.Text = "";
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
