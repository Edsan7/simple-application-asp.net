<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper">
        <div class="flexslider">
            <ul class="slides">
                <li><img src="Images/banner0.png" /></li>
                <li><img src="Images/banner2.png" /></li>
                <li><img src="Images/banner3.png" /></li>
                <li><img src="Images/banner4.png" /></li>
            </ul>
        </div>
        <script>
            $(window).load(function () {
                $('.flexslider').flexslider({
                    animation: "slide"
                });
            });
        </script>
        <!-- CONTEUDO DA PÁGINA A PARTIR DAQUI -->
        <div class="row margin-top-60px text-justify">
            <div class="col-3 padding-10px">
                <img src="Images/aprendaaprogramar2.jpg" class="max-width-100" />
                <h2 class="padding-top-10px">Titulo 01</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                    labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                    nisi ut aliquip ex ea commodo consequat.
                </p>
            </div>
            <div class="col-3 padding-10px">
                <img src="Images/aprendaaprogramar2.jpg" class="max-width-100" />
                <h2 class="padding-top-10px">Titulo 02</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                    labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                    nisi ut aliquip ex ea commodo consequat.
                </p>
            </div>
            <div class="col-3 padding-10px">
                <img src="Images/aprendaaprogramar2.jpg" class="max-width-100" />
                <h2 class="padding-top-10px">Titulo 03</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                    labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                    nisi ut aliquip ex ea commodo consequat.
                </p>
            </div>
            <div class="col-3 padding-10px">
                <img src="Images/aprendaaprogramar2.jpg" class="max-width-100" />
                <h2 class="padding-top-10px">Titulo 04</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                    labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                    nisi ut aliquip ex ea commodo consequat.
                </p>
            </div>
        </div>
    </div>
</asp:Content>
