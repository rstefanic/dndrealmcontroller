<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="defaultEdit.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder1" Runat="Server">

    <div class="page-home">
    <%if (flag == 501){ %>
  <section class="page-home" id="conError">
    <p>Could not connect to database</p>
  </section>
    <%} %>
    <%if (flag == 502){ %>
  <section class="page-home" id="queryError">
    <p>Invalid query</p>
  </section>
    <%} %>
    <%if (flag == 1){ %>
  <section class="page-home" id="success">
    <p>Anouncement successfully added</p>
  </section>
    <%} %>


    <div class="announcement clearfix">
      <div>
        <form action="default.aspx" method="post">
        <div class="grid-third"><input class="edit" type="text" name="date"/>
            <input type="submit" id="submit" class="button edit" value="Save" name="save">

        </div>
        <div class="grid-two-third"><textarea name="announcement" id="announcement" cols="30" rows="10"></textarea></div>
        </form>
      </div>
    </div>
</asp:Content>

