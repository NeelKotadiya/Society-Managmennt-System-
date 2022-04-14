using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class userlogin : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            string query = "select regid,username,password,usertype,emailid from register where username='" + txtusername.Text + "'";
            DataRow rw = dc.getRecord(query);
            
            if (txtpassword.Text.Equals(rw["password"]))
            {
                Session["regid"] = rw["regid"];
                Session["username"] = rw["username"];
                Session["emailid"] = rw["emailid"];


                if (rw["usertype"].Equals("Owner"))
                {
                    Response.Redirect("../owner/ownerhome.aspx");
                }
                if (rw["usertype"].Equals("Committee"))
                {
                    Response.Redirect("../committee/committeeHome.aspx");
                }
                if (rw["usertype"].Equals("Admin"))
                {
                    Response.Redirect("../admin/adminhome.aspx");
                }

                lblmsg.Text = "Login Success..";
            }
            else
            {
                lblmsg.Text = "invalid Password..";
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = "Invalid User Name";
        }
    }

}