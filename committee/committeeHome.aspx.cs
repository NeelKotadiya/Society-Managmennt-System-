using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class committee_committeeHome : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           lblsug.Text = dc.getValue("select count(*) from suggestion ").ToString();
            lblfeedback.Text = dc.getValue("select count(*) from feedback ").ToString();
            lblevent.Text = dc.getValue("select count(*) from Event ").ToString();
        }
    }
}