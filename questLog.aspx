<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="questLog.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder1" Runat="Server">
    <section class="page-home">

        <h1>Quest Log</h1>

        <div class="grid-half"><h2>Date of Adventure</h2></div>
        <div class="grid-half"><h2>Log</h2></div>


        <%foreach (var item in Main.DisplayQuests()){ %>
            <div><!-- Open main container -->
              <div class="grid-half"><!-- date -->
                <p><%:item.Date%></p>
              </div>

              <div class="grid-half"><!-- log -->
                <p><%:item.Text%></p>
              </div>
            </div>
        <%} %>

     </section>
</asp:Content>

