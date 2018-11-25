<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MPAdministradores.master" AutoEventWireup="true" CodeBehind="ABMHoteles.aspx.cs" Inherits="Interfaces_web.PagesAdministradores.ABMHoteles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContenidoPrincipal" runat="server">

    <div id="Buscador" style="width: 576px; height: 49px;">   
        <asp:Label ID="lblNombreH" runat="server" Text="Nombre del Hotel:"></asp:Label>
        <asp:TextBox ID="txtBuscar" runat="server" MaxLength="30" style="margin-top: 0px"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Button ID="BtnBuscarH" runat="server" Text="Buscar" OnClick="BtnBuscarH_Click" Width="61px"/>
    </div>

    <link href="../App_Themes/Formularios/Formularios.css" rel="stylesheet"  type="text/css"/>

    <div id="Titulo">
        <h2 >ABM HOTELEs</h2>
    </div>

    <div id="Formulario" style="width: 597px; height: 509px">
           
        <div id="Imagen" style="height: 503px; width: 569px"> 

            <table style="width: 101%; height: 99%; border: 1px solid #000000; background-color: #C0C0C0">
                <tr>
                    <td colspan="2" style="height: 99px">
                        <asp:Image ID="imgbox" runat="server" BorderColor="#CCCCCC" BorderStyle="Inset" Height="108px" style="margin-left: 0px; margin-top: 0px;" Width="563px" ImageUrl="~/App_Themes/estilos/img/react.png" />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblError" runat="server"></asp:Label>
                        <br />
                        <asp:Button ID="btnSubir" runat="server"  Text="Subir" OnClick="btnSubir_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnLimpiar" runat="server" ForeColor="#33CCCC" OnClick="btnLimpiar_Click" Text="Clean" />
                        <br />
&nbsp;<asp:FileUpload ID="FileUploadIMG" runat="server" Height="21px" Width="558px" />
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="btnAltaHotel" runat="server" Text="Agregar" OnClick="btnAltaHotel_Click" />
                    </td>
                    <td style="height: 30px; width: 290px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnBaja" runat="server" Text="Eliminar" OnClick="btnBaja_Click" />
                    </td>
                </tr>
            </table>

        </div>

    </div>

    
     
</asp:Content>
