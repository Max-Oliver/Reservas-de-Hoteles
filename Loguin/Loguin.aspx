<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loguin.aspx.cs" Inherits="Interfaces_web._default" %>

<!DOCTYPE html>

<html class ="bg-black" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Acceso al Sistema de Hoteles</title>

    <link href ="Estilos/css" rel="stylesheet" type="text/css" />
    <link href ="fonts/fontawesome-free-5.3.1-web"  rel="stylesheet" type="text/css"  />
   <link href= "css/AdminLTE.css" rel="stylesheet" type="text/css"/>
       
    
    </head>
<body class="bg-black">    
    <div class="form-box" id="loguin-box">
        <div class ="header">Iniciar Session </div>
        <form id="Loguin" runat="server">
            <div class="body bg-gray">
                <div class="form-group">
                    <asp:TextBox id="txtUsuario" runat="server" CssClass="form-control" placeholder ="Ingrese Usuario" Height="19px" Width="301px"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-Control" placeholder="Ingrese Clave" Height="19px" Width="303px"></asp:TextBox>
                </div>
            </div>
            <div class="footer">
                <asp:Button ID="btnIngresar" runat="server" Text="Iniciar Session" CssClass="btn bg-olive btn-block " OnClick="btnIngresar_Click" Width="311px" Height="29px"></asp:Button >
            </div>
           
        </form>

     </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" type="text/javascript"></script>

</body>
</html>
