using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class main_committee : System.Web.UI.Page
{

    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        rptdata();
        int Memberid = Convert.ToInt32(Session["Memberid"]);
    }
    private void rptdata()
    {
        DataTable tb = new DataTable();

        string query = "select * from Viewcommittee  ";
        tb = dc.getTable(query);
        rptcommittee.DataSource = tb;
        rptcommittee.DataBind();
    }
}