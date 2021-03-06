﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class adminreplies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        SqlConnection con = new SqlConnection(CS);
        if (!IsPostBack)
        {
            BindGridview();
        }
    }
      protected void BindGridview()
    {
        String CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        SqlConnection con = new SqlConnection(CS);
        con.Open();
        string str = "select request.rid , request.issued from request,preq where request.rid=preq.rid AND status='adreplied' AND preq.eid = '" + Session["eid"] + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        gvParentGrid.DataSource = ds;
        gvParentGrid.DataBind();

    }
    protected void gvUserInfo_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        SqlConnection con = new SqlConnection(CS);
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            con.Open();
            GridView gv = (GridView)e.Row.FindControl("gvChildGrid");
           long CountryId = Convert.ToInt64(e.Row.Cells[1].Text);

           SqlCommand cmd = new SqlCommand("select request.des,adreply.reply from request,adreply where request.rid=adreply.rid AND adreply.rid=" + CountryId, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            gv.DataSource = ds;
            gv.DataBind();
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Td1.Visible = true;
        if (Td1.Visible == true)
        {
           
            Td2.Visible = false;
        }
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Td2.Visible = true;
        if (Td2.Visible == true)
        {

            Td1.Visible = false;
        }
    }
   
    
    protected void Button2_Click1(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            string str1 = "select did from [OHD].[dbo].[eacc] where eid='" + Session["eid"] + "'";

            SqlCommand cmd1 = new SqlCommand(str1, con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string did = Convert.ToString(ds.Tables[0].Rows[0]["did"]);
                string str = "insert into [OHD].[dbo].[sreply](rid,did,eid,reply) values (@rid,'" + did + "','" + Session["eid"] + "',@reply)";
                SqlCommand cmd = new SqlCommand(str, con);
                con.Open();
                cmd.Parameters.AddWithValue("@rid", TextBox1.Text);
                cmd.Parameters.AddWithValue("@reply", TextBox4.Text);
                cmd.ExecuteNonQuery();

                string str4 = "UPDATE request SET status='replied' WHERE rid=@rid";
                SqlCommand cmd4 = new SqlCommand(str4, con);
                cmd4.Parameters.AddWithValue("@rid", TextBox1.Text);
                cmd4.ExecuteNonQuery();

                string str2 = "UPDATE sreqn SET status='replied' WHERE rid=@rid";
                SqlCommand cmd2 = new SqlCommand(str2, con);
                cmd2.Parameters.AddWithValue("@rid", TextBox1.Text);
                cmd2.ExecuteNonQuery();

                /*string str3 = "delete from [OHD].[dbo].[preq] where rid=@rid";
                SqlCommand cmd3 = new SqlCommand(str3, con);
                cmd3.Parameters.AddWithValue("@rid", TextBox1.Text);
                cmd3.ExecuteNonQuery();*/
                con.Close();

                Response.Redirect("adminreplies.aspx");
            }
        }
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            string str1 = "select did from [OHD].[dbo].[eacc] where eid='" + Session["eid"] + "'";

            SqlCommand cmd1 = new SqlCommand(str1, con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string did = Convert.ToString(ds.Tables[0].Rows[0]["did"]);
                string str = "insert into [OHD].[dbo].[delreq] (rid,did,eid,reason) values (@rid,'" + did + "','" + Session["eid"] + "',@reason)";
                SqlCommand cmd = new SqlCommand(str, con);
                con.Open();
                cmd.Parameters.AddWithValue("@rid", TextBox5.Text);
                cmd.Parameters.AddWithValue("@reason", TextBox2.Text);
                cmd.ExecuteNonQuery();

                string str4 = "UPDATE request SET status='deleted' WHERE rid=@rid";
                SqlCommand cmd4 = new SqlCommand(str4, con);
                cmd4.Parameters.AddWithValue("@rid", TextBox5.Text);
                cmd4.ExecuteNonQuery();

                string str2 = "UPDATE sreqn SET status='replied' WHERE rid=@rid";
                SqlCommand cmd2 = new SqlCommand(str2, con);
                cmd2.Parameters.AddWithValue("@rid", TextBox5.Text);
                cmd2.ExecuteNonQuery();

                /*string str3 = "delete from [OHD].[dbo].[preq] where rid=@rid";
                SqlCommand cmd3 = new SqlCommand(str3, con);
                cmd3.Parameters.AddWithValue("@rid", TextBox1.Text);
                cmd3.ExecuteNonQuery();*/
                con.Close();

                Response.Redirect("adminreplies.aspx");
            }
        }
       
    }
}