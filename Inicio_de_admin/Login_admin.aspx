<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_admin.aspx.cs" Inherits="Administrador_de_Estacionamiento.Inicio_de_admin.Login_admin" %>

<!DOCTYPE html>

<html lang="en" class="no-js">

    <head>

        <meta charset="utf-8">
        <link  rel="icon" href="../img/vertical2.png" type="image/png" sizes="24x24" />
        <title>..:: Inicio de Sesión Administrativo ::..</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- CSS -->
        <link rel="stylesheet" href="../css/mexico.css" />
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="../fullscreen-login/assets/css/reset.css">
        <link rel="stylesheet" href="../fullscreen-login/assets/css/supersized.css">
        <link rel="stylesheet" href="../fullscreen-login/assets/css/style.css">
        <link rel="stylesheet" href="../css/mexico.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
        <style type="text/css">
            .auto-style1 {
                height: 120px;
                padding: 15px 50px;
                color:#ddc9a3;
            }
            .auto-style2 {
                font-size: 18px;
                font-weight: 700;
                text-shadow: 0 1px 3px rgba(0,0,0,.2);
                margin-left: auto;
                margin-right: auto;
                margin-top: 30px;
            }
            .auto-style3 {
                height: 163px;
            }
            .auto-style4 {
                text-align: center;
            }
        </style>
    </head>

    <body style="color: #bc955c; height: 822px;">
        <header style="background:#235b4e">
            
            <div>
            <h1 style="color:#ddc9a3; padding:15px" class="auto-style3"><img src="../img/vertical1.jpg"style="float:right" class="auto-style1"/></h1>
            </div>
                </header>
        
            <div style="font-family:Montserrat; padding:20px 20px; color:crimson">
                <p>
                    <asp:Label ID="lblerror" runat="server"></asp:Label>

                </p>
        </div> 
        <!-- Este DIV es del cuadro de inicio de sesión -->
        <div id="login1" class="page-container">
            <h1 style="color:#bc955c; text-align:center">Inicia Sesión Administrativo</h1>
            <form id="form1" runat="server">
                <!-- DIV Modal -->
         <div class="divs">
            <main class="container">
                <div class="modal fade" id="ventanaModal" tabindex="-1" role="dialog" aria-labelledby="tituloVentana" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header" style="background:#691c32">
                                <h2 id="tituloVentana" style="color:#ddc9a3">¡Aviso!</h2>
                            </div>
                            <div class="modal-body">
                                <div>
                                    <h5>Al iniciar sesión se da un tiempo máximo de 30 min de inactividad, trascurrido este tiempo, se cerrará tu sesión y toda informacion que esté en proceso por corregir, se perderá.<br /></h5>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <asp:Button ID="btnIngresar" runat="server" class="btnmex btn-outline-rojomx" Text="Continuar" OnClick="btnIngresar_Click" Width="110px" UseSubmitBehavior="false" />
                            </div>
                        </div>
                    </div>
                </div>
             </main>
         </div>
                <div class="auto-style4">
                <asp:Label ID="lblResultado" runat="server" ForeColor="Black" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre" ForeColor="Black" CausesValidation="True" ToolTip="Usuario personal"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsuario" Display="Dynamic" ErrorMessage="**Campo Requerido" Font-Bold="True" ForeColor="#235B4E"></asp:RequiredFieldValidator><br />
                <br /><asp:TextBox ID="txtUsuario" runat="server" placeholder="Usuario" ForeColor="Black" CausesValidation="True" ToolTip="Usuario"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtContraseña" Display="Dynamic" ErrorMessage="**Campo Requerido" Font-Bold="True" ForeColor="#235B4E"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtContraseña" runat="server" placeholder="Contraseña" ForeColor="Black" TextMode="Password" ToolTip="Contraseña de usuario"></asp:TextBox>
                    <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContraseña" Display="Dynamic" ErrorMessage="**Campo Requerido" Font-Bold="True" ForeColor="#235B4E"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Button ID="btnAbrir" runat="server" Text="Iniciar Sesión" ForeColor="#DDC9A3" BackColor="#235B4E" BorderColor="#DDC9A3" data-toggle="modal" data-target="#ventanaModal" OnClientClick="return false;" Width="270px"/>
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#DDC9A3" NavigateUrl="~/inicio_de_Usuarios/Login_usuarios.aspx">Soy Usuario</asp:HyperLink>
                <br />
                </div>
            </form>
        </div>
                
            

        <!-- Javascript -->
        <script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
        <script src="../fullscreen-login/assets/js/jquery-1.8.2.min.js"></script>
        <script src="../fullscreen-login/assets/js/supersized.3.2.7.min.js"></script>
        <script src="../fullscreen-login/assets/js/supersized-init.js"></script>
        <script src="../fullscreen-login/assets/js/scripts.js"></script>
        <asp:SqlDataSource ID="SQLusuario" runat="server" ConnectionString="<%$ ConnectionStrings:base de datos %>" ProviderName="<%$ ConnectionStrings:base de datos.ProviderName %>" SelectCommand="SELECT Usuario, Contraseña, Nombre FROM Login_Admin WHERE (Nombre = ?) AND (Usuario = ?) AND (Contraseña = ?)">
            <SelectParameters>
                <asp:Parameter Name="Nombre" />
                <asp:Parameter Name="Usuario" />
                <asp:Parameter Name="Contraseña" />
            </SelectParameters>
        </asp:SqlDataSource>
</body>
</html>
