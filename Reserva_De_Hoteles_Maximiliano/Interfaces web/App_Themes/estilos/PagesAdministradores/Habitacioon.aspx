<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Index.Master" AutoEventWireup="true" CodeBehind="Habitacioon.aspx.cs" Inherits="Interfaces_web.PagesAdministradores.Habitacioon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 1093px;
            height: 100%;
        }
        .auto-style6 {
            width: 1095px;
            height: 52px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoMenuContextual" runat="server">
    <ul id="MenuContextual">
        <li><a href="../PagesAdministradores/ABM_Listados.aspx">Lista de Hoteles</a></li>
        <li><a href="../PagesAdministradores/ABMHoteles.aspx">Hoteles</a></li>
        <li><a href="../PagesAdministradores/Habitacioon.aspx"> Habitaciones</a></li>
        <li><a href="../PagesAdministradores/ConfirmarReservas.aspx">Lista de Reservas</a></li>   
    </ul>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContenidoPrincipal" runat="server">

    <div id="Buscador" align="center" class="auto-style6">   
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
        <asp:Label ID="lblNombreH" runat="server" Text="Nombre del Hotel:" ForeColor="#33CCFF"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="txtBuscar" runat="server" MaxLength="30" style="margin-top: 0px" Width="99px"></asp:TextBox>
        &nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblNumHab" runat="server" Font-Size="13pt" ForeColor="#33CCFF" Text="Numero Habitacion:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtNumHabi" runat="server" BorderStyle="None" Height="20px" MaxLength="4" Width="50px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnBuscarHabi" runat="server" Text="Buscar" Width="61px" OnClick="BtnBuscarHabi_Click" Height="27px"/>
    </div>

    

            <h2 >ABM Habitaciones</h2>
    

    <div id="Formulario" style="width: 1086px; height: 1149px">
           
        <div id="Imagen" style="height: 1154px; width: 1085px"> 

            <table  style="border: 1px solid #000000; background-color: #C0C0C0; margin-right: 0px;" class="auto-style5">
                <tr>
                    <td   align="center" style="height: 165px; width: 1125px;">
                        <asp:Image ID="imgbox" runat="server" BorderColor="#CCCCCC" BorderStyle="Inset" Height="213px" Width="891px" ImageUrl="~/App_Themes/estilos/img/react.png"  />
                        <br />
                        <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:Button ID="btnSubir" runat="server"  Text="Subir" OnClick="btnSubir_Click" Height="31px" Width="106px"  />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnLimpiar" runat="server" ForeColor="#33CCCC"  Text="Clean" OnClick="btnLimpiar_Click" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;<asp:FileUpload ID="FileUploadIMG" runat="server" Height="22px" Width="623px" style="margin-top: 0px" />
                    </td>
                </tr>
                <tr>
                    <td align= "center" style="width: 1125px; height: 48px;">&nbsp;Hotel:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtHoteles" runat="server" Width="232px" Height="16px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align= "center" style="height: 23px; width: 1125px;">NºHabitacion:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtNumHabitacion" runat="server" Height="17px" MaxLength="5" Width="165px"></asp:TextBox>
&nbsp;&nbsp;
                        </td>
                </tr>
                <tr>
                    <td align= "center" style="width: 1125px; height: 39px;">Piso:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtPiso" runat="server" MaxLength="4" Width="127px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align= "center" style="width: 1125px; height: 39px;">
                        <asp:Label ID="Label1" runat="server" Text="Costo:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtCosto" runat="server" Width="124px" Height="16px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align= "center" style="width: 1125px; height: 143px;">&nbsp;<asp:TextBox ID="txtDesc" runat="server" MaxLength="500" Width="1035px" BackColor="#669999" ForeColor="White" Height="287px" TextMode="MultiLine" ToolTip="Descripcion de la Habitacion---" style="margin-left: 0px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="height: 20px; width: 1125px">
                        &nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="center" style="height: 29px; width: 1125px;">
&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;<asp:Label ID="lblEstadohabit" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align= "center" width: 114px; height: 11px" style="width: 1125px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnAlta" runat="server" Text="Agregar" OnClick="btnAlta_Click" Height="32px" Width="137px"  />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" Height="34px" Width="165px"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnBaja" runat="server" Text="Eliminar" OnClick="btnBaja_Click" Height="30px" Width="160px"  />
                    </td>
                </tr>
            </table>

        </div>

    </div>

</asp:Content>
