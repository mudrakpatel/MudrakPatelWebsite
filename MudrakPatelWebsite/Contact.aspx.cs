using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace MudrakPatelWebsite
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            MailMessage emailMessage = new MailMessage();
            emailMessage.To.Add("testpurposemudrak@gmail.com");
            emailMessage.From = new MailAddress(EmailIDTextBox.Text);
            emailMessage.Subject = "Email from " + FirstNameTextBox.Text + " " + LastNameTextBox.Text;
            emailMessage.Body = EmailBodyTextBox.Text;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 25;
            //smtp.Port = 465;
            //smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("testpurposemudrak@gmail.com","Mudrak@123");
            try
            {
                smtp.Send(emailMessage);
            }
            catch (Exception sendException)
            {
                EmailBodyTextBox.Text = sendException.StackTrace;
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