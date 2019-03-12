using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class Employeeregis : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
           String CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {

            String qry = "Select Count(email) from eacc";
            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            int count = (int)cmd.ExecuteScalar();
           

            String qry1 = "If not exists(Select * from [OHD].[dbo].[eacc] Where eid=@eid OR email=@email) If exists(Select * from [OHD].[dbo].[empdb] Where did=@did AND dname=@dept AND post=@post AND ename=@ename AND contact=@contact AND email=@email AND eid=@eid) Insert into [OHD].[dbo].[eacc] (eid,ename,dept,did,post,email,contact,pwd) values (@eid,@ename,@dept,@did,@post,@email,@contact,@pwd)";
            SqlCommand cmd1 = new SqlCommand(qry1, con);

            cmd1.Parameters.AddWithValue("@eid", empid.Text);
            cmd1.Parameters.AddWithValue("@ename", username.Text);
            cmd1.Parameters.AddWithValue("@dept", DDL1.SelectedValue);
            cmd1.Parameters.AddWithValue("@did", deptid.Text);
            cmd1.Parameters.AddWithValue("@post", post.Text);
            cmd1.Parameters.AddWithValue("@email", Email1.Text);
            cmd1.Parameters.AddWithValue("@contact", cnt1.Text);
            cmd1.Parameters.AddWithValue("@pwd", Password1.Text);
            cmd1.Parameters.AddWithValue("@cpwd", ConfirmPassword1.Text);
            cmd1.ExecuteNonQuery();


            String qry2 = "Select Count(*) from eacc";
            SqlCommand cmd2 = new SqlCommand(qry2, con);
            int count1 = (int)cmd2.ExecuteScalar();
           


            if (count1 > count)
            {
                

                String qry3 = "If exists(Select * from [OHD].[dbo].[eacc] Where eid=@eid AND pwd=@pwd) Insert into [OHD].[dbo].[emplogin](eid,pwd) values (@eid,@pwd)";
                SqlCommand cmd3 = new SqlCommand(qry3, con);
                cmd3.Parameters.AddWithValue("@eid", empid.Text);
                cmd3.Parameters.AddWithValue("@pwd", Password1.Text);
                cmd3.ExecuteNonQuery();
                Response.Redirect("confirmpage.aspx");
 
            }

            else
            {

                confirmbutton.ForeColor = System.Drawing.Color.Red;
                confirmbutton.Text ="<script>alert( 'this account already exists or the student credentials are incorrect....please enter a new email account')</script>";
            }

        }
    
    }
    }
