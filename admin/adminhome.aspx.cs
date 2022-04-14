using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_adminhome : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblowner.Text = dc.getValue("select count(*) from register where usertype='Owner'").ToString();
            lblcommittee.Text = dc.getValue("select count(*) from register where usertype='Committee'").ToString();
            lblvisitor.Text = dc.getValue("select count(*) from Visitor ").ToString();
            //lblsugg.Text = dc.getValue("select count(*) from suggestion ").ToString();
            lblpark.Text = dc.getValue("select count(*) from parking ").ToString();
            lblpark1.Text = dc.getValue("select count(*) from parkallocation ").ToString();
            lblnotice.Text = dc.getValue("select count(*) from Notice ").ToString();
        }
    }
}