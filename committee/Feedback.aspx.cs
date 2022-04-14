using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class committee_Feedback : System.Web.UI.Page
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
        string query = "select * from feedback";
        tb = dc.getTable(query);
        rptfeedback.DataSource = tb;
        rptfeedback.DataBind();
    }

    protected void rptfeedback_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int feedbackid = Convert.ToInt32(e.CommandArgument);
        Session["feedbackid"] = feedbackid;
        string cmdname = e.CommandName;
        if (cmdname.Equals("delete"))
        {
            string query = "delete from feedback where feedbackid='" + feedbackid + "'";
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