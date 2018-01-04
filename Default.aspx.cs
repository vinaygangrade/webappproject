using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
 
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label2.Visible = true;
        Button1.Enabled = false;
        Button2.Enabled = false;
        TextBox4.Text = "Are you comfortable with a cloud-based Platform-as-a-Service solution? - No";
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Label3.Visible = true;
        RadioButton1.Visible = true;
        RadioButton2.Visible = true;
        Button2.Enabled = false;
        Button1.Enabled = false;
        TextBox4.Text = "Are you comfortable with a cloud-based Platform-as-a-Service solution? - Yes" ;
    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        Label4.Visible = true;
        DropDownList1.Visible = true;
        RadioButton1.Enabled = false;
        RadioButton2.Enabled = false;
        Button1.Enabled = false;
        TextBox4.Text = TextBox4.Text + Environment.NewLine + "What kind of workload you have? - OLTP Database";
    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        Button1.Enabled = false;
        Label4.Visible = true;
        DropDownList1.Visible = true;
        RadioButton1.Enabled = false;
        RadioButton2.Enabled = false;
        TextBox4.Text= TextBox4.Text + Environment.NewLine + "What kind of workload you have? - OLAP Database";
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label5.Visible = true;
        TextBox1.Visible = true;
        Button3.Visible = true;
        DropDownList1.Enabled = false;
        TextBox4.Text = TextBox4.Text + Environment.NewLine + "Where is your data stored today? - " + DropDownList1.SelectedItem.Text;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Label6.Visible = true;
        Button4.Visible = true;
        TextBox2.Visible = true;
        Button3.Enabled = false;
        TextBox1.Enabled = false;
        TextBox4.Text = TextBox4.Text + Environment.NewLine + "How large is your database? (size in GB's) - " + TextBox1.Text;
    }

    protected void Button20_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Default.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Label8.Visible = true;
        Button8.Visible = true;
        Button7.Visible = true;
        Button4.Enabled = false;
        TextBox2.Enabled = false;
        TextBox4.Text = TextBox4.Text + Environment.NewLine + "No of concurrent users? - " + TextBox2.Text;
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Button9.Visible = true;
        Label9.Visible = true;
        TextBox3.Visible = true;
        Button7.Enabled = false;
        Button8.Enabled = false;
        TextBox4.Text = TextBox4.Text + Environment.NewLine + "Do you require azure sql database auditing and thread detection? - Yes";
        
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Button9.Visible = true;
        Label9.Visible = true;
        TextBox3.Visible = true;
        Button7.Enabled = false;
        Button8.Enabled = false;
        TextBox4.Text = TextBox4.Text + Environment.NewLine + "Do you require azure sql database auditing and thread detection? - No";
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        Label10.Visible = true;
        DropDownList2.Visible = true;
        Button9.Enabled = false;
        TextBox3.Enabled = false;
        TextBox4.Text = TextBox4.Text + Environment.NewLine + "How often database backup required (in day's)? - " + TextBox3.Text;
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label11.Visible = true;
        Button10.Visible = true;
        Button11.Visible = true;
        DropDownList2.Enabled = false;
        TextBox4.Text = TextBox4.Text + Environment.NewLine + "How log you want to keep the database backup? - " + DropDownList2.SelectedItem.Text;

    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        Label12.Visible = true;        
        Button10.Enabled = false;
        Button11.Enabled = false;
        DropDownList3.Visible = true;
        HyperLink1.Visible = true;
        TextBox4.Text = TextBox4.Text + Environment.NewLine + "Do you require db pool to be created? - Yes";
    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        Label13.Visible = true;
        Button10.Enabled = false;
        Button11.Enabled = false;
        DropDownList5.Visible = true;
        HyperLink1.Visible = true;
        TextBox4.Text = TextBox4.Text + Environment.NewLine + "Do you require db pool to be created? - No";
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label15.Visible = true;
        DropDownList4.Visible = true;
        DropDownList3.Enabled = false;
        TextBox4.Text = TextBox4.Text + Environment.NewLine + "Calculated azure sql edtu & provide the necessary tier information post review analyis? - " + DropDownList3.SelectedItem.Text;

    }

    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label15.Visible = true;
        DropDownList4.Visible = true;
        DropDownList5.Enabled = false;
        TextBox4.Text = TextBox4.Text + Environment.NewLine + "Calculated azure sql dtu & provide the necessary tier information post review analyis? - " + DropDownList5.SelectedItem.Text;
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label16.Visible = true;
        Button16.Visible = true;
        Button17.Visible = true;
        DropDownList4.Enabled = false;
        TextBox4.Text = TextBox4.Text + Environment.NewLine + "Where do you want to host your azure sql db? - " + DropDownList4.SelectedItem.Text;

    }

    protected void Button16_Click(object sender, EventArgs e)
    {
        Label17.Visible = true;
        Button18.Visible = true;
        Button19.Visible = true;
        Button16.Enabled = false;
        Button17.Enabled = false;
        TextBox4.Text = TextBox4.Text + Environment.NewLine + "Do you required georedudancy? - Yes";
    }

    protected void Button18_Click(object sender, EventArgs e)
    {
        Button18.Enabled = false;
        Button19.Enabled = false;
        Button21.Enabled = true;
        TextBox4.Text = TextBox4.Text + Environment.NewLine + "Do you required In-Memory technologies? - Yes";
    }

    protected void Button19_Click(object sender, EventArgs e)
    {
        Button18.Enabled = false;
        Button19.Enabled = false;
        Button21.Enabled = true;
        TextBox4.Text = TextBox4.Text + Environment.NewLine + "Do you required In-Memory technologies? - No";
    }

    protected void Button17_Click(object sender, EventArgs e)
    {
        Label17.Visible = true;
        Button18.Visible = true;
        Button19.Visible = true;
        Button16.Enabled = false;
        Button17.Enabled = false;
        TextBox4.Text = TextBox4.Text + Environment.NewLine + "Do you required georedudancy? - No";
    }

    protected void Button21_Click(object sender, EventArgs e)
    {
        try
        {
            MailMessage mail = new MailMessage();
            // mail.To.Add(email);
            mail.To.Add("vinay.gangrade@hitachiconsulting.com");
            mail.From = new MailAddress("vinay.gangrade@hitachiconsulting.com");
            mail.Subject = "sub";

            mail.Body = "body";

            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "webmail.hitachiconsulting.net"; //Or Your SMTP Server Address
            smtp.Credentials = new System.Net.NetworkCredential
                 ("vinay.gangrade@hitachiconsulting.com", "Nov@123$"); // ***use valid credentials***
            smtp.Port = 587;

            //Or your Smtp Email ID and Password
            smtp.EnableSsl = true;
            smtp.Send(mail);
        }
        catch
        {
            Response.Write("<script>alert('"+TextBox4.Text+"');</script>");
        }
    }   
}