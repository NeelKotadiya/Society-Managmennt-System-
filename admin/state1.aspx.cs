using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_state1 : System.Web.UI.Page
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
        string query = "select * from state";
        tb = dc.getTable(query);
        rptstate.DataSource = tb;
        rptstate.DataBind();
    }

    protected void btnnew_Click(object sender, EventArgs e)
    {
        Session["trans"] = "new";
        MultiView1.ActiveViewIndex = 1;
        txtstatename.Focus();
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        String query = "";
        if (Session["trans"].Equals("new"))
        {
            query = "insert into state(statename,shortname) values('" + txtstatename.Text + "','" + txtshrtname.Text + "')";
        }
        if (Session["trans"].Equals("update"))
        {
           int stateid=Convert.ToInt32(Session["stateid"]);
            query = "update state set statename='" + txtstatename.Text + "',shortname='" + txtshrtname.Text + "' where stateid='" + stateid + "'";
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
        txtstatename.Text = "";
        txtshrtname.Text = "";
       
    }
    protected void rptstate_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int stateid = Convert.ToInt32(e.CommandArgument);
        Session["stateid"] = stateid;
        string cmdname = e.CommandName;
        if (cmdname.Equals("update"))
        {
            string query = "select * from state where stateid='" + stateid + "'";
            DataRow rw = dc.getRecord(query);
            txtstatename.Text = rw["statename"].ToString();
            txtshrtname.Text = rw["shortname"].ToString();
            
            MultiView1.ActiveViewIndex = 1;
            Session["trans"] = "update";
            txtstatename.Focus();
        }
        if (cmdname.Equals("delete"))
        {
            string query = "delete from state where stateid='" + stateid + "'";
            if (dc.saveRecord(query))
            {
                rptdata();

            }
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
}