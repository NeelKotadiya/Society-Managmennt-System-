using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Owner_showparking : System.Web.UI.Page
{
    int regid;
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          
            rptdata();
            showData();

        }
    }
   
    private void rptdata()
    {
        int regid = Convert.ToInt32(Session["regid"]);
        DataTable tb = new DataTable();
        string query = "select * from parkallocation where ownerid='"+ regid +"'";
        tb = dc.getTable(query);
        rptpark.DataSource = tb;
        rptpark.DataBind();
    }
    protected void rptpark_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int parkid = Convert.ToInt32(e.CommandArgument);
        Session["parkid"] = parkid;
        MultiView1.ActiveViewIndex = 1;
        showData();

    }
    private void showData()
    {
        int parkid = Convert.ToInt32(Session["parkid"]);
        string query1 = "select * from parking where parkid ='" + parkid + "'";
        DataTable tb = dc.getTable(query1);
        rptpark1.DataSource = tb;
        rptpark1.DataBind();
  }


    protected void btnback_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ownerhome.aspx");
    }
}