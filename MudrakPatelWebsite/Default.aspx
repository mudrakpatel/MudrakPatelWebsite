<%@ Page Title="AboutMe" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MudrakPatelWebsite.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="AboutMeDiv">
        <div class="MyPhotoDiv">
            <img src="Assets/images/myPhoto.jpg" alt="Mudrak's image"/>
        </div>
        <div class="AboutMeTextDiv">
            Hi there! I'm Mudrak and I'm awesome! I love coding
        </div>
        <div class="quoteDiv">
            Every technology has it's own time, and is soon replaced by a better one
        </div>
        <div class="myHobbiesDiv">
            &lt;&lt;Hobbies&gt;&gt;<br/>
            <div class="hobbiesChild">Soccer</div>
            <div class="hobbiesChild">Volleyball</div>
            <div class="hobbiesChild">Athletics</div>
            <div class="hobbiesChild">Music</div>
        </div>
        <div class="myDreamDiv">
            &lt;&lt;Dream&gt;&gt; To work at MARVEL studios
        </div>
    </div>
</asp:Content>
