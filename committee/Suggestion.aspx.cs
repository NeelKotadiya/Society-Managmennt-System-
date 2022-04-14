using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class committee_Suggestion : System.Web.UI.Page
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
        string query = "select * from suggestion";
        tb = dc.getTable(query);
        rptsug.DataSource = tb;
        rptsug.DataBind();
    }
    protected void rptsug_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int sugid = Convert.ToInt32(e.CommandArgument);
        Session["sugid"] = sugid;
        string cmdname = e.CommandName;
        if (cmdname.Equals("delete"))
        {
            string query = "delete from suggestion where sugid='" + sugid + "'";
            if (dc.saveRecord(query))
            {
                rptdata();

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("committeehome.aspx");
    }
}