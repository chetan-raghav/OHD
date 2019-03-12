using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class adminpendingrequest : System.Web.UI.Page
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
        string str = "select request.rid , request.issued,forward.empid from request,forward where request.rid=forward.rid AND request.status='adpending' AND forward.adid = '" + Session["aid"] + "'";
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
            SqlCommand cmd = new SqlCommand("select des from request where rid=" + CountryId, con);
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
        test1.Visible = true;
        
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            string str1 = "select did from [OHD].[dbo].[adacc] where aid='" + Session["aid"] + "'";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(str1, con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string did = Convert.ToString(ds.Tables[0].Rows[0]["did"]);
                string str5 = "select empid from [OHD].[dbo].[forward] where adid='" + Session["aid"] + "' AND rid=@rid";
                SqlCommand cmd5 = new SqlCommand(str5, con);
                cmd5.Parameters.AddWithValue("@rid", TextBox2.Text);
                SqlDataAdapter adp1 = new SqlDataAdapter(cmd5);
                DataSet ds1 = new DataSet();
                adp1.Fill(ds1);
                if (ds1.Tables[0].Rows.Count > 0)
                {
                    string eid = Convert.ToString(ds1.Tables[0].Rows[0]["empid"]);
                    string str = "insert into [OHD].[dbo].[adreply](rid,did,eid,aid,reply) values (@rid,'" + did + "','" + eid + "','" + Session["aid"] + "',@reply)";
                    SqlCommand cmd = new SqlCommand(str, con);

                    cmd.Parameters.AddWithValue("@rid", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@reply", TextBox1.Text);
                    cmd.ExecuteNonQuery();

                    string str4 = "UPDATE request SET status='adreplied' WHERE rid=@rid";
                    SqlCommand cmd4 = new SqlCommand(str4, con);
                    cmd4.Parameters.AddWithValue("@rid", TextBox2.Text);
                    cmd4.ExecuteNonQuery();

                    /*string str3 = "delete from [OHD].[dbo].[forward] where rid=@rid";
                    SqlCommand cmd3 = new SqlCommand(str3, con);
                    cmd3.Parameters.AddWithValue("@rid", TextBox2.Text);
                    cmd3.ExecuteNonQuery();*/

                    string str6 = "UPDATE preq SET eid='"+ eid +"' WHERE rid=@rid"; 
                    SqlCommand cmd6 = new SqlCommand(str6, con);
                    cmd6.Parameters.AddWithValue("@rid", TextBox2.Text);
                    cmd6.ExecuteNonQuery();

                    con.Close();

                    Response.Redirect("adminpendingrequest.aspx");
                }
            }
        }
    }
}