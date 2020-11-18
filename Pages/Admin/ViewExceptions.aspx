<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewExceptions.aspx.cs" Inherits="WebApplication2.Admin.ViewExceptions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper margin-top-20px">
        <h2>Exceções ocorridas na aplicação</h2>
        <hr />
        <asp:Label ID="Resultado" runat="server" class="col-3"></asp:Label>
    </div>
</asp:Content>
