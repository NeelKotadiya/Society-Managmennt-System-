using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class committee_complain : System.Web.UI.Page
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
        string query = "select * from complain";
        tb = dc.getTable(query);
        rptcomplain.DataSource = tb;
        rptcomplain.DataBind();
    }

    protected void rptcomplain_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int complainid = Convert.ToInt32(e.CommandArgument);
        Session["complainid"] = complainid;
        string cmdname = e.CommandName;
        if (cmdname.Equals("update"))
        {
            string query = "select * from complain where complainid='" + complainid + "'";
            DataRow rw = dc.getRecord(query);
            txtcomplainfor.Text = rw["complainfor"].ToString();
            txtdetails.Text = rw["details"].ToString();
            txtsolution.Text = rw["solution"].ToString();
            MultiView1.ActiveViewIndex = 1;
            Session["trans"] = "update";
            txtcomplainfor.Focus();
        }
        if (cmdname.Equals("delete"))
        {
            string query = "delete from complain where complainid='" + complainid + "'";
            if (dc.saveRecord(query))
            {
                rptdata();

            }
        }
    }
   
    protected void btnsave_Click(object sender, EventArgs e)
    {
        String query = "";
        if (Session["trans"].Equals("update"))
        {
            int complainid = Convert.ToInt32(Session["complainid"]);
            query = "update complain set  complainfor='" + txtcomplainfor.Text + "',details='" + txtdetails.Text + "',solution='" + txtsolution.Text + "' where complainid='" + complainid + "'";
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
        txtcomplainfor.Text = "";
        txtdetails.Text = "";
        txtsolution.Text = "";
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("committeehome.aspx");
    }
}