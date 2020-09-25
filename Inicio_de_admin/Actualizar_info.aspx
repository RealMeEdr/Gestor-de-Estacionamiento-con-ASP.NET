<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Actualizar_info.aspx.cs" Inherits="Administrador_de_Estacionamiento.Inicio_de_admin.Actualizar_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>.:: Actualizar ::.</title>
<link  rel="icon" href="../img/vertical2.png" type="image/png" sizes="24x24" />
    <link rel="stylesheet" href="../css/mexico.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <style type="text/css">
        .auto-style1 {
            height: 37px;
        }
        .auto-style4 {
            width: 100%;
            font-size: 16px;
        }
        .auto-style7 {
            height: 37px;
            text-align: center;
        }
        .auto-style9 {
            width: 244px;
        }
        .auto-style11 {
            font-size: small;
        }
        .auto-style12 {
            width: 200px;
            font-size: small;
        }
        .auto-style14 {
            width: 124px;
        }
        .auto-style15 {
            width: 101px;
        }
        .auto-style16 {
            width: 200px;
            font-size: small;
            height: 43px;
        }
        .auto-style17 {
            height: 43px;
        }
        .auto-style18 {
            width: 124px;
            height: 43px;
        }
    </style>
    
</head>
<body style="font-family:Montserrat">
    <form id="form1" runat="server">        
    <header class="header">
        <!-- nav del logo y hora -->
            <nav>
                <asp:Label ID="Label1" runat="server" CssClass="fecha" Font-Bold="True">Hoy es : <%OutPutDay(); %></asp:Label>
                <a href="../Inicio_de_admin/Inicio_Estacionamiento.aspx"><img src="../img/horizontal2.png" height="90px" class="navegador2" style="float:right;" tooltip="Regresa al menú principal"/></a>
            </nav>
            <!-- nav de los links -->
            <nav style="background:#10312b ; text-align:center;" class="menupegajoso">
            <hr class="barra" />
                <asp:Label ID="lblUsuario" runat="server" class="usuario"></asp:Label>
                <a href=" " class="navegador" data-toggle="modal" data-target="#ventanaAyuda">¿Ayuda?</a>
                <a href="Historial.aspx" class="navegador">Historial</a>
                <a href="Actualizar_info.aspx" class="activo">Actualizar Información</a>
                <a href="Agregar Cajón.aspx" class="navegador">Asignar Cajón</a>
                <a href="Eliminar.aspx" class="navegador">Eliminar Cajón</a>
                <asp:Button ID="btnCerrar" runat="server" Text="Cerrar Sesión" class="navegador btnmex" CausesValidation="False" OnClick="btnCerrar_Click" UseSubmitBehavior="False" Height="41px" Width="200px" />
            </nav>
        </header>
            <br />
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
            <h5><b>2.- Los cambios solicitados en la tabla no se realizaron correctamente porque crearían valores duplicados en el índice, clave principal o relación. </b></h5></p>
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
         </div>
        </div>
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
        <!-- div de confirmación -->
        <div class="divs">
        <h3 id="titulo-estacionamiento">Actualizar Información de Servidor(a) Público</h3>
        </div>
        <div class="divs">
            <asp:Label ID="lblResultados" runat="server" CssClass="navegador" BackColor="White" Font-Bold="True" ForeColor="#691C32"></asp:Label>
            <br /><br />
        </div>
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
                                    <h5>Verifique que la información es Correcta y si es así pulse el botón de "Actualizar" para Actualizar la información y de nuevo buscar RFC para verificar que la información haya sido actualizada.<br /></h5>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button class="btnmex btn-outline-rojomx" type="button" data-dismiss="modal">
                                    Cancelar
                                </button>
                        <asp:Button ID="btnActualizar" runat="server" CssClass="btnmex btn-outline-rojomx" Text="Actualizar" OnClick="btnActualizar_Click" UseSubmitBehavior="false" />

                            </div>
                        </div>
                    </div>
                </div>
             </main>
            <br />
            <br />
        </div>
        <div class="divs" style="overflow-y:hidden; overflow-x:auto;">
            <table align="center" cellspacing="3" class="auto-style4" aria-orientation="horizontal">
                <tr>
                    <td class="auto-style12"><strong>RFC :</strong></td>
                    <td colspan="3">
                        <asp:TextBox ID="txtRFC" runat="server" Width="200px" placeholder="Ingrese un RFC a buscar" MaxLength="14" EnableViewState="False"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:Button ID="btnBuscar" runat="server" CssClass="btnsombra btnmex btn-outline-verdemx" OnClick="btnBuscar_Click" Text="Buscar" Font-Bold="True" />
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="**  INGRESE UN RFC" ControlToValidate="txtRFC" Font-Bold="True"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;
                        </td>
                    <td class="auto-style11" colspan="2"><em>**EL RFC NO SE PUEDE MODIFICAR</em></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>LUGAR DE<br />
                        ESTACIONAMIENTO :</strong></td>
                    <td colspan="3">
                        <asp:TextBox ID="txtCAJON" runat="server" Width="230px" placeholder="Lugar de Estacionamiento" MaxLength="5" EnableViewState="False"></asp:TextBox>
                    </td>
                    <td colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>NOMBRE :</strong></td>
                    <td colspan="2">
                        <asp:TextBox ID="txtNOMBRE" runat="server" Width="250px" placeholder="Nombre(s)" MaxLength="50" EnableViewState="False"></asp:TextBox>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>APELLIDOS :</strong></td>
                    <td colspan="4">
                        <asp:TextBox ID="txtA_PATERNO" runat="server" Width="250px" placeholder="Apellido Paterno" MaxLength="50" EnableViewState="False"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtA_MATERNO" runat="server" Width="250px" placeholder="Apellido Materno" MaxLength="50" EnableViewState="False"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>CARGO :</strong></td>
                    <td colspan="4">
                        <asp:TextBox ID="txtCARGO" runat="server" Width="612px" placeholder="Cargo del Servidor Público" MaxLength="120" EnableViewState="False"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>ÁREA :</strong></td>
                    <td colspan="4">
                        <asp:TextBox ID="txtAREA" runat="server" Width="612px" placeholder="Área del Servidor Público" MaxLength="120" EnableViewState="False"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>NIVEL DE<br />
                        ESTACIONAMIENTO :</strong></td>
                    <td colspan="2" class="auto-style17">
                        <asp:TextBox ID="txtNIVEL" runat="server" placeholder="Nivel de Estacionamiento" EnableViewState="False"></asp:TextBox>
                    </td>
                    <td class="auto-style18"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>FECHA DE<br />
                        REGISTRO :</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtFECHA" runat="server" TextMode="Date" placeholder="Fecha de Alta" Width="200px" EnableViewState="False"></asp:TextBox>
                    </td>
                    <td class="auto-style15">
                        &nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>FECHA DE<br />
                        REASIGNACIÓN : </strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtREASIG" runat="server" TextMode="Date" Width="200px" EnableViewState="False"></asp:TextBox>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td colspan="6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>VEHÍCULO Nº 1 :</strong></td>
                    <td colspan="6">
                        <asp:TextBox ID="txtMARCA1" runat="server" placeholder="Marca del Vehículo" EnableViewState="False"></asp:TextBox>
                        <asp:TextBox ID="txtMODELO" runat="server" placeholder="Modelo del Vehículo" MaxLength="50" EnableViewState="False"></asp:TextBox>
                        <asp:TextBox ID="txtAÑO1" runat="server" Width="60px" placeholder="Año" EnableViewState="False"></asp:TextBox>
                        <asp:TextBox ID="txtCOLOR1" runat="server" MaxLength="30" Width="130px" placeholder="Color" EnableViewState="False"></asp:TextBox>
                        <asp:TextBox ID="txtPLACAS1" runat="server" placeholder="Placas del Vehículo" MaxLength="30" EnableViewState="False"></asp:TextBox>
                        <asp:TextBox ID="txtENTIDAD1" runat="server" Width="130px" placeholder="Entidad Placas" EnableViewState="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td colspan="6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>VEHÍCULO Nº 2 :</strong></td>
                    <td colspan="6">
                        <asp:TextBox ID="txtMARCA2" runat="server" EnableViewState="False"></asp:TextBox>
                        <asp:TextBox ID="txtMODELO2" runat="server" MaxLength="50" EnableViewState="False"></asp:TextBox>
                        <asp:TextBox ID="txtAÑO2" runat="server" Width="60px" EnableViewState="False"></asp:TextBox>
                        <asp:TextBox ID="txtCOLOR2" runat="server" MaxLength="30" Width="130px" EnableViewState="False"></asp:TextBox>
                        <asp:TextBox ID="txtPLACAS2" runat="server" MaxLength="30" EnableViewState="False"></asp:TextBox>
                        <asp:TextBox ID="txtENTIDAD2" runat="server" Width="130px" EnableViewState="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td colspan="6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>VEHÍCULO Nº 3 :</strong></td>
                    <td colspan="6">
                        <asp:TextBox ID="txtMODELO3" runat="server" MaxLength="50" EnableViewState="False"></asp:TextBox>
                        <asp:TextBox ID="txtMARCA3" runat="server" EnableViewState="False"></asp:TextBox>
                        <asp:TextBox ID="txtAÑO3" runat="server" Width="60px" EnableViewState="False"></asp:TextBox>
                        <asp:TextBox ID="txtCOLOR3" runat="server" MaxLength="30" Width="130px" EnableViewState="False"></asp:TextBox>
                        <asp:TextBox ID="txtPLACAS3" runat="server" MaxLength="30" EnableViewState="False"></asp:TextBox>
                        <asp:TextBox ID="txtENTIDAD3" runat="server" Width="130px" EnableViewState="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="2">
                        <asp:TextBox ID="txtADMIN1" runat="server" Width="300px" Height="28px"></asp:TextBox>
                    </td>
                    <td class="auto-style7" colspan="3">
                    <asp:Button ID="btnAbrir" runat="server" Text="Actualizar" class="btnsombra btnmex btn-outline-verdemx" data-toggle="modal" data-target="#ventanaModal" UseSubmitBehavior="True" OnClientClick="return false;" Width="90px"/>
                        
                    </td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td></td>
                </tr>
            </table>
        </div>
        <script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
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
        <asp:SqlDataSource ID="SQLactualizar" runat="server" ConnectionString="<%$ ConnectionStrings:base de datos %>" DeleteCommand="DELETE FROM [USUARIOS] WHERE [RFC] = ?" InsertCommand="INSERT INTO [USUARIOS] ([RFC], [CAJON], [NOMBRE], [A_PATERNO], [A_MATERNO], [CARGO], [ÁREA], [NIVEL], [FECHA_DE_INGRESO], [MARCA], [MODELO], [AÑO], [ENTIDAD], [PLACAS], [COLOR], [MARCA2], [MODELO_V2], [AÑO2], [ENTIDAD2], [PLACAS2], [COLOR2], [MARCA3], [MODELO_V3], [AÑO3], [ENTIDAD3], [PLACAS3], [COLOR3]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:base de datos.ProviderName %>" SelectCommand="SELECT NOMBRE, A_PATERNO, A_MATERNO, CARGO, ÁREA, NIVEL, FECHA_DE_INGRESO, MARCA, MODELO, AÑO, ENTIDAD, COLOR, MARCA2, MODELO_V2, AÑO2, ENTIDAD2, COLOR2, MARCA3, MODELO_V3, AÑO3, ENTIDAD3, COLOR3, RFC, CAJON, PLACAS, PLACAS2, PLACAS3 FROM USUARIOS WHERE (RFC = ?) AND (CAJON = ?) AND (PLACAS = ?)" UpdateCommand="UPDATE [USUARIOS] SET [CAJON] = ?, [NOMBRE] = ?, [A_PATERNO] = ?, [A_MATERNO] = ?, [CARGO] = ?, [ÁREA] = ?, [NIVEL] = ?, [FECHA_DE_INGRESO] = ?, [MARCA] = ?, [MODELO] = ?, [AÑO] = ?, [ENTIDAD] = ?, [PLACAS] = ?, [COLOR] = ?, [MARCA2] = ?, [MODELO_V2] = ?, [AÑO2] = ?, [ENTIDAD2] = ?, [PLACAS2] = ?, [COLOR2] = ?, [MARCA3] = ?, [MODELO_V3] = ?, [AÑO3] = ?, [ENTIDAD3] = ?, [PLACAS3] = ?, [COLOR3] = ? WHERE [RFC] = ?">
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
                <asp:Parameter Name="CAJON" />
                <asp:Parameter Name="PLACAS" />
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
        <asp:SqlDataSource ID="SQLHISTORIAL" runat="server" ConnectionString="<%$ ConnectionStrings:base de datos %>" InsertCommand="INSERT INTO Historial(RFC, CAJON, NOMBRE, A_PATERNO, A_MATERNO, CARGO, NIVEL, ÁREA, FECHA_DE_INGRESO, FECHA_DE_REASIGNACIÓN, MARCA, MODELO, AÑO, ENTIDAD, PLACAS, COLOR, MARCA2, MODELO_V2, AÑO2, ENTIDAD2, PLACAS2, COLOR2, MARCA3, MODELO_V3, ENTIDAD3, AÑO3, PLACAS3, COLOR3, ADMIN) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:base de datos.ProviderName %>" SelectCommand="SELECT * FROM [Historial]">
            <InsertParameters>
                <asp:Parameter Name="RFC" />
                <asp:Parameter Name="CAJON" />
                <asp:Parameter Name="NOMBRE" />
                <asp:Parameter Name="A_PATERNO" />
                <asp:Parameter Name="A_MATERNO" />
                <asp:Parameter Name="CARGO" />
                <asp:Parameter Name="NIVEL" />
                <asp:Parameter Name="ÁREA" />
                <asp:Parameter Name="FECHA_DE_INGRESO" />
                <asp:Parameter Name="FECHA_DE_REASIGNACIÓN" />
                <asp:Parameter Name="MARCA" />
                <asp:Parameter Name="MODELO" />
                <asp:Parameter Name="AÑO" />
                <asp:Parameter Name="ENTIDAD" />
                <asp:Parameter Name="PLACAS" />
                <asp:Parameter Name="COLOR" />
                <asp:Parameter Name="MARCA2" />
                <asp:Parameter Name="MODELO_V2" />
                <asp:Parameter Name="AÑO2" />
                <asp:Parameter Name="ENTIDAD2" />
                <asp:Parameter Name="PLACAS2" />
                <asp:Parameter Name="COLOR2" />
                <asp:Parameter Name="MARCA3" />
                <asp:Parameter Name="MODELO_V3" />
                <asp:Parameter Name="ENTIDAD3" />
                <asp:Parameter Name="AÑO3" />
                <asp:Parameter Name="PLACAS3" />
                <asp:Parameter Name="COLOR3" />
                <asp:Parameter Name="ADMIN" />
            </InsertParameters>
        </asp:SqlDataSource>
        <br />
    </form>
    </body>
</html>
