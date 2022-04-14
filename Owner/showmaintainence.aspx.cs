using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Owner_showmaintainence : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rptdata();
            int maintid = Convert.ToInt32(Session["maintid"]);
            lblsum.Text = dc.getValue("select sum(amount) from maintdetails where maintid='" + maintid + "'").ToString();

        }
    }
    private void rptdata()
    {
        DataTable tb = new DataTable();
        string query = "select * from maintainence";
        tb = dc.getTable(query);
        rptmaint.DataSource = tb;
        rptmaint.DataBind();
    }

    protected void rptmaint_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int maintid = Convert.ToInt32(e.CommandArgument);
        Session["maintid"] = maintid;
        int month = Convert.ToInt32(e.CommandArgument);
         
         int year = Convert.ToInt32(e.CommandArgument);
        
        int amount = Convert.ToInt32(e.CommandArgument);
        

        MultiView1.ActiveViewIndex = 1;

        
       
        string cmdname = e.CommandName;
        if (cmdname.Equals("payment"))
        {
            string query = "select maintid,month,year,amount from maintainence where maintid='" + maintid + "'";
            DataRow rw = dc.getRecord(query);


            Session["maintid"] = rw["maintid"];
            Session["month"] = rw["month"];
           
            Session["year"] = rw["year"];
           
            Session["amount"] = rw["amount"];

            Response.Redirect("../asppayu/PayuTransaction.aspx");
            
        }
        showData();

    }
    private void showData()
    {
        int maintid = Convert.ToInt32(Session["maintid"]);
        string query = "select * from maintdetails where maintid='" + maintid + "'";
        DataTable tb = dc.getTable(query);
        rptmaintdetails.DataSource = tb;
        rptmaintdetails.DataBind();


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