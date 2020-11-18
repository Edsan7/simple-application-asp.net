<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site.Master" AutoEventWireup="true" CodeBehind="InserirUsuarios.aspx.cs" Inherits="WebApplication2.Admin.InserirUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper margin-top-20px">
        <div class="row">
            <!-- FORMULÁRIO DE DADOS -->
            <div class="col-6 box-padding-30px">
                <h2>Cadastro de Usuários</h2>
                <hr />
                <div style="float:right;">
                    <asp:Label ID="Codigo" runat="server" Font-Size="30px" Font-Bold="true"></asp:Label>
                </div>
                <label>Nome Completo</label>
                <asp:TextBox ID="NomeCompleto" MaxLength="255" runat="server"></asp:TextBox>
                <label>Login</label>
                <asp:TextBox ID="Login" MaxLength="255" runat="server"></asp:TextBox>
                <label>Senha</label>
                <asp:TextBox ID="Senha" type="password" MaxLength="255" runat="server"></asp:TextBox>
                <label>Anotações</label>
                <asp:TextBox ID="Anotacoes" MaxLength="255" runat="server"></asp:TextBox>
                <asp:Button ID="Salvar" OnClick="Salvar_Click" runat="server" Text="Enviar" />
                <asp:Button ID="Excluir" OnClick="Excluir_Click" visible="false" runat="server" Text="Excluir" />
                <br />
                <asp:Label ID="Mensagem" runat="server" ForeColor="Green"></asp:Label>
                <br /><br />
            </div>
            <!-- EXIBIR OS DADOS CADASTRADOS -->
            <div class="col-6 box-padding-30px">
                <h2>Usuarios Cadastrados</h2>
                <hr />
                <br />
                <asp:TextBox ID="BuscarUsuario" style="max-width:300px;display:inline;" runat="server"></asp:TextBox>
                <asp:Button ID="Buscar" OnClick="Buscar_Click" runat="server" Text="Buscar" />
                <asp:Button ID="Cancelar" BackColor="#FF4500" OnClick="Cancelar_Click" runat="server" Visible="false" Text="Cancelar" />
                <asp:Panel ID="Panel1" ScrollBars="Vertical" Height="600px" runat="server">
                    <asp:GridView ID="Usuarios" AutoGenerateColumns="true" AutoGenerateSelectButton="true" OnSelectedIndexChanged="Usuarios_SelectedIndexChanged"
                     HeaderStyle-BackColor="#dfdfdf" CellPadding="8" Width="100%" BorderColor="#c0c0c0" runat="server"></asp:GridView>
                </asp:Panel>
           </div>
        </div>
    </div> 
</asp:Content>
