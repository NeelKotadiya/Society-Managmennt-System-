using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_contact : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rptdata();
            int submitid = Convert.ToInt32(Session["submitid"]);



        }

    }
   private void rptdata()
    {
        DataTable tb = new DataTable();
       
        string query = "select * from submit  ";
        tb = dc.getTable(query);
        rptowner.DataSource = tb;
        rptowner.DataBind();
   }
   protected void btnback_Click(object sender, EventArgs e)
   {
       Response.Redirect("adminhome.aspx");
   }
}