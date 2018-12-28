<%@ Page Title="" Language="C#" MasterPageFile="~/UI-Web/MastersPages/IndexUi.Master" AutoEventWireup="true" CodeBehind="ABMHoteles.aspx.cs" Inherits="Interfaces_web.UI_Web.Aministradores.ABMHoteles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 800px;
            height: 600px;
        }
   
        .auto-style3 {
            width: 1108px;
            height: 651px;
            left: 5em;
            right: -5em;
            top: 0;
            bottom: 0;
        }
   
    .auto-style4 {
        margin-bottom: 0px;
    }
   
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoPrincipal" runat="server">
    <div id="Buscador" >   
        <asp:Label ID="lblNombreH" runat="server" Text="Nombre del Hotel:"></asp:Label>
        <asp:TextBox ID="txtBuscar" runat="server" MaxLength="30" style="margin-top: 0px" CssClass="auto-style4"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Button ID="BtnBuscarH" runat="server" Text="Buscar" />
    </div>

    <link href="../App_Themes/Formularios/Formularios.css" rel="stylesheet"  type="text/css"/>

    <div id="TituloH">
        <h2 >ABM HOTELES</h2>
    </div>

    <div id="Formulario" class="auto-style3">

            <table >
                <tr>
                    <td colspan="2" style="height: 99px">
                        <asp:Image ID="imgbox" runat="server" BorderColor="#CCCCCC" BorderStyle="Inset" Height="108px" style="margin-left: 0px; margin-top: 0px;" Width="777px" ImageUrl="../MastersPages/Estilos/imgs/react.png" />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblError" runat="server"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSubir" runat="server"  Text="Subir" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnLimpiar" runat="server" ForeColor="#33CCCC" />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:FileUpload ID="FileUploadIMG" runat="server" Height="26px" Width="703px" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 117px">Nombre:</td>
                    <td style="width: 290px">
                        <asp:TextBox ID="txtNomH" runat="server" MaxLength="50" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 117px">Categoria:</td>
                    <td style="width: 290px">
                        <asp:TextBox ID="txtCategoria" runat="server" Height="16px" MaxLength="5" Width="29px"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:Label ID="Label10" runat="server" Text="Estrellas"></asp:Label>
                        .</td>
                </tr>
                <tr>
                    <td style="width: 117px">Tel:</td>
                    <td style="width: 290px">
                        <asp:TextBox ID="txtTel" runat="server" MaxLength="10" Width="76px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 117px">Fax:</td>
                    <td style="width: 290px">
                        <asp:TextBox ID="txtFax" runat="server" MaxLength="10" Width="76px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 117px">Calle:</td>
                    <td style="width: 290px">
                        <asp:TextBox ID="txtCalle" runat="server" MaxLength="50" Width="163px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 117px">
                        <asp:Label ID="Label7" runat="server" Text="Numero Puerta:"></asp:Label>
                    </td>
                    <td style="width: 290px">
                        <asp:TextBox ID="txtNumPuerta" runat="server" MaxLength="5" Width="27px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 117px">
                        <asp:Label ID="Label8" runat="server" Text="Ciudad"></asp:Label>
                    </td>
                    <td style="width: 290px">
                        <asp:TextBox ID="txtCiudad" runat="server" MaxLength="50" Width="114px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 117px">
                        <asp:Label ID="Label6" runat="server" Text="Picina"></asp:Label>
                    </td>
                    <td style="width: 290px">
                        <asp:CheckBox ID="chkSiPicina" runat="server" Text="Si" />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="chkNoPicina" runat="server" Text="No" Visible="False" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 117px; height: 31px">
                        <asp:Label ID="Label9" runat="server" Text="Acceso a Playa:"></asp:Label>
                    </td>
                    <td style="height: 31px; width: 290px">
                        <asp:CheckBox ID="chkAPSi" runat="server" Text="Si" />
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="chkAPNo" runat="server" Text="No" Visible="False" />
                    &nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 26px" colspan="2" align ="center">
                        &nbsp;<asp:Label ID="lblEstadoHotel" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 117px; height: 30px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnAltaHotel" runat="server" Text="Agregar" />
                    </td>
                    <td style="height: 30px; width: 290px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnModificar" runat="server" Text="Modificar"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnBaja" runat="server" Text="Eliminar"  />
                    </td>
                </tr>
            </table>
        </div>

    <div align="center" id="Volver">
        <asp:LinkButton ID="lnkVolver" runat="server" PostBackUrl="~/UI-Web/MastersPages/Welcome To Index.aspx">Volver</asp:LinkButton>
    </div>

    <br />
    <br />
    <br />
    <br />

</asp:Content>
