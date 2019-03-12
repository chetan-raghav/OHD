using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
public partial class employeerepliedrequest : System.Web.UI.Page
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
        string str = "select request.rid , request.issued from request,sreply where request.rid=sreply.rid AND sreply.eid = '" + Session["eid"] + "'";
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
            SqlCommand cmd = new SqlCommand("select request.des,sreply.reply from request,sreply where request.rid=sreply.rid AND sreply.rid=" + CountryId, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            gv.DataSource = ds;
            gv.DataBind();
        }
    }

   

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}