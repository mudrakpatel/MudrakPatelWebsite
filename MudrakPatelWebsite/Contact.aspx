<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MudrakPatelWebsite.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ContactDiv">
        <div class="AlignerDiv">
            <div id="FirstNameDiv">
                <label id="FirstNameLabel">First name: </label>
                <asp:TextBox runat="server" ID="FirstNameTextBox" CssClass="InputTextBox" required="true"></asp:TextBox>
            </div>
            <div id="LastNameDiv">
                <label id="LastNameLabel">Last name: </label>
                <asp:TextBox runat="server" ID="LastNameTextBox" CssClass="InputTextBox" required="true"></asp:TextBox>
            </div>
            <div id="EmailDiv">
                <label id="EmailLabel">Email ID:&nbsp&nbsp&nbsp&nbsp</label>
                <asp:TextBox runat="server" ID="EmailIDTextBox" CssClass="InputTextBox" required="true"></asp:TextBox>
            </div>
            <div id="EmailBodyDiv">
                <label id="EmailBodyLabel">Message:&nbsp&nbsp&nbsp&nbsp&nbsp</label>
                <asp:TextBox runat="server" ID="EmailBodyTextBox" CssClass="InputTextBox" required="false" TextMode="MultiLine" Text="Your Message..."></asp:TextBox>
            </div>
            <div class="ButtonsDiv">
                <asp:Button runat="server" CssClass="SendButton" Text="Send" ID="SendButton" OnClick="SendButton_Click" />
                <asp:Button runat="server" CssClass="ClearButton" Text="Clear" ID="ClearButton" OnClick="ClearButton_Click" />
            </div>

        </div>
        <div class="SocialMediaIcons">
            <a href="https://www.facebook.com/people/Mudrak-Patel/100012863100841">
                <div id="facebookLogoDiv"></div>
            </a>
            <a href="https://ca.linkedin.com/in/mudrak-patel-895964112">
                <div id="linkedinLogoDiv"></div>
            </a>
            <a href="https://disqus.com/by/mudrakpatel/">
                <div id="disqusLogoDiv"></div>
            </a>
            <a href="mailto:testpurposemudrak@gmail.com" onclick="javascript:window.location.href='mailto:testpurposemudrak@gmail.com'; return true;">
                <div id="emailLogoDiv"></div>
            </a>
        </div>
        <div class="contactInfo">
            &nbsp;&nbsp;Phone no.: +1 437 333 9353&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            mudrakpatel96@gmail.com&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            mudrakpatel02@gmail.com
        </div>
    </div>
</asp:Content>
