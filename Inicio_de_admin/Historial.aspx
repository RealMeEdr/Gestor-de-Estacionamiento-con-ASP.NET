<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Historial.aspx.cs" Inherits="Administrador_de_Estacionamiento.Inicio_de_admin.Historial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>.:: Estacionamiento ::.</title>
    <link rel="icon" href="../img/vertical2.png" type="image/png" sizes="24x24" />
    <link rel="stylesheet" href="../css/mexico.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
</head>
<body style="font-family:Montserrat">
    <form id="form1" runat="server">
        <header class="header">
            <!-- nav del logo y hora -->
            <nav>
                <asp:Label ID="Fecha" runat="server" Class="fecha" Font-Bold="True">Hoy es : <%OutPutDay(); %></asp:Label>
                <a href="../Inicio_de_admin/Inicio_Estacionamiento.aspx">
                    <img src="../img/horizontal2.png" height="90px" class="navegador2" style="float: right;" tooltip="Regresa al menú principal" /></a>
            </nav>
            <!-- nav de los links -->
            <nav style="background: #10312b; text-align: center;" class="menupegajoso">
                <hr class="barra" />
                <asp:Label ID="lblUsuario" runat="server" class="usuario" Font-Bold="False"></asp:Label>
                <a href=" " class="navegador" data-toggle="modal" data-target="#ventanaModal">¿Ayuda?</a>
                <a href="Historial.aspx" class="activo">Historial</a>
                <a href="Actualizar_info.aspx" class="navegador">Actualizar Información</a>
                <a href="Agregar Cajón.aspx" class="navegador">Asignar Cajón</a>
                <a href="Eliminar.aspx" class="navegador">Eliminar Cajón</a>
                <asp:Button ID="btnCerrar" runat="server" Text="Cerrar Sesión" class="navegador btnmex" CausesValidation="False" Font-Bold="False" OnClick="btnCerrar_Click" UseSubmitBehavior="False" Width="187px" Font-Size="17px" />
            </nav>
        </header>
        <br />
                <!-- DIV Modal -->
                <div class="divs">
            <main class="container">
                <div class="modal fade" id="ventanaModal" tabindex="-1" role="dialog" aria-labelledby="tituloVentana" aria-hidden="true">
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
            indicaciones.</b>
            <br />
            <br />
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
            - Selecciona el SQLBuscador sin dar doble clic.<br />
            - En la parte derecha de Propiedades en SelectQuery da clic en los tres puntitos (...)<br />
            - Dentro del Query define que objeto se debe buscar.<br />
                </div>
             </div>
            <br />
            <p class="divs">Una vez echo esto, indicar al Usuario que cierre y abra la Página.</p><br />
            <h5><b>2.- Los cambios solicitados en la tabla no se realizaron correctamente porque crearían valores duplicados en el índice, clave principal o relación. </h5></b></p>
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
        
    </div>                                </div>
                            </div>
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
        <div class="divs">
            <h3 id="titulo-estacionamiento">Historial de Cajón de Estacionamiento</h3>
        </div>
        <br />
        <div class="divs">
&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="lblResultado" runat="server" Font-Names="Montserrat" ForeColor="#10312B" Font-Bold="True"></asp:Label>
            <br />
            </div>
            <div style="overflow-y:hidden; overflow-x:auto; width:99%; padding:1% " align="center" >
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="RFC" DataSourceID="SQLGRIEDVEW" HorizontalAlign="Center" Width="95%" BorderColor="#235B4E" BorderWidth="5px" CellPadding="4" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="RFC" HeaderText="RFC" ReadOnly="True" SortExpression="RFC" />
                    <asp:BoundField DataField="CAJON" HeaderText="CAJON" SortExpression="CAJON" />
                    <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                    <asp:BoundField DataField="A_PATERNO" HeaderText="A_PATERNO" SortExpression="A_PATERNO" />
                    <asp:BoundField DataField="A_MATERNO" HeaderText="A_MATERNO" SortExpression="A_MATERNO" />
                    <asp:BoundField DataField="CARGO" HeaderText="CARGO" SortExpression="CARGO" />
                    <asp:BoundField DataField="ÁREA" HeaderText="ÁREA" SortExpression="ÁREA" />
                    <asp:BoundField DataField="NIVEL" HeaderText="NIVEL" SortExpression="NIVEL" />
                    <asp:BoundField DataField="FECHA_DE_INGRESO" HeaderText="FECHA_DE_INGRESO" SortExpression="FECHA_DE_INGRESO" />
                    <asp:BoundField DataField="MARCA" HeaderText="MARCA" SortExpression="MARCA" />
                    <asp:BoundField DataField="MODELO" HeaderText="MODELO" SortExpression="MODELO" />
                    <asp:BoundField DataField="AÑO" HeaderText="AÑO" SortExpression="AÑO" />
                    <asp:BoundField DataField="ENTIDAD" HeaderText="ENTIDAD" SortExpression="ENTIDAD" />
                    <asp:BoundField DataField="PLACAS" HeaderText="PLACAS" SortExpression="PLACAS" />
                    <asp:BoundField DataField="COLOR" HeaderText="COLOR" SortExpression="COLOR" Visible="False" />
                    <asp:BoundField DataField="MARCA2" HeaderText="MARCA2" SortExpression="MARCA2" Visible="False" />
                    <asp:BoundField DataField="MODELO_V2" HeaderText="MODELO_V2" SortExpression="MODELO_V2" Visible="False" />
                    <asp:BoundField DataField="AÑO2" HeaderText="AÑO2" SortExpression="AÑO2" Visible="False" />
                    <asp:BoundField DataField="ENTIDAD2" HeaderText="ENTIDAD2" SortExpression="ENTIDAD2" Visible="False" />
                    <asp:BoundField DataField="PLACAS2" HeaderText="PLACAS2" SortExpression="PLACAS2" Visible="False" />
                    <asp:BoundField DataField="COLOR2" HeaderText="COLOR2" SortExpression="COLOR2" Visible="False" />
                    <asp:BoundField DataField="MARCA3" HeaderText="MARCA3" SortExpression="MARCA3" Visible="False" />
                    <asp:BoundField DataField="MODELO_V3" HeaderText="MODELO_V3" SortExpression="MODELO_V3" Visible="False" />
                    <asp:BoundField DataField="AÑO3" HeaderText="AÑO3" SortExpression="AÑO3" Visible="False" />
                    <asp:BoundField DataField="ENTIDAD3" HeaderText="ENTIDAD3" SortExpression="ENTIDAD3" Visible="False" />
                    <asp:BoundField DataField="PLACAS3" HeaderText="PLACAS3" SortExpression="PLACAS3" Visible="False" />
                    <asp:BoundField DataField="COLOR3" HeaderText="COLOR3" SortExpression="COLOR3" Visible="False" />
                    <asp:BoundField DataField="FECHA_DE_REASIGNACIÓN" HeaderText="FECHA_DE_REASIGNACIÓN" SortExpression="FECHA_DE_REASIGNACIÓN" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#235B4E" Font-Bold="True" ForeColor="White" Height="15px" HorizontalAlign="Center" />
                <PagerStyle BackColor="#6F7271" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <br />
        </div>

    <script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
        <asp:SqlDataSource ID="SQLBUSCAR" runat="server" ConnectionString="<%$ ConnectionStrings:base de datos %>" ProviderName="<%$ ConnectionStrings:base de datos.ProviderName %>" SelectCommand="SELECT RFC, NOMBRE, A_PATERNO, A_MATERNO, CARGO, ÁREA, NIVEL, FECHA_DE_INGRESO, [FECHA_DE_REASIGNACIÓN], MARCA, MODELO, AÑO, ENTIDAD, PLACAS, COLOR, MARCA2, MODELO_V2, AÑO2, ENTIDAD2, PLACAS2, COLOR2, MARCA3, MODELO_V3, AÑO3, ENTIDAD3, PLACAS3, COLOR3, ADMIN FROM Historial WHERE (CAJON = ?)">
            <SelectParameters>
                <asp:Parameter Name="CAJON" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SQLGRIEDVEW" runat="server" ConnectionString="<%$ ConnectionStrings:base de datos %>" ProviderName="<%$ ConnectionStrings:base de datos.ProviderName %>" SelectCommand="SELECT * FROM [Historial]">
        </asp:SqlDataSource>
    </form>
</body>
</html>
