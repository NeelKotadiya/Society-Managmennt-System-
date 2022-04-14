using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class owner_event : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rptdata();
        }
    }
    private void rptdata()
    {
        DataTable tb = new DataTable();
        string query = "select * from Event";
        tb = dc.getTable(query);
        rptevent.DataSource = tb;
        rptevent.DataBind();
    }
    protected void rptevent_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int Eventid = Convert.ToInt32(e.CommandArgument);
        Session["Eventid"] = Eventid;
        MultiView1.ActiveViewIndex = 1;
        showData();

    }

    private void showData()
    {
        int Eventid = Convert.ToInt32(Session["Eventid"]);
        string query = "select * from Event where Eventid ='" + Eventid + "'";
        bool result = dc.checkId(query);
        if (result)
        {

            DataRow rw;
            rw = dc.getRecord(query);

            DateTime dt=Convert.ToDateTime( rw["Eventdate"]);
            lbldate1.Text =dt.ToString("dd/MM/yyyy");
            lblename.Text = rw["Eventname"].ToString();
            lbletime.Text = rw["Eventtime"].ToString();
            lbleby.Text = rw["Eventby"].ToString();
            lbledetails.Text = rw["Details"].ToString();
        }
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    public object Eventid { get; set; }
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("ownerhome.aspx");
    }
}
