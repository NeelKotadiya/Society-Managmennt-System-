using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class owner_meeting : System.Web.UI.Page
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
        string query = " select * from meeting";
        tb = dc.getTable(query);
        rptmeeting.DataSource = tb;
        rptmeeting.DataBind();
    }
    protected void rptmeeting_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int meetid = Convert.ToInt32(e.CommandArgument);
        Session["meetid"] = meetid;
        MultiView1.ActiveViewIndex = 1;
        showData();
    }
    private void showData()
    {
        int meetid = Convert.ToInt32(Session["meetid"]);
        string query = "select * from meeting where meetid ='" + meetid + "'";
        bool result = dc.checkId(query);
        if (result)
        {
            DataRow rw;
            rw = dc.getRecord(query);
            DateTime dt = Convert.ToDateTime(rw["meetdate"]);
            lblsubject1.Text = rw["subject"].ToString();
            lblmeetdate1.Text = dt.ToString();
            lbltopic.Text = rw["topic"].ToString();
            lbldescription1.Text = rw["description"].ToString();
            lblpresent1.Text = rw["present"].ToString();
            lblheadby1.Text = rw["headby"].ToString();
        }
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