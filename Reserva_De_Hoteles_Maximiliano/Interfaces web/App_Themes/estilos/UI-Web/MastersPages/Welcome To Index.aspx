<%@ Page Title="" Language="C#" MasterPageFile="~/UI-Web/MastersPages/IndexUi.Master" AutoEventWireup="true" CodeBehind="Welcome To Index.aspx.cs" Inherits="Interfaces_web.UI_Web.MastersPages.Welcome_To_Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        left: 10.2em;
        right: -10.2em;
        top: 5em;
        bottom: -5em;
        width: 812px;
        height: 573px;
    }
    .auto-style4 {
        left: 0px;
        top: 2em;
        bottom: -2em;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoPrincipal" runat="server">
    <div id="index" class="auto-style3">
        <h1>El indice lo ayudara con lo que necesite..</h1>
        <asp:Label ID="lblAdministrador" runat="server" Text="Aministrador.."></asp:Label><br/>
        <asp:LinkButton ID="lnkListar" runat="server" PostBackUrl="~/UI-Web/Aministradores/Listar Hoteles.aspx" TabIndex="1">Listar Hoteles</asp:LinkButton><br/>
        <asp:LinkButton ID="ABM_Hoteles" runat="server" PostBackUrl="~/UI-Web/Aministradores/ABMHoteles.aspx">ABM Hoteles</asp:LinkButton><br/>
        <asp:LinkButton ID="ABM_Habit" runat="server" PostBackUrl="~/UI-Web/Aministradores/ABMHabitaciones.aspx">ABM Habitaciones</asp:LinkButton><br/>
        <asp:LinkButton ID="ABM_Reservas" runat="server">Reservas</asp:LinkButton><br/>
        <asp:LinkButton ID="lnkListUsuarios" runat="server">ABM Usuarios</asp:LinkButton>
        <br />
        <br/>

        <asp:Label ID="lblClientes" runat="server" Text="Clientes"></asp:Label><br/>
        <asp:LinkButton ID="HyperLink5" runat="server">Alta Cliente</asp:LinkButton><br/>
        <asp:LinkButton ID="HyperLink6" runat="server">Alta Reserva</asp:LinkButton><br/>
        <asp:LinkButton ID="HyperLink7" runat="server">Perfil Usuario</asp:LinkButton><br/>
            <asp:LinkButton ID="HyperLink8" runat="server">Lista Reservas Activas</asp:LinkButton>
        <br />
        <br/>

        <asp:Label ID="lblError" runat="server" Text="Error-Label"></asp:Label><br/>
        
    </div>

     <div align="center" id="Volver" class="auto-style4">
        <asp:LinkButton ID="lnkVolver" runat="server" PostBackUrl="~/UI-Web/Loguin/Loguin.aspx" >Exit</asp:LinkButton>
    </div>

</asp:Content>
