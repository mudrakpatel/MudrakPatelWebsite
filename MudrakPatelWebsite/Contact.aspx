<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MudrakPatelWebsite.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ContactDiv">
        <div class="AlignerDiv">
            <div id="FirstNameDiv">
                <label id="FirstNameLabel">First name: </label>
                <asp:TextBox runat="server" ID="FirstNameTextBox" CssClass=""></asp:TextBox>
            </div>
            <div id="LastNameDiv">
                <label id="LastNameLabel">Last name: </label>
                <asp:TextBox runat="server" ID="LastNameTextBox" CssClass=""></asp:TextBox>
            </div>
            <div id="PhoneDiv">
                <label id="PhoneLabel">Phone no.: </label>
                <asp:TextBox runat="server" ID="PhoneTextBox" CssClass=""></asp:TextBox>
            </div>
            <asp:Button runat="server" CssClass="" Text="Send" />
        </div>

    </div>
</asp:Content>
