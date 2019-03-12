using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;



public partial class studentnewrequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    public String characters = "0123456789";
    public string UniqueNumber()
    {
        Random unique1 = new Random();
        string s = "00";
        int unique;
        int n = 0;
        while (n < 10)
        {
            if (n % 2 == 0)
            {
                s += unique1.Next(9).ToString();

            }
            else
            {
                unique = unique1.Next(9);
                if (unique < this.characters.Length)
                    s = String.Concat(s, this.characters[unique]);
            }

            //Label8.Text = s.ToString();
            n++;

        }

        return s;

    }

    
    protected void Button1_Click(object sender, EventArgs e)
    {
        String p = UniqueNumber();
        String CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {

            con.Open();
        //    if (DropDownList1.SelectedValue == "DSW")

            String str = "insert into [OHD].[dbo].[sreqn] (rid,dept,descr,contact,app,status,email,issued) values( '" + p + "' ,@dept,@descr,@contact,@app,'pending','" + Session["email"] + "',@issued)";

                SqlCommand cmd = new SqlCommand(str, con);
                cmd.Parameters.AddWithValue("@dept", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@descr", TextBox2.Text);
                cmd.Parameters.AddWithValue("@contact", TextBox1.Text);
                cmd.Parameters.AddWithValue("@app", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@issued", DataSetDateTime.Unspecified);
                cmd.ExecuteNonQuery();

                Label2.Text = p;

            string str1 = "select did,eid from [OHD].[dbo].[eacc] where dept=@dept";
                SqlCommand cmd1 = new SqlCommand(str1, con);
                cmd1.Parameters.AddWithValue("@dept", DropDownList1.SelectedValue);
                SqlDataAdapter adp = new SqlDataAdapter(cmd1);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                   
                    string str2 = "insert into [OHD].[dbo].[request] (rid,des,email,contact,apoint,issued,status) values ('" + p + "' ,@des,'" + Session["email"] + "', @cntct,@apoint,@issued,'new')";
                    SqlCommand cmd2 = new SqlCommand(str2, con);
                    cmd2.Parameters.AddWithValue("@des", TextBox2.Text);
                    cmd2.Parameters.AddWithValue("@cntct", TextBox1.Text);
                    cmd2.Parameters.AddWithValue("@apoint", DropDownList2.SelectedValue);
                    cmd2.Parameters.AddWithValue("@issued", DataSetDateTime.Unspecified);
                    cmd2.ExecuteNonQuery();
                    //con.Close();

                    string eid = Convert.ToString(ds.Tables[0].Rows[0]["eid"]); 
                    string did = Convert.ToString(ds.Tables[0].Rows[0]["did"]);
                    string str3 = "insert into [OHD].[dbo].[nreqn] (rid,did,eid,des) values ('" + p + "','" + did + "','" + eid + "', @des)";
                   SqlCommand cmd3 = new SqlCommand(str3, con);

                   cmd3.Parameters.AddWithValue("@des", TextBox2.Text);

                   cmd3.ExecuteNonQuery();
                    //con.Close();

                }

                

            
        }   
    }


 /*  protected void Button1_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
           string str2 = "insert into [OHD].[dbo].[request] (rid,des,email,contact,apoint,status) values ('2',@des,'" + Session["email"] + "', @cntct,@apoint,'new')";
            SqlCommand cmd2 = new SqlCommand(str2, con);
            con.Open();
            cmd2.Parameters.AddWithValue("@des", TextBox2.Text);
            cmd2.Parameters.AddWithValue("@cntct", TextBox1.Text);
            cmd2.Parameters.AddWithValue("@apoint", DropDownList2.SelectedValue);
            //cmd2.Parameters.AddWithValue("@issued", DataSetDateTime.Local);
            cmd2.ExecuteNonQuery();
            con.Close();
            
        }
    }*/
}
    
