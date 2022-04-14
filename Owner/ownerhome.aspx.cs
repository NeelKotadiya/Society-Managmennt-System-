using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class owner_ownerhome : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblnotice.Text = dc.getValue("select count(*) from Notice ").ToString();
            lblmeet.Text = dc.getValue("select count(*) from meeting ").ToString();
            lblevent.Text = dc.getValue("select count(*) from Event ").ToString();
        }
    }
}