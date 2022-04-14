using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Owner_notice : System.Web.UI.Page
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
        string query = "select * from Notice";
        tb = dc.getTable(query);
        rptnotice.DataSource = tb;
        rptnotice.DataBind();
    }

    protected void rptnotice_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int Noticeid = Convert.ToInt32(e.CommandArgument);
        Session["Noticeid"] = Noticeid;
        MultiView1.ActiveViewIndex = 1;
        showData();

    }

    private void showData()
    {
        int Noticeid = Convert.ToInt32(Session["Noticeid"]);
        string query = "select * from Notice where Noticeid ='" + Noticeid + "'";
        bool result = dc.checkId(query);
        if (result)
        {

            DataRow rw;
            rw = dc.getRecord(query);


            lbltitle.Text = rw["Title"].ToString();


            lbldate1.Text = rw["Noticedate"].ToString();




            lbldetail.Text = rw["Details"].ToString();


            lblnoticefor.Text = rw["Noticefor"].ToString();


            lblnoticeby.Text = rw["Noticeby"].ToString();



        }
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ownerhome.aspx");
    }
}
