using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Owner_Technician : System.Web.UI.Page
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
        string query = "select * from Technician";

        tb = dc.getTable(query);
        rptTech.DataSource = tb;
        rptTech.DataBind();
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("Ownerhome.aspx");
    }
}