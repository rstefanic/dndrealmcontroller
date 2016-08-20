<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder1" Runat="Server">
    <div class="page-home"> <!-- Head of the Announcments and Homepage -->
    <h1 class="header">Announcements</h1>
    <!-- Start Announcements -->
        <%foreach (var item in Main.AnouncementViews()){ %>
    <div class="announcement clearfix">
      <div>
        <div class="grid-third"><h2><%:item.date%></h2></div>
        <div class="grid-two-third"><p><%:item.text%></p></div>
      </div>
    </div>
        <%} %>
</div><!-- End of Announcements area -->
</asp:Content>


