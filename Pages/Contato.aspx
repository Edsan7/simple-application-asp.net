<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="WebApplication2.Contato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="content-wrapper margin-top-20px">
            <!-- LINHA PARA SE CRIAR AS COLUNAS-->
            <div class="row">
                <!-- COLUNA 1 -->
                <div class="col-6 padding-10px">
                    <h1>Fale Conosco</h1>
                    <br /><br />
                    <!-- INÍCIO DO FORMULARIO -->
                    <asp:Label ID="Erro" runat="server" ForeColor="red"></asp:Label>
                    <label>Mensagem</label>
                    <asp:TextBox ID="Mensagem" TextMode="MultiLine" Rows="6" runat="server" MaxLength="255"></asp:TextBox>
                    <label>Seu Nome</label>
                    <asp:TextBox ID="SeuNome" runat="server"></asp:TextBox>
                    <label>Seu Email</label>
                    <asp:TextBox ID="SeuEmail" runat="server"></asp:TextBox>
                   
                    <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />
                </div>
                <!-- COLUNA 2 -->
                <div class="col-6 padding-10px">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7357.397839780528!2d-47.351964475424175!3d-22.7765521263076!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94c89940165c8197%3A0xd8f5d2ace7dc016!2sR.%20Profa.%20Maria%20Worschech%2C%20290%20-%20Parque%20Universitario%2C%20Americana%20-%20SP%2C%2013467-654!5e0!3m2!1spt-BR!2sbr!4v1590201842307!5m2!1spt-BR!2sbr"
                        width="100%" height="600" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
