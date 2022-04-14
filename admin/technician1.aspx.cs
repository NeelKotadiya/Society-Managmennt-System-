using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_technician1 : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rptdata();
            ddcity.DataSource = dc.getTable("select cityid,cityname from city");
            ddcity.DataMember = "city";
            ddcity.DataTextField = "cityname";
            ddcity.DataValueField = "cityid";
            ddcity.DataBind();
        }
    }
    private void rptdata()
    {
        DataTable tb = new DataTable();
        string query = "select * from technician1";
        tb = dc.getTable(query);
        rpttech.DataSource = tb;
        rpttech.DataBind();
    }

    protected void btnnew_Click(object sender, EventArgs e)
    {

        Session["trans"] = "new";
        MultiView1.ActiveViewIndex = 1;
        txttechname.Focus();
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        String query = "";
        if (Session["trans"].Equals("new"))
        {
            query = "insert into technician1(techname,cityid,contactno,emailid,techtype,expert,description) values('" + txttechname.Text + "','" + ddcity.SelectedValue + "','"+ txtcontactno.Text +"','"+ txtemailid.Text +"','"+ ddtechtype.SelectedValue +"','"+ txtexpert.Text +"','"+ txtdescription.Text +"')";
        }
        if (Session["trans"].Equals("update"))
        {
            int techid = Convert.ToInt32(Session["techid"]);
            query = "update technician1 set techname='" + txttechname.Text + "',cityid='" + ddcity.SelectedValue + "',contactno='"+ txtcontactno.Text +"',emailid='"+ txtemailid.Text +"',techtype='"+ ddtechtype.SelectedValue +"',expert='"+ txtexpert.Text +"',description='"+ txtdescription.Text +"' where techid='" + techid + "'";
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
        txttechname.Text = "";
        txtcontactno.Text = "";
        txtemailid.Text = "";
        txtexpert.Text = "";
        txtdescription.Text = "";
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void rpttech_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int techid = Convert.ToInt32(e.CommandArgument);
        Session["techid"] = techid;
        string cmdname = e.CommandName;
        if (cmdname.Equals("update"))
        {
            string query = "select * from technician1 where techid='" + techid + "'";
            DataRow rw = dc.getRecord(query);
            txttechname.Text = rw["techname"].ToString();
            txtcontactno.Text = rw["contactno"].ToString();
            txtemailid.Text = rw["emailid"].ToString();
            txtexpert.Text = rw["expert"].ToString();
            txtdescription.Text = rw["description"].ToString();


            MultiView1.ActiveViewIndex = 1;
            Session["trans"] = "update";
            txttechname.Focus();
        }
        if (cmdname.Equals("delete"))
        {
            string query = "delete from technician1 where techid='" + techid + "'";
            if (dc.saveRecord(query))
            {
                rptdata();
            }
        }
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
}