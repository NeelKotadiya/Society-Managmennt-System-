using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_city : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            rptdata();
            ddstate.DataSource = dc.getTable("select stateid,statename from state");
            ddstate.DataMember = "state";
            ddstate.DataTextField = "statename";
            ddstate.DataValueField = "stateid";
            ddstate.DataBind(); 
        }

    }
   private void rptdata()
    {
        DataTable tb = new DataTable();
        string query = "select * from city";
        tb = dc.getTable(query);
        rptcity.DataSource = tb;
        rptcity.DataBind(); 
    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        Session["trans"] = "new";
        MultiView1.ActiveViewIndex = 1;
        txtcityname.Focus();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        String query = "";
        if (Session["trans"].Equals("new"))
        {
            query = "insert into city(cityname,shortname,pincode,stateid) values('" + txtcityname.Text + "','" + txtshortname.Text + "','" + txtpincode.Text + "','" + ddstate.SelectedValue + "')";
        }
        if (Session["trans"].Equals("update"))
        {
            int cityid = Convert.ToInt32(Session["cityid"]);
            query = "update city set cityname='" + txtcityname.Text + "',shortname='" + txtshortname.Text + "',pincode='" + txtpincode.Text + "',stateid='" + ddstate.SelectedValue + "' where cityid='" + cityid + "'";
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
        txtcityname.Text = "";
        txtshortname.Text = "";
        txtpincode.Text = "";
    }
    protected void rptcity_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
         int cityid = Convert.ToInt32(e.CommandArgument);
        Session["cityid"] = cityid;
        string cmdname = e.CommandName;
        if (cmdname.Equals("update"))
        {
            string query = "select * from city where cityid='" + cityid + "'";
            DataRow rw = dc.getRecord(query);
            txtcityname.Text = rw["cityname"].ToString();
            txtshortname.Text = rw["shortname"].ToString();
            txtpincode.Text = rw["pincode"].ToString();
            MultiView1.ActiveViewIndex = 1;
            Session["trans"] = "update";
            txtcityname.Focus();
        }
          if (cmdname.Equals("delete"))
            {
            string query = "delete from city where cityid='" + cityid + "'";
            if (dc.saveRecord(query))
            {
                rptdata();
                
            }
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