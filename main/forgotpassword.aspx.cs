using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Net.Mail;

public partial class main_forgotpassword : System.Web.UI.Page
{
    DataClass dc = new DataClass(); 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        bool result = dc.checkId("select emailid  from register where emailid='" + txtemailid.Text + "'");
        if (result)
        {
            string pwd = dc.getData("select password  from register where emailid='" + txtemailid.Text + "' ");
            string subject="Your password";
            string description=pwd;
            sendemail(txtemailid.Text,subject,description );
            lblmsg.Text = "Sent Successfully..";
        }
    }



    private bool sendemail(string emailto, string subject, string description)
    {
        bool result = false;

        string emailfrom = "onlinetutor0528@gmail.com"; //your email address
        string pass = "05281999";  //your email password

        SmtpClient client = new SmtpClient("smtp.gmail.com");
        MailMessage msg = new MailMessage();

        msg.From = new MailAddress(emailfrom);
        msg.To.Add(new MailAddress(emailto));
        msg.Subject = subject;
        msg.IsBodyHtml = true; //to make message body as html  
        msg.Body = description;//string.Format("hi " + txtusername.Text + "<br/><br/>your password is " + lblmsg.Text);
        try
        {
            client.Port = 587;
            client.Host = "smtp.gmail.com"; //for gmail host  
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = new System.Net.NetworkCredential(emailfrom, pass);
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.Send(msg);
            result = true;
        }
        catch (Exception ex)
        {
            result = false;
        }
        return result;
    }
}