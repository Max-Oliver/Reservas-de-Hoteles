<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Index.master" AutoEventWireup="true" CodeBehind="Reservas.aspx.cs" Inherits="Interfaces_web.PagesAdministradores.Reservas" %>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            height: 626px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoMenuContextual" runat="server">
    <ul id="MenuContextual" class="auto-style5">
        <li><a href="../PagesAdministradores/ABM_Listados.aspx">Lista de Hoteles</a></li>
        <li><a href="../PagesAdministradores/ABMHoteles.aspx">Hoteles</a></li>
        <li><a href="../PagesAdministradores/ABMHabitaciones.aspx">Habitaciones</a></li>
        <li><a href="../PagesAdministradores/ConfirmarReservas.aspx">Lista de Reservas</a></li>   
    </ul>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContenidoPrincipal" runat="server">
<h2>Confirmaciones de las reservas</h2>
</asp:Content>
