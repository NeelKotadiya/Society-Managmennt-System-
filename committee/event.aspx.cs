using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class committee_event : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    
    private  string query;
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

    protected void btnnew_Click(object sender, EventArgs e)
    {
        Session["trans"] = "new";
        MultiView1.ActiveViewIndex = 1;
        

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (Session["trans"].Equals("new"))
        {
             
            query = "insert into Event(Eventdate,Eventname,Eventtime,Eventby,Details) values('" + txtcal.Text + "','" + txteventname.Text + "','"+txteventtime.Text+"','" + txteventby.Text + "','" + txtdetails.Text + "')";
        }
        if (dc.saveRecord(query))
        {
            clearAll();
            rptdata();
            Session["trans"] = "";
            MultiView1.ActiveViewIndex = 0;

        }

    }
    private void clearAll()
    {

        txtcal.Text = "";
        txteventname.Text = "";
        txteventtime.Text = "";
        txteventby.Text = "";
        txtdetails.Text = "";

    }
    protected void rptevent_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int Ruleid = Convert.ToInt32(e.CommandArgument);
        Session["Eventid"] = Eventid;
        string cmdname = e.CommandName;
       
    }
    
protected void  btncancel_Click(object sender, EventArgs e)
{
    Session["trans"] = "";
    MultiView1.ActiveViewIndex = 0;
}

public object Eventid { get; set; }
 protected void btnback_Click(object sender, EventArgs e)
{
    Response.Redirect("committeeHome.aspx");
}
}
   
      
