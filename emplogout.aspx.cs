using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class emplogout1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["eid"] == null)
        {
            Response.Redirect("Employeelogin.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["eid"] != null)
        {
            Session["eid"] = null;
            Session.Abandon();
            Response.Redirect("Employeelogin.aspx");
        }

        else
        {
            Response.Redirect("Employeelogin.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Session["eid"] != null)
        {
            Response.Redirect("employeehome.aspx");
        }
    }
}