using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Owner_Staff : System.Web.UI.Page
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
        string query = "select * from Staff";
        
        tb = dc.getTable(query);
        rptStaff.DataSource = tb;
        rptStaff.DataBind();
    }
}