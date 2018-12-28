<%@ Page Title="" Language="C#" MasterPageFile="~/UI-Web/MastersPages/IndexUi.Master" AutoEventWireup="true" CodeBehind="ABMHabitaciones.aspx.cs" Inherits="Interfaces_web.UI_Web.Aministradores.ABMHabitaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 899px;
        }
        .auto-style4 {
            left: 12em;
            right: -12em;
            top: 0;
            bottom: -99px;
            width: 802px;
            height: 699px;
        }
        .auto-style5 {
            width: 899px;
            height: 34px;
        }
        .auto-style6 {
            width: 899px;
            height: 36px;
        }
        .auto-style7 {
            left: 15em;
            right: -15em;
            top: 0.4em;
            height: 58px;
        }
        .auto-style8 {
            left: 12em;
            right: -12em;
            top: 2em;
            bottom: -2em;
            width: 802px;
            height: 699px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoPrincipal" runat="server">

    <div id="Buscador" class="auto-style7" >   
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
    
    <div id="TituloH">
        <h2 >ABM Habitaciones </h2>
    </div>
            
    <div id="FormularioHabit" class="auto-style4">
            <table>
                <tr>
                    <td class="auto-style3" >
                        <asp:Image ID="imgbox" runat="server" BorderColor="#CCCCCC" BorderStyle="Inset" Height="145px" Width="877px" ImageUrl="../MastersPages/Estilos/imgs/react.png"  />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="btnSubir" runat="server"  Text="Subir" OnClick="btnSubir_Click" Height="23px" Width="87px"  />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="btnLimpiar" runat="server" ForeColor="#33CCCC"  Text="Clean" OnClick="btnLimpiar_Click" Height="25px" Width="57px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:FileUpload ID="FileUploadIMG" runat="server" Height="25px" Width="695px" style="margin-top: 0px" />
                    </td>
                </tr>
                <tr>
                    <td align= "center" class="auto-style3">&nbsp;Hotel:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtHoteles" runat="server" Width="232px" Height="16px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align= "center" class="auto-style3">NºHabitacion:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtNumHabitacion" runat="server" Height="17px" MaxLength="5" Width="165px"></asp:TextBox>
&nbsp;&nbsp;
                        </td>
                </tr>
                <tr>
                    <td align= "center" class="auto-style6">Piso:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="txtPiso" runat="server" MaxLength="4" Width="127px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align= "center" class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Costo:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtCosto" runat="server" Width="124px" Height="16px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align= "center" class="auto-style3">&nbsp;<asp:TextBox ID="txtDesc" runat="server" MaxLength="500" Width="682px" BackColor="#669999" ForeColor="White" Height="197px" TextMode="MultiLine" ToolTip="Descripcion de la Habitacion---" style="margin-left: 0px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style3">
                        &nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style5">
&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;<asp:Label ID="lblEstadohabit" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" >
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="btnAlta" runat="server" Text="Agregar" OnClick="btnAlta_Click" Height="32px" Width="146px"  />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" Height="34px" Width="165px"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnBaja" runat="server" Text="Eliminar" OnClick="btnBaja_Click" Height="33px" Width="159px"  />
                    </td>
                </tr>
            </table>

        </div>

     <div align="center" id="Volver" class="auto-style8">
        <asp:LinkButton ID="lnkVolver" runat="server" PostBackUrl="~/UI-Web/MastersPages/Welcome To Index.aspx" >Volver</asp:LinkButton>
    </div>

    <br />
    <br />
    <br />

</asp:Content>
