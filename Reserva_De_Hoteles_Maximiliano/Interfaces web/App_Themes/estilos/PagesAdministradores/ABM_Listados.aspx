<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Index.Master" AutoEventWireup="true" CodeBehind="ABM_Listados.aspx.cs" Inherits="Interfaces_web.PagesAdministradores.ABM_Listados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        width: 1107px;
        height: 2px;
    }
    .auto-style6 {
        height: 33px;
        width: 348px;
    }
    .auto-style7 {
        width: 1105px;
        height: 1122px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoMenuContextual" runat="server">
    <ul id="MenuContextual">
        <li><a href="../PagesAdministradores/ABM_Listados.aspx">Lista de Hoteles</a></li>
        <li><a href="../PagesAdministradores/ABMHoteles.aspx">Hoteles</a></li>
        <li><a href="../PagesAdministradores/ABMHabitaciones.aspx">Habitaciones</a></li>
        <li><a href="../PagesAdministradores/ConfirmarReservas.aspx">Lista de Reservas</a></li>   
    </ul>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContenidoPrincipal" runat="server">
    
        <h2 style="margin-left: 360px; margin-top: 33px;" class="auto-style6">Listados Hoteles - Habitaciones</h2>
    <div id ="Botnes" class="auto-style5">   

    </div>
    <div align id="center" =" Listado" class="auto-style7"> 
        
        <asp:GridView ID="dgvHoteles" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" OnSelectedIndexChanged="Page_Load" Width="1073px" AutoGenerateColumns="False" Height="268px" style="margin-top: 0px">
            <Columns>
                <asp:CommandField CancelImageUrl="~/App_Themes/estilos/img/icons.png" SelectText="Ver Habitaciones" ShowSelectButton="True" HeaderText="Habitaciones" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Tel" HeaderText="Telefono" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Fax" HeaderText="Fax" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Estrellas" HeaderText="Estrellas" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="Picina" HeaderText="Picina" >
                <FooterStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CheckBoxField>
                <asp:CheckBoxField DataField="AccesoPlaya" HeaderText="Acceso a Playa" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CheckBoxField>
                <asp:BoundField DataField="Calle" HeaderText="Calle" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="NumPuerta" HeaderText="Nº Puerta" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="Foto" HeaderText="Imagen" DataImageUrlFormatString="Foto">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="#66FF99" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
       

        <br />
        <asp:Label align ="center" ID="lblError" runat="server" Text="lblError"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="dgvhabis" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="247px" style="margin-top: 0px" Width="1073px" ForeColor="Black" GridLines="Vertical" OnRowDeleting="dgvhabis_RowDeleting" OnSelectedIndexChanged="Page_Load" SelectedIndex="1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="NumHabit" HeaderText="Numero Habitacion" />
                <asp:BoundField DataField="Piso" HeaderText="Piso" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                <asp:BoundField DataField="Costo" HeaderText="Costo" />
                <asp:ImageField DataImageUrlFormatString="Foto" HeaderText="Imagen Habitacion" DataImageUrlField="Foto">
                </asp:ImageField>
                <asp:CommandField ButtonType="Button" SelectText="Del" ShowDeleteButton="True" />
                <asp:CommandField ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
    </div>

</asp:Content>
