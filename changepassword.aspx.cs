﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class changepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            string str1 = "select email from [OHD].[dbo].[stulogin] where email='" + Session["email"] + "' AND pwd = @pwd";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(str1, con);
            cmd1.Parameters.AddWithValue("@pwd", TextBox1.Text);
            SqlDataAdapter adp = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string str4 = "UPDATE stulogin SET pwd=@pwd WHERE email='" + Session["email"] + "'";
                SqlCommand cmd4 = new SqlCommand(str4, con);
                cmd4.Parameters.AddWithValue("@pwd", TextBox2.Text);
                cmd4.ExecuteNonQuery();

                string str5 = "UPDATE stacc SET pwd=@pwd WHERE email='" + Session["email"] + "'";
                SqlCommand cmd5 = new SqlCommand(str5, con);
                cmd5.Parameters.AddWithValue("@pwd", TextBox2.Text);
                cmd5.ExecuteNonQuery();

                Response.Redirect("changepassword.aspx"); 
                
            }
        }
        
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("changepassword.aspx");
    }
}

