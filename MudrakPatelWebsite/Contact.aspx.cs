using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

/*
    @author-> Mudrak Patel;
    @course-> COMP229 f2016;
    @Assignment 1; 
    @Student ID-> 300878960
*/

namespace MudrakPatelWebsite
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            System.Net.Mail.MailMessage emailMessage = new System.Net.Mail.MailMessage();
            emailMessage.To.Add("mudrakpatel02@gmail.com");
            emailMessage.From = new MailAddress("testpurposemudrak@gmail.com", "Mudrak@123", System.Text.Encoding.UTF8);
            emailMessage.Subject = "Mail From Your PortFolio";
            emailMessage.SubjectEncoding = System.Text.Encoding.UTF8;
            emailMessage.Body = "Message from "+ FirstNameTextBox.Text
                                    +" "+ LastNameTextBox.Text ;
            emailMessage.BodyEncoding = System.Text.Encoding.UTF8;
            emailMessage.IsBodyHtml = true;
            emailMessage.Priority = MailPriority.High;
            SmtpClient client = new SmtpClient();
            client.Credentials = new System.Net.NetworkCredential("testpurposemudrak@gmail.com", "Mudrak@123");
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            try
            {
                client.Send(emailMessage);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Email Sent Successfully')", true);
                FirstNameTextBox.Text = String.Empty;
                LastNameTextBox.Text = String.Empty;
            }
            catch (Exception ex)
            {
                Exception ex2 = ex;
                string errorMessage = string.Empty;
                while (ex2 != null)
                {
                    errorMessage += ex2.ToString();
                    ex2 = ex2.InnerException;
                }
            }
        }

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            FirstNameTextBox.Text = "";
            LastNameTextBox.Text = "";
            EmailIDTextBox.Text = "";
            EmailBodyTextBox.Text = "";
        }
    }
}