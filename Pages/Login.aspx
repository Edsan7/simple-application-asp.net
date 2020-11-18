<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="content-wrapper margin-top-60px">
        <div class="row">
            <div class="col-3 box-padding-30px box-border">
                <h2>Entrar</h2>
                <hr />
                <asp:Label ID="Mensagem" runat="server" ForeColor="Red"></asp:Label>
                <label>Login</label>
                <asp:TextBox ID="NomeLogin" runat="server"></asp:TextBox>
                <label>Senha</label>
                <asp:TextBox ID="Senha" runat="server"></asp:TextBox>
                <asp:Button ID="Entrar" runat="server" OnClick="Entrar_Click" Text="Entrar" />
            </div>
         </div>
    </div>
</asp:Content>
