<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Eliminar.aspx.cs" Inherits="Administrador_de_Estacionamiento.Inicio_de_admin.Eliminar" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>.:: Eliminar ::.</title>
    <link rel="icon" href="../img/vertical2.png" type="image/png" sizes="24x24" />
    <link rel="stylesheet" href="../css/mexico.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <!-- nav del logo y hora -->
            <nav>
                <asp:Label ID="Fecha" runat="server" Class="fecha">Hoy es : <%OutPutDay(); %></asp:Label>
                <a href="../Inicio_de_admin/Inicio_Estacionamiento.aspx">
                    <img src="../img/horizontal2.png" height="90px" class="navegador2" style="float: right;" tooltip="Regresa al menú principal" /></a>
            </nav>
            <!-- nav de los links -->
            <nav style="background: #10312b; text-align: center;" class="menupegajoso">
                <hr class="barra" />
                <asp:Label ID="lblUsuario" runat="server" class="usuario" Font-Bold="False"></asp:Label>
                <a href=" " class="navegador" data-toggle="modal" data-target="#ventanaAyuda">¿Ayuda?</a>
                <a href="Historial.aspx" class="navegador">Historial</a>
                <a href="Actualizar_info.aspx" class="navegador">Actualizar Información</a>
                <a href="Agregar Cajón.aspx" class="navegador">Asignar Cajón</a>
                <a href="Eliminar.aspx" class="activo">Eliminar Cajón</a>
                <asp:Button ID="btnCerrar" runat="server" Text="Cerrar Sesión" class="navegador btnmex" CausesValidation="False" Font-Bold="False" OnClick="btnCerrar_Click" UseSubmitBehavior="False" Width="187px" />
            </nav>
        </header>
        <!-- DIV Modal -->
                <div class="divs">
            <main class="container">
                <div class="modal fade" id="ventanaAyuda" tabindex="-1" role="dialog" aria-labelledby="tituloVentana" aria-hidden="true">
                    <div class="modal-dialog modal-xl modal-dialog-scrollable" role="document">
                        <div class="modal-content">
                            <div class="modal-header" style="background:#691c32">
                                <h2 id="tituloVentana" style="color:#ddc9a3">¿Necesitas Ayuda?</h2>
                            </div>
                            <div class="modal-body">
                                <div>
<div class="divs" align="center">
         <h3 align="center">
             ¿Tuviste un problema durante tu solicitud?
         </h3>
         <div align="center">
        <img src="../img/lo siento.gif" width="20%" />
             </div>
     </div>
    <br />
    <br />
    <div class="divs">
        <p><b>
            Identifica el mensaje que te aparece en la pantalla y sigue las
            indicaciones.</b></p>
            <br />
            <br />
        <!--Problema 1 -->
            <h5><b>1.- Referencia a objeto no establecida como instancia de un objeto :</b></h5>
            <br />
             <div class="divs">
            <b>Solución :</b> No se ha declarado dentro de el SQLDataSource que objeto se debe buscar, 
            es importante definirlo para que se pueda realizar la busqueda.
            <br />
            Instrucciones para el personal correspondiente : 
            <br />
                <div class="divs">
            - Ingresar al programa.<br />
            - Selecciona el SQLDataSource sin dar doble clic.<br />
            - En la parte derecha de Propiedades en SelectQuery da clic en los tres puntitos (...)<br />
            - Dentro del Query define que objeto se debe buscar.<br />
                </div>
             </div>
            <br />
            <p class="divs">Una vez echo esto, indicar al Usuario que cierre y abra la Página.</p><br />
            
        <h5><b>2.- Los cambios solicitados en la tabla no se realizaron correctamente porque crearían valores duplicados en el índice, clave principal o relación. </b></h5>
            <div class="divs">
            <b>Solución :</b>Está intentando duplicar un dato que ya está registrado en otro usuario, como puede ser : PLACAS V1, V2 ó V3, RFC y/ó CAJÓN. Verifique
                que este dato (ya sea cualquiera mencionado anteriormente) sea correcto.
             </div>
         <p class="divs">
                <h5><b>3.- El motor de base de datos Microsoft Jet no puede encontrar la tabla o consulta de entrada '"nombre de tabla"'. Asegúrese de que existe y que su nombre está escrito correctamente.</b></h5>
            </p>
        <div class="divs">
            <b>Solución :</b>Dentro del SqlDataSource debe referencia que tabla es la que está intentando mandar llamar.
             </div>
            <br />    
    </div></div></div>
                            <div class="modal-footer">
                                <button class="btnmex btn-outline-rojomx" type="button" data-dismiss="modal">
                                    Aceptar
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
             </main>
            <br />
            <br />
        </div>
        <br />
        <div class="divs">
            <h3 id="titulo-estacionamiento">Eliminar Servidor(a) Público</h3>
        </div>
        <br />
        <div class="divs">
            <asp:TextBox ID="txtBuscador" runat="server" placeholder="Busqueda de RFC" Width="200px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnBuscar" runat="server" CssClass="btnsombra btnmex btn-outline-verdemx" Text="Buscar" OnClick="btnBuscar_Click1" Width="120px" />
            &nbsp;
            <asp:Button ID="btnAbrir" runat="server" Text="Eliminar" class="btnsombra btnmex btn-outline-verdemx" data-toggle="modal" data-target="#ventanaModal" UseSubmitBehavior="False" OnClientClick="return false;" Width="120px" />
        </div>
        <div class="divs">
            <main class="container">
                <div class="modal fade" id="ventanaModal" tabindex="-1" role="dialog" aria-labelledby="tituloVentana" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header" style="background:#691c32">
                                <h2 id="tituloVentana" style="color:#ddc9a3">¡Advertencia!</h2>
                            </div>
                            <div class="modal-body">
                                <div>
                                    <h5>¿Está seguro de Eliminar este usuario?<br />
                                        toda su información será borrada y ya no se podrá recuperar.
                                    </h5>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button class="btnmex btn-negro" type="button" data-dismiss="modal">
                                    Cancelar
                                </button>
                               <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btnmex btn-negro" OnClick="btnEliminar_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBuscador" Display="Dynamic" ErrorMessage="** Necesario para buscar" ForeColor="#9F2241"></asp:RequiredFieldValidator>
            </main>
            <br />
            <br />
            <asp:Label ID="lblResultado" runat="server" Font-Bold="True" Font-Names="Montserrat" ForeColor="#691C32"></asp:Label>
        </div>

    <%-- ESTOS SON TUS SCRIPTS DE JAVASCRIPT O JQUERY, EL PRIMERO SIEMPRE DEBE SER JQUERY Y DEBAJO DE EL TDOS LOS DEMAS QUE VAYAS A UTILIZAR --%><%-- CUALQUIER PLUGIN DEBE IR DESPUES DE JQUERYU --%>
    <script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
        <%-- AL FINAL DE TODOS LOS SCRIPTS QUE CARGAS POR PAGINA DEBE IR EL CODIGO DE JAVASCRIPT QUE VAYAS A UTILIZAR DENTOR DE LOS TAG <SCRIPT> --%>
        <!-- AQUI YA PUEDES UTILIZAR CUALQUIER CODIGO DE JAVASCRIPT O JQUERY QUE NECESITES, DE LO CONTRARIO MARCARA ERROR -->
        <asp:SqlDataSource ID="SQLBUSCAR" runat="server" ConnectionString="<%$ ConnectionStrings:base de datos %>" DeleteCommand="DELETE FROM [USUARIOS] WHERE [RFC] = ?" InsertCommand="INSERT INTO [USUARIOS] ([RFC], [CAJON], [NOMBRE], [A_PATERNO], [A_MATERNO], [CARGO], [ÁREA], [NIVEL], [FECHA_DE_INGRESO], [MARCA], [MODELO], [AÑO], [ENTIDAD], [PLACAS], [COLOR], [MARCA2], [MODELO_V2], [AÑO2], [ENTIDAD2], [PLACAS2], [COLOR2], [MARCA3], [MODELO_V3], [AÑO3], [ENTIDAD3], [PLACAS3], [COLOR3]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:base de datos.ProviderName %>" SelectCommand="SELECT CAJON, NOMBRE, A_PATERNO, A_MATERNO, CARGO, ÁREA, NIVEL, FECHA_DE_INGRESO, MARCA, MODELO, AÑO, ENTIDAD, PLACAS, COLOR, MARCA2, MODELO_V2, AÑO2, ENTIDAD2, PLACAS2, COLOR2, MARCA3, MODELO_V3, AÑO3, ENTIDAD3, PLACAS3, COLOR3 FROM USUARIOS WHERE (RFC = ?)" UpdateCommand="UPDATE [USUARIOS] SET [CAJON] = ?, [NOMBRE] = ?, [A_PATERNO] = ?, [A_MATERNO] = ?, [CARGO] = ?, [ÁREA] = ?, [NIVEL] = ?, [FECHA_DE_INGRESO] = ?, [MARCA] = ?, [MODELO] = ?, [AÑO] = ?, [ENTIDAD] = ?, [PLACAS] = ?, [COLOR] = ?, [MARCA2] = ?, [MODELO_V2] = ?, [AÑO2] = ?, [ENTIDAD2] = ?, [PLACAS2] = ?, [COLOR2] = ?, [MARCA3] = ?, [MODELO_V3] = ?, [AÑO3] = ?, [ENTIDAD3] = ?, [PLACAS3] = ?, [COLOR3] = ? WHERE [RFC] = ?">
            <DeleteParameters>
                <asp:Parameter Name="RFC" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RFC" Type="String" />
                <asp:Parameter Name="CAJON" Type="String" />
                <asp:Parameter Name="NOMBRE" Type="String" />
                <asp:Parameter Name="A_PATERNO" Type="String" />
                <asp:Parameter Name="A_MATERNO" Type="String" />
                <asp:Parameter Name="CARGO" Type="String" />
                <asp:Parameter Name="ÁREA" Type="String" />
                <asp:Parameter Name="NIVEL" Type="String" />
                <asp:Parameter Name="FECHA_DE_INGRESO" Type="String" />
                <asp:Parameter Name="MARCA" Type="String" />
                <asp:Parameter Name="MODELO" Type="String" />
                <asp:Parameter Name="AÑO" Type="String" />
                <asp:Parameter Name="ENTIDAD" Type="String" />
                <asp:Parameter Name="PLACAS" Type="String" />
                <asp:Parameter Name="COLOR" Type="String" />
                <asp:Parameter Name="MARCA2" Type="String" />
                <asp:Parameter Name="MODELO_V2" Type="String" />
                <asp:Parameter Name="AÑO2" Type="String" />
                <asp:Parameter Name="ENTIDAD2" Type="String" />
                <asp:Parameter Name="PLACAS2" Type="String" />
                <asp:Parameter Name="COLOR2" Type="String" />
                <asp:Parameter Name="MARCA3" Type="String" />
                <asp:Parameter Name="MODELO_V3" Type="String" />
                <asp:Parameter Name="AÑO3" Type="String" />
                <asp:Parameter Name="ENTIDAD3" Type="String" />
                <asp:Parameter Name="PLACAS3" Type="String" />
                <asp:Parameter Name="COLOR3" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter Name="RFC" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="CAJON" Type="String" />
                <asp:Parameter Name="NOMBRE" Type="String" />
                <asp:Parameter Name="A_PATERNO" Type="String" />
                <asp:Parameter Name="A_MATERNO" Type="String" />
                <asp:Parameter Name="CARGO" Type="String" />
                <asp:Parameter Name="ÁREA" Type="String" />
                <asp:Parameter Name="NIVEL" Type="String" />
                <asp:Parameter Name="FECHA_DE_INGRESO" Type="String" />
                <asp:Parameter Name="MARCA" Type="String" />
                <asp:Parameter Name="MODELO" Type="String" />
                <asp:Parameter Name="AÑO" Type="String" />
                <asp:Parameter Name="ENTIDAD" Type="String" />
                <asp:Parameter Name="PLACAS" Type="String" />
                <asp:Parameter Name="COLOR" Type="String" />
                <asp:Parameter Name="MARCA2" Type="String" />
                <asp:Parameter Name="MODELO_V2" Type="String" />
                <asp:Parameter Name="AÑO2" Type="String" />
                <asp:Parameter Name="ENTIDAD2" Type="String" />
                <asp:Parameter Name="PLACAS2" Type="String" />
                <asp:Parameter Name="COLOR2" Type="String" />
                <asp:Parameter Name="MARCA3" Type="String" />
                <asp:Parameter Name="MODELO_V3" Type="String" />
                <asp:Parameter Name="AÑO3" Type="String" />
                <asp:Parameter Name="ENTIDAD3" Type="String" />
                <asp:Parameter Name="PLACAS3" Type="String" />
                <asp:Parameter Name="COLOR3" Type="String" />
                <asp:Parameter Name="RFC" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
    

    </body>
</html>

