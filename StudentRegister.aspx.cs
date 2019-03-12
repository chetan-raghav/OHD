using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class SignUp : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
private object alert(char p)
{
 	throw new NotImplementedException();
}

protected void Button1_Click(object sender, EventArgs e)
{
           String CS=ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            
            String qry="Select Count(email) from stacc";
            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            int count =(int)cmd.ExecuteScalar();
          
            
            String qry1 = "If not exists(Select * from [OHD].[dbo].[stacc] Where croll=@croll OR email=@email) If exists(Select * from [OHD].[dbo].[student] Where stype=@stype AND college=@college AND name=@name AND courses=@course AND ayear=@ayear AND pyear=@pyear AND sem=@sem AND croll=@croll)  Insert into [OHD].[dbo].[stacc] (stype,college,name,course,sem,croll,eroll,email,contact,ayear,pyear,pwd) values (@stype,@college,@name,@course,@sem,@croll,@eroll,@email,@contact,@ayear,@pyear,@pwd)"; 
            SqlCommand cmd1 = new SqlCommand(qry1, con);
            
            cmd1.Parameters.AddWithValue("@stype", DDL1.SelectedValue);
            cmd1.Parameters.AddWithValue("@college", DDL2.SelectedValue);
            cmd1.Parameters.AddWithValue("@name", UserName.Text);
            cmd1.Parameters.AddWithValue("@course", DDL3.SelectedValue);
            cmd1.Parameters.AddWithValue("@sem", DDL4.SelectedValue);
            cmd1.Parameters.AddWithValue("@croll", crn.Text);
            cmd1.Parameters.AddWithValue("@eroll", ern.Text);
            cmd1.Parameters.AddWithValue("@email", Email.Text);
            cmd1.Parameters.AddWithValue("@contact", cnt.Text);
            cmd1.Parameters.AddWithValue("@ayear", admn.Text);
            cmd1.Parameters.AddWithValue("@pyear", psng.Text);
            cmd1.Parameters.AddWithValue("@pwd", Password.Text);
            cmd1.Parameters.AddWithValue("@cpwd", ConfirmPassword.Text);
            cmd1.ExecuteNonQuery();

            String qry2 = "Select Count(*) from stacc";
            SqlCommand cmd2 = new SqlCommand(qry2, con);
            int count1 = (int)cmd2.ExecuteScalar();
            if(count1>count)
            {
                String qry3 = "If exists(Select * from [OHD].[dbo].[stacc] Where email=@email AND pwd=@pwd) Insert into [OHD].[dbo].[stulogin](email,pwd) values (@email,@pwd)";
                SqlCommand cmd3 = new SqlCommand(qry3, con);
                cmd3.Parameters.AddWithValue("@email", Email.Text);
                cmd3.Parameters.AddWithValue("@pwd", Password.Text);
                cmd3.ExecuteNonQuery();
                Response.Redirect("confirmpage.aspx");
            }
            
            else 
            {

                confirmbutton.ForeColor = System.Drawing.Color.Red;
                confirmbutton.Text = "<script>alert( 'this account already exists or the student credentials are incorrect....please enter a new email account')</script>";
            }
            
        }

        



    }
}
