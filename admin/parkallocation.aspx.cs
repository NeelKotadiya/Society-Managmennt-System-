using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_parkallocation : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rptdata();
            ddowner.DataSource = dc.getTable("select ownerid,ownername from owner");
            ddowner.DataMember = "owner";
            ddowner.DataTextField = "ownername";
            ddowner.DataValueField = "ownerid";
            ddowner.DataBind();
            
        }

    }
    private void rptdata()
    {
        DataTable tb = new DataTable();
        string query = "select * from parking";
        tb = dc.getTable(query);
        rptpark.DataSource = tb;
        rptpark.DataBind();
    }

    protected void rptpark_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int parkid = Convert.ToInt32(e.CommandArgument);
        Session["parkid"] = parkid;
        
            MultiView1.ActiveViewIndex = 1;
            
        
        
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {

        String query = "";
       String allodate= DateTime.Today.ToString("MM/dd/yyyy");
       int parkid = Convert.ToInt32(Session["parkid"]);
       query = "insert into parkallocation(allodate,parkid,ownerid) values('" + allodate + "','" + parkid+ "','"+ddowner.SelectedValue + "')";

            if (dc.saveRecord(query))
            {
                query="update parking set status='allocated' where parkid='"+parkid+"'";
                dc.saveRecord(query);
                rptdata();
               
                MultiView1.ActiveViewIndex = 0;
            }
     
    }
    protected void btncancel1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
}