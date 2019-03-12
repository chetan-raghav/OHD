using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class studentpendingrequest : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("select rid,issued from [OHD].[dbo].[sreqn] where email = '" + Session["email"] + "' AND status='pending'", con);
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
        using (SqlConnection con = new SqlConnection(CS))
        {
            
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                con.Open();
                GridView gv = (GridView)e.Row.FindControl("gvChildGrid");
                //If exists (select rid,issued from [OHD].[dbo].[sreqn] where email = '" + Session["email"] + "')
                long CountryId = Convert.ToInt64(e.Row.Cells[1].Text);
                /*string str = "Select descr from [OHD].[dbo].[sreqn] where rid= '" + CountryId + "'";
                SqlCommand cmd = new SqlCommand(str, con);*/
                SqlCommand cmd = new SqlCommand("Select descr from [OHD].[dbo].[sreqn] where rid=" + CountryId, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                con.Close();
                gv.DataSource = ds;
                gv.DataBind();
            }
        }
    }
    
}