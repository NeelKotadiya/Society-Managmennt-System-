using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_parking : System.Web.UI.Page
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
        string query = "select * from parking";
        tb = dc.getTable(query);
        rptpark.DataSource = tb;
        rptpark.DataBind();
    }
    protected void btnnew_Click(object sender, EventArgs e)
    {
        Session["trans"] = "new";
        MultiView1.ActiveViewIndex = 1;


    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string query = "";


        if (Session["trans"].Equals("new"))
        {
            query = "insert into parking(location,slot,parksize,price,parktype,status) values('" + ddloc.SelectedValue + "','" + txtslot.Text + "','" + txtsize.Text + "','" + txtprice.Text + "','" + ddtype.SelectedValue + "','" + txtstatus.Text + "')";
        }
        if (Session["trans"].Equals("update"))
        {
            int parkid = Convert.ToInt32(Session["parkid"]);
            query = "update parking set location='" + ddloc.SelectedValue + "',slot='" + txtslot.Text + "',parksize='" + txtsize.Text + "',price='" + txtprice.Text + "',parktype='" + ddtype.SelectedValue + "',status='" + txtstatus.Text + "' where parkid='" + parkid + "'";
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
        txtslot.Text = "";
        txtsize.Text = "";
        txtprice.Text = "";
        txtstatus.Text = "";


    }


    protected void btncancel_Click(object sender, EventArgs e)
    {
        Session["trans"] = "";
        MultiView1.ActiveViewIndex = 0;
    }
    protected void rptpark_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int parkid = Convert.ToInt32(e.CommandArgument);
        Session["parkid"] = parkid;
        string cmdname = e.CommandName;
        if (cmdname.Equals("update"))
        {
            string query = "select * from parking where parkid='" + parkid + "'";
            DataRow rw = dc.getRecord(query);
            txtslot.Text = rw["slot"].ToString();
            txtsize.Text = rw["parksize"].ToString();
            txtprice.Text = rw["price"].ToString();
            txtstatus.Text = rw["status"].ToString();



            MultiView1.ActiveViewIndex = 1;
            Session["trans"] = "update";
            txtslot.Focus();
        }
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
}