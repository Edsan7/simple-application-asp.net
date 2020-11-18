<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Site.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="WebApplication2.Contato" %>
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
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3679.6919946833546!2d-47.3523499850375!3d-22.73968678509704!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94c89bea5cdb94f9%3A0xffb368bd91ea12ae!2sFatec%20Americana%20-%20Faculdade%20de%20Tecnologia%20de%20Americana!5e0!3m2!1spt-BR!2sbr!4v1605710164276!5m2!1spt-BR!2sbr" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
