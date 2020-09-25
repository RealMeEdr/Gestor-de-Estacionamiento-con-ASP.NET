<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Corbatin PB.aspx.cs" Inherits="Administrador_de_Estacionamiento.Inicio_de_admin.Corbatin_PB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link  rel="icon" href="../img/vertical2.png" type="image/png" sizes="24x24" />
    <link rel="stylesheet" href="../css/mexico.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    
    <title>..:: Corbatín PB ::..</title>
    <style type="text/css">
        .auto-style1 {
            width: 1530px;
            height: 1183px;
        }
        .auto-style2 {
            width: 40%;
            height: 23.7cm;
        }
    </style>
</head>
<body style="height: 1293px">
    <form id="form1" runat="server">
        <div class="auto-style1 imagen-corbatin">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/corbatin.png" />
            <img src="../img/corbatin.png" class="auto-style2" />&nbsp;<img src="../img/corbatin.png" class="auto-style2" />

        </div>
    </form>
</body>
</html>
