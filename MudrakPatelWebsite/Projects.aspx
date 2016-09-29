<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="MudrakPatelWebsite.Projects" %>

<!--
    @author-> Mudrak Patel; 
    @course-> COMP229 f2016; 
    @Assignment 1; 
    @Student ID-> 300878960
-->

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ProjectsMainDiv">
        <div class="ProjectsHeadingDiv">
            Projects
        </div>
        <div class="ProjectsChild1"><a href="https://github.com/mudrakpatel">My Github</a></div>
        <div class="ProjectsChild1" id="otherProjectsLinkDiv"><a href="http://assignment4comp125.azurewebsites.net/Projects.html">Other projects</a></div>
    </div>
</asp:Content>
