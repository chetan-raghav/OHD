using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class stulogout1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["email"] == null)
        {
            Response.Redirect("login.aspx");
        }
        Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetNoStore();
    }
 protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["email"].ToString() !="1")
{
    System.Web.Security.FormsAuthentication.SignOut();
   
            Session.Clear();
            Session.Abandon();
            Session["email"] = null;
            Session.RemoveAll();


}
        else
        {
            Response.Redirect("login.aspx");
        }


    }
 protected void Button2_Click(object sender, EventArgs e)
 {
     if (Session["email"] != null)
     {
         Response.Redirect("studenthome.aspx");
     }
 }
}