using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;
using System.Data;
using System.Web;
using System.Configuration;


public partial class Employeelogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    { 
         String CS=ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            string ss="Select * from emplogin WHERE eid='" + TextBox1.Text + "' and pwd='"+ TextBox2.Text + "'";
            SqlCommand cmd=new SqlCommand(ss, con);
            SqlDataAdapter adp=new SqlDataAdapter(cmd);
            DataSet ds=new DataSet();
            adp.Fill(ds);
            if(ds.Tables[0].Rows.Count>0)
            {
                Session["eid"]=ds.Tables[0].Rows[0][0].ToString();
                Response.Redirect("employeehome.aspx");
            }
            else
            {
	            Response.Write("<script>alert('INVALID USERNAME OR PASSWORD');</script>");
            }
        }
    }
}