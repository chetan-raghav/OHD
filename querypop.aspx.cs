using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class querypop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {

            con.Open();

            String qry7 = "Insert into [OHD].[dbo].[hhquery] (uname,uemail,statement) values (@ahname,@ahemail,@ahstatement)";
            SqlCommand cmd1 = new SqlCommand(qry7, con);

            cmd1.Parameters.AddWithValue("@ahname", qhname.Text);


            cmd1.Parameters.AddWithValue("@ahemail", @qhemail.Text);
            cmd1.Parameters.AddWithValue("@ahstatement", qhstatement.Text);
            cmd1.ExecuteNonQuery();
        }


    }

}