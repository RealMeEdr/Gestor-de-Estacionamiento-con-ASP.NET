<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agregar Cajón.aspx.cs" Inherits="Administrador_de_Estacionamiento.Inicio_de_admin.Agregar_Cajón" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>.:: Asignación ::.</title>
    <link  rel="icon" href="../img/vertical2.png" type="image/png" sizes="24x24" />
    <link rel="stylesheet" href="../css/mexico.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <style type="text/css">
        .auto-style1 {
            height: 37px;
        }
        .auto-style2 {
            width: 291px;
        }
        .auto-style3 {
            height: 37px;
            width: 291px;
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
            width: 207px;
        }
        .auto-style10 {
            height: 37px;
            width: 207px;
        }
        .auto-style11 {
            width: 99px;
        }
        .auto-style12 {
            width: 99px;
            font-weight: bold;
            text-align: center;
        }
        .auto-style13 {
            width: 99px;
            text-align: center;
        }
        </style>
    
</head>
<body style="font-family:Montserrat">
    <form id="form1" runat="server">        
    <header class="header">
        <!-- nav del logo y hora -->
            <nav>
                <asp:Label ID="Label1" runat="server" class="fecha">Hoy es : <%OutPutDay(); %></asp:Label>
                <a href="../Inicio_de_admin/Inicio_Estacionamiento.aspx"><img src="../img/horizontal2.png" height="90px" class="navegador2" style="float:right;" tooltip="Regresa al menú principal"/></a>
            </nav>
            <!-- nav de los links -->
            <nav style="background:#10312b ; text-align:center;" class="menupegajoso">
            <hr class="barra" />
                <asp:Label ID="lblUsuario" runat="server" class="usuario"></asp:Label>
                <a href=" " class="navegador" data-toggle="modal" data-target="#ventanaAyuda">¿Ayuda?</a>
                <a href="Historial.aspx" class="navegador">Historial</a>
                <a href="Actualizar_info.aspx" class="navegador">Actualizar Información</a>
                <a href="Agregar Cajón.aspx" class="activo">Asignar Cajón</a>
                <a href="Eliminar.aspx" class="navegador">Eliminar Cajón</a>
                <asp:Button ID="btnCerrar" runat="server" Text="Cerrar Sesión" class="navegador btnmex" CausesValidation="False" OnClick="btnCerrar_Click" UseSubmitBehavior="False" />
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
            <br />
        <div class="divs">
        <h3 id="titulo-estacionamiento">Asignar Cajón a Servidor Público</h3>
        </div>
        <br />
        <div class="divs" style="text-align:right">
            &nbsp;<asp:Button ID="btnPlantabaja" runat="server" Text="Corbatín PB" CssClass="btnmex btn-outline-verdemx" UseSubmitBehavior="False" CausesValidation="False" PostBackUrl="~/Inicio_de_admin/Corbatin PB.aspx" />
        &nbsp;
            <asp:Button ID="Button1" runat="server" CssClass="btnmex btn-outline-verdemx" Text="Corbatín E2 S" UseSubmitBehavior="False" CausesValidation="False" />
&nbsp;
            <asp:Button ID="Button2" runat="server" CssClass="btnmex btn-outline-verdemx" Text="Corbatín S" UseSubmitBehavior="False" CausesValidation="False" />
        </div>
        <br />
        <div class="divs">
            <asp:Label ID="lblResultados" runat="server" BackColor="White" Font-Bold="True" ForeColor="#9F2241"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <p style="font-size:16px; color:#691C32"><b>*Cada campo con asterisco es necesario para poder hacer el registro.</b></p>
        </div>
        
            <!-- Div del modal -->
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
                                    <h5>Verifique que la información es Correcta y si es así pulse el botón de "Agregar" para añadir a un nuevo Ocupante de Estacionamiento.<br /></h5>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button class="btnmex btn-outline-rojomx" type="button" data-dismiss="modal">
                                    Cancelar
                                </button>
                                <asp:Button ID="btnAgregar" runat="server" CssClass="btnmex btn-outline-rojomx" OnClick="btnAgregar_Click" Text="Agregar" UseSubmitBehavior="False"/>
                            </div>
                        </div>
                    </div>
                </div>
             </main>
        </div>
        <div class="divs">
            <table align="center" cellspacing="3" class="auto-style4" aria-orientation="horizontal" style="overflow-y:hidden; overflow-x:auto;">
                <tr>
                    <td class="auto-style2"><strong>*RFC :</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtRFC" runat="server" Width="190px" placeholder="RFC" MaxLength="14" EnableTheming="False" EnableViewState="False" ViewStateMode="Disabled"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRFC" Display="Dynamic" ErrorMessage="**" Font-Bold="True" ForeColor="#691C32"></asp:RequiredFieldValidator>
                    </td>
                    <td colspan="3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong></strong></td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>*LUGAR DE<br />
                        ESTACIONAMIENTO :</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtCAJON" runat="server" Width="200px" placeholder="Nº de Estacionamiento" MaxLength="5"></asp:TextBox>
                    </td>
                    <td colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtCAJON" Display="Dynamic" ErrorMessage="**" Font-Bold="True" ForeColor="#691C32"></asp:RequiredFieldValidator>
                        <asp:Button runat="server" CssClass="btnsombra btnmex btn-outline-verdemx" Font-Bold="True" OnClick="Button1_Click" Text="Buscar disponibilidad" CausesValidation="False" Height="29px" UseSubmitBehavior="True" />
                    </td>
                    <td colspan="3">
                        <asp:Label ID="lblAsignado" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong></strong></td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>*NOMBRE :</strong></td>
                    <td colspan="2">
                        <asp:TextBox ID="txtNOMBRE" runat="server" Width="250px" placeholder="Nombre(s)" MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtNOMBRE" Display="Dynamic" ErrorMessage="**" Font-Bold="True" ForeColor="#691C32"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong></strong></td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>*APELLIDOS :</strong></td>
                    <td colspan="4">
                        <asp:TextBox ID="txtA_PATERNO" runat="server" Width="250px" placeholder="Apellido Paterno" MaxLength="50"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtA_MATERNO" runat="server" Width="250px" placeholder="Apellido Materno" MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtA_PATERNO" Display="Dynamic" ErrorMessage="**" Font-Bold="True" ForeColor="#691C32"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong></strong></td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>*CARGO :</strong></td>
                    <td colspan="4">
                        <asp:TextBox ID="txtCARGO" runat="server" Width="612px" placeholder="Cargo del Servidor Público" MaxLength="120"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtCARGO" Display="Dynamic" ErrorMessage="**" Font-Bold="True" ForeColor="#691C32"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong></strong></td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>*ÁREA :</strong></td>
                    <td colspan="4">
                        <asp:TextBox ID="txtAREA" runat="server" Width="612px" placeholder="Área del Servidor Público" MaxLength="120"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtAREA" Display="Dynamic" ErrorMessage="**" Font-Bold="True" ForeColor="#691C32"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong></strong></td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>*NIVE DE<br />
                        ESTACIONAMIENTO :</strong></td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="DPNIVEL" runat="server" Width="200px" placeholder="Nivel" Height="30px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>PLANTA BAJA</asp:ListItem>
                            <asp:ListItem>SÓTANO</asp:ListItem>
                            <asp:ListItem>E2 SÓTANO</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="DPNIVEL" Display="Dynamic" ErrorMessage="**" Font-Bold="True" ForeColor="#691C32"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong></strong></td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>*FECHA DE<br />
                        REGISTRO :</strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtFECHA" runat="server" TextMode="Date" placeholder="Fecha de Alta" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="txtFECHA" Display="Dynamic" ErrorMessage="**" Font-Bold="True" ForeColor="#691C32"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong></strong></td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong></strong></td>
                    <td class="auto-style9">**MARCA<asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="DPMARCA1" Display="Dynamic" ErrorMessage="**" Font-Bold="True" ForeColor="#691C32"></asp:RequiredFieldValidator>
                    </td>
                    <td>**MODELO<asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="txtMODELO" Display="Dynamic" ErrorMessage="**" Font-Bold="True" ForeColor="#691C32"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style11">**AÑO<asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="DPAÑO1" Display="Dynamic" ErrorMessage="**" Font-Bold="True" ForeColor="#691C32"></asp:RequiredFieldValidator>
                    </td>
                    <td>**COLOR<asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="txtCOLOR1" Display="Dynamic" ErrorMessage="**" Font-Bold="True" ForeColor="#691C32"></asp:RequiredFieldValidator>
                    </td>
                    <td>**PLACAS<asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="txtPLACAS1" Display="Dynamic" ErrorMessage="**" Font-Bold="True" ForeColor="#691C32"></asp:RequiredFieldValidator>
                    </td>
                    <td>ENTIDAD
                        <br />
                        DE PLACAS</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>VEHÍCULO Nº 1 :</strong></td>
                    <td class="auto-style9"><b>
                        <asp:DropDownList ID="DPMARCA1" runat="server" ToolTip="Marca del vehículo " placeholder="Marca del Vehículo" Width="95%" Height="29px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>ABARTH</asp:ListItem>
                            <asp:ListItem>ALFA ROMEO</asp:ListItem>
                            <asp:ListItem>ASTON MARTIN</asp:ListItem>
                            <asp:ListItem>AUDI</asp:ListItem>
                            <asp:ListItem>BENTLY</asp:ListItem>
                            <asp:ListItem>BMW</asp:ListItem>
                            <asp:ListItem>CADILLAC</asp:ListItem>
                            <asp:ListItem>CATERHAM</asp:ListItem>
                            <asp:ListItem>CHEVROLET</asp:ListItem>
                            <asp:ListItem>CITROEN</asp:ListItem>
                            <asp:ListItem>DACIA</asp:ListItem>
                            <asp:ListItem>FERRARI</asp:ListItem>
                            <asp:ListItem>FIAT</asp:ListItem>
                            <asp:ListItem>FORD</asp:ListItem>
                            <asp:ListItem>HONDA</asp:ListItem>
                            <asp:ListItem>INFINITI</asp:ListItem>
                            <asp:ListItem>ISUZU</asp:ListItem>
                            <asp:ListItem>IVECO</asp:ListItem>
                            <asp:ListItem>JAGUAR</asp:ListItem>
                            <asp:ListItem>JEEP</asp:ListItem>
                            <asp:ListItem>KIA</asp:ListItem>
                            <asp:ListItem>KTM</asp:ListItem>
                            <asp:ListItem>LADA</asp:ListItem>
                            <asp:ListItem>LAMBORGHINI</asp:ListItem>
                            <asp:ListItem>LANCIA</asp:ListItem>
                            <asp:ListItem>LAND ROVER</asp:ListItem>
                            <asp:ListItem>LEXUS</asp:ListItem>
                            <asp:ListItem>LOTUS</asp:ListItem>
                            <asp:ListItem>MASERATI</asp:ListItem>
                            <asp:ListItem>MAZDA</asp:ListItem>
                            <asp:ListItem>MERCEDES-BENZ</asp:ListItem>
                            <asp:ListItem>MINI</asp:ListItem>
                            <asp:ListItem>MITSUBISHI</asp:ListItem>
                            <asp:ListItem>MORGAN</asp:ListItem>
                            <asp:ListItem>NISSAN</asp:ListItem>
                            <asp:ListItem>OPEL</asp:ListItem>
                            <asp:ListItem>PEUGEOT</asp:ListItem>
                            <asp:ListItem>PIAGGIO</asp:ListItem>
                            <asp:ListItem>PORSHE</asp:ListItem>
                            <asp:ListItem>RENAULT</asp:ListItem>
                            <asp:ListItem>ROLL-ROYCE</asp:ListItem>
                            <asp:ListItem>SEAT</asp:ListItem>
                            <asp:ListItem>SKODA</asp:ListItem>
                            <asp:ListItem>SMART</asp:ListItem>
                            <asp:ListItem>SSANGYONG</asp:ListItem>
                            <asp:ListItem>SUBARU</asp:ListItem>
                            <asp:ListItem>SUZUKI</asp:ListItem>
                            <asp:ListItem>TATA</asp:ListItem>
                            <asp:ListItem>TESLA</asp:ListItem>
                            <asp:ListItem>TOYOTA</asp:ListItem>
                            <asp:ListItem>VOLKSWAGEN</asp:ListItem>
                            <asp:ListItem>VOLVO</asp:ListItem>
                            <asp:ListItem>ALPHINE</asp:ListItem>
                            <asp:ListItem>AMERICAN MOTORS</asp:ListItem>
                            <asp:ListItem>ASIA MOTORS</asp:ListItem>
                            <asp:ListItem>AUSTIN</asp:ListItem>
                            <asp:ListItem>DAEWOOD</asp:ListItem>
                            <asp:ListItem>DITOMASO</asp:ListItem>
                            <asp:ListItem>DEVON MOTORS</asp:ListItem>
                            <asp:ListItem>GUMPERT</asp:ListItem>
                            <asp:ListItem>HUMMER</asp:ListItem>
                            <asp:ListItem>INVICTA</asp:ListItem>
                            <asp:ListItem>MARCOS</asp:ListItem>
                            <asp:ListItem>MAYBACH</asp:ListItem>
                            <asp:ListItem>MORRIS MOTORS</asp:ListItem>
                            <asp:ListItem>PLYMOUTH</asp:ListItem>
                            <asp:ListItem>OLDSMOBILE</asp:ListItem>
                            <asp:ListItem>PONTIAC</asp:ListItem>
                            <asp:ListItem>ROVER</asp:ListItem>
                            <asp:ListItem>SAAB</asp:ListItem>
                            <asp:ListItem>SATURN</asp:ListItem>
                            <asp:ListItem>SPYKER</asp:ListItem>
                            <asp:ListItem>HYUNDAI</asp:ListItem>
                            <asp:ListItem>CHRYSLER</asp:ListItem>
                            <asp:ListItem>DODGE</asp:ListItem>
                            <asp:ListItem>LINCOLN</asp:ListItem>
                            <asp:ListItem>N/A</asp:ListItem>
                        </asp:DropDownList>
                        </b></td>
                    <td>
                        <asp:TextBox ID="txtMODELO" runat="server" placeholder="Modelo del Vehículo" MaxLength="50" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="DPAÑO1" runat="server" placeholder="Año" Width="100px" Height="29px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>1950</asp:ListItem>
                            <asp:ListItem>1951</asp:ListItem>
                            <asp:ListItem>1952</asp:ListItem>
                            <asp:ListItem>1953</asp:ListItem>
                            <asp:ListItem>1954</asp:ListItem>
                            <asp:ListItem>1955</asp:ListItem>
                            <asp:ListItem>1956</asp:ListItem>
                            <asp:ListItem>1957</asp:ListItem>
                            <asp:ListItem>1958</asp:ListItem>
                            <asp:ListItem>1959</asp:ListItem>
                            <asp:ListItem>1960</asp:ListItem>
                            <asp:ListItem>1961</asp:ListItem>
                            <asp:ListItem>1962</asp:ListItem>
                            <asp:ListItem>1963</asp:ListItem>
                            <asp:ListItem>1964</asp:ListItem>
                            <asp:ListItem>1965</asp:ListItem>
                            <asp:ListItem>1966</asp:ListItem>
                            <asp:ListItem>1967</asp:ListItem>
                            <asp:ListItem>1964</asp:ListItem>
                            <asp:ListItem>1965</asp:ListItem>
                            <asp:ListItem>1964</asp:ListItem>
                            <asp:ListItem>1965</asp:ListItem>
                            <asp:ListItem>1966</asp:ListItem>
                            <asp:ListItem>1967</asp:ListItem>
                            <asp:ListItem>1968</asp:ListItem>
                            <asp:ListItem>1969</asp:ListItem>
                            <asp:ListItem>1970</asp:ListItem>
                            <asp:ListItem>1971</asp:ListItem>
                            <asp:ListItem>1972</asp:ListItem>
                            <asp:ListItem>1973</asp:ListItem>
                            <asp:ListItem>1974</asp:ListItem>
                            <asp:ListItem>1975</asp:ListItem>
                            <asp:ListItem>1976</asp:ListItem>
                            <asp:ListItem>1977</asp:ListItem>
                            <asp:ListItem>1978</asp:ListItem>
                            <asp:ListItem>1979</asp:ListItem>
                            <asp:ListItem>1980</asp:ListItem>
                            <asp:ListItem>1981</asp:ListItem>
                            <asp:ListItem>1982</asp:ListItem>
                            <asp:ListItem>1983</asp:ListItem>
                            <asp:ListItem>1984</asp:ListItem>
                            <asp:ListItem>1985</asp:ListItem>
                            <asp:ListItem>1986</asp:ListItem>
                            <asp:ListItem>1987</asp:ListItem>
                            <asp:ListItem>1988</asp:ListItem>
                            <asp:ListItem>1989</asp:ListItem>
                            <asp:ListItem>1990</asp:ListItem>
                            <asp:ListItem>1991</asp:ListItem>
                            <asp:ListItem>1992</asp:ListItem>
                            <asp:ListItem>1993</asp:ListItem>
                            <asp:ListItem>1994</asp:ListItem>
                            <asp:ListItem>1995</asp:ListItem>
                            <asp:ListItem>1996</asp:ListItem>
                            <asp:ListItem>1997</asp:ListItem>
                            <asp:ListItem>1998</asp:ListItem>
                            <asp:ListItem>1999</asp:ListItem>
                            <asp:ListItem>2000</asp:ListItem>
                            <asp:ListItem>2001</asp:ListItem>
                            <asp:ListItem>2002</asp:ListItem>
                            <asp:ListItem>2003</asp:ListItem>
                            <asp:ListItem>2004</asp:ListItem>
                            <asp:ListItem>2005</asp:ListItem>
                            <asp:ListItem>2006</asp:ListItem>
                            <asp:ListItem>2007</asp:ListItem>
                            <asp:ListItem>2007</asp:ListItem>
                            <asp:ListItem>2008</asp:ListItem>
                            <asp:ListItem>2009</asp:ListItem>
                            <asp:ListItem>2009</asp:ListItem>
                            <asp:ListItem>2010</asp:ListItem>
                            <asp:ListItem>2011</asp:ListItem>
                            <asp:ListItem>2012</asp:ListItem>
                            <asp:ListItem>2013</asp:ListItem>
                            <asp:ListItem>2014</asp:ListItem>
                            <asp:ListItem>2015</asp:ListItem>
                            <asp:ListItem>2016</asp:ListItem>
                            <asp:ListItem>2017</asp:ListItem>
                            <asp:ListItem>2018</asp:ListItem>
                            <asp:ListItem>2019</asp:ListItem>
                            <asp:ListItem>2020</asp:ListItem>
                            <asp:ListItem>N/A</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                    <td>
                        <asp:TextBox ID="txtCOLOR1" runat="server" MaxLength="30" Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPLACAS1" runat="server" placeholder="Placas" MaxLength="30" Width="150px"></asp:TextBox>
                    </td>
                    <td><b>
                        <asp:DropDownList ID="DPENTIDAD1" runat="server" CssClass="auto-style4" Height="29px" style="margin-left: 0px" ToolTip="EN CASO DE SER NECESARIO PONER DE QUE ESTADO PROVIENEN LAS PLACAS" Width="175px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>CDMX</asp:ListItem>
                            <asp:ListItem>ESTADO DE MÉXICO</asp:ListItem>
                            <asp:ListItem>PUEBLA</asp:ListItem>
                            <asp:ListItem>GUADALAJARA</asp:ListItem>
                            <asp:ListItem>MORELOS</asp:ListItem>
                            <asp:ListItem>MICHOACÁN</asp:ListItem>
                            <asp:ListItem>VERACRUZ</asp:ListItem>
                            <asp:ListItem>PUEBLA</asp:ListItem>
                            <asp:ListItem>TLAXCALA</asp:ListItem>
                            <asp:ListItem>OAXACA</asp:ListItem>
                            <asp:ListItem>CHIAPAS</asp:ListItem>
                            <asp:ListItem>TABASCO</asp:ListItem>
                            <asp:ListItem>CAMPECHE</asp:ListItem>
                            <asp:ListItem>YUCATÁN</asp:ListItem>
                            <asp:ListItem>QUINTANA ROO</asp:ListItem>
                            <asp:ListItem>HDALGO</asp:ListItem>
                            <asp:ListItem>GUANAJUATO</asp:ListItem>
                            <asp:ListItem>QUERÉTARO</asp:ListItem>
                            <asp:ListItem>SAN LUIS POTOSÍ</asp:ListItem>
                            <asp:ListItem>JALISCO</asp:ListItem>
                            <asp:ListItem>NAYARIT</asp:ListItem>
                            <asp:ListItem>COLIMA</asp:ListItem>
                            <asp:ListItem>AGUASCALIENTES</asp:ListItem>
                            <asp:ListItem>ZACATECAS</asp:ListItem>
                            <asp:ListItem>TAMAULIPAS</asp:ListItem>
                            <asp:ListItem>NUEVO  LEÓN</asp:ListItem>
                            <asp:ListItem>DURANGO</asp:ListItem>
                            <asp:ListItem>SINALOA</asp:ListItem>
                            <asp:ListItem>DURANGO</asp:ListItem>
                            <asp:ListItem>COAHUILA</asp:ListItem>
                            <asp:ListItem>CHIHUAHUA</asp:ListItem>
                            <asp:ListItem>SONORA</asp:ListItem>
                            <asp:ListItem>BAJA CALIFORNIA</asp:ListItem>
                            <asp:ListItem>BAJA CALIFRONIA SUR</asp:ListItem>
                        </asp:DropDownList>
                        </b></td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong></strong></td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong></strong></td>
                    <td class="auto-style9">MARCA</td>
                    <td>MODELO</td>
                    <td class="auto-style11">AÑO</td>
                    <td>COLOR</td>
                    <td>PLACAS</td>
                    <td>ENTIDAD 
                        <br />
                        DE PLACAS</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>VEHÍCULO Nº 2 :</strong></td>
                    <td class="auto-style9"><b>
                        <asp:DropDownList ID="DPMARCA2" runat="server" ToolTip="Marca del vehículo " Width="95%" Height="29px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>ABARTH</asp:ListItem>
                            <asp:ListItem>ALFA ROMEO</asp:ListItem>
                            <asp:ListItem>ASTON MARTIN</asp:ListItem>
                            <asp:ListItem>AUDI</asp:ListItem>
                            <asp:ListItem>BENTLY</asp:ListItem>
                            <asp:ListItem>BMW</asp:ListItem>
                            <asp:ListItem>CADILLAC</asp:ListItem>
                            <asp:ListItem>CATERHAM</asp:ListItem>
                            <asp:ListItem>CHEVROLET</asp:ListItem>
                            <asp:ListItem>CITROEN</asp:ListItem>
                            <asp:ListItem>DACIA</asp:ListItem>
                            <asp:ListItem>FERRARI</asp:ListItem>
                            <asp:ListItem>FIAT</asp:ListItem>
                            <asp:ListItem>FORD</asp:ListItem>
                            <asp:ListItem>HONDA</asp:ListItem>
                            <asp:ListItem>INFINITI</asp:ListItem>
                            <asp:ListItem>ISUZU</asp:ListItem>
                            <asp:ListItem>IVECO</asp:ListItem>
                            <asp:ListItem>JAGUAR</asp:ListItem>
                            <asp:ListItem>JEEP</asp:ListItem>
                            <asp:ListItem>KIA</asp:ListItem>
                            <asp:ListItem>KTM</asp:ListItem>
                            <asp:ListItem>LADA</asp:ListItem>
                            <asp:ListItem>LAMBORGHINI</asp:ListItem>
                            <asp:ListItem>LANCIA</asp:ListItem>
                            <asp:ListItem>LAND ROVER</asp:ListItem>
                            <asp:ListItem>LEXUS</asp:ListItem>
                            <asp:ListItem>LOTUS</asp:ListItem>
                            <asp:ListItem>MASERATI</asp:ListItem>
                            <asp:ListItem>MAZDA</asp:ListItem>
                            <asp:ListItem>MERCEDES-BENZ</asp:ListItem>
                            <asp:ListItem>MINI</asp:ListItem>
                            <asp:ListItem>MITSUBISHI</asp:ListItem>
                            <asp:ListItem>MORGAN</asp:ListItem>
                            <asp:ListItem>NISSAN</asp:ListItem>
                            <asp:ListItem>OPEL</asp:ListItem>
                            <asp:ListItem>PEUGEOT</asp:ListItem>
                            <asp:ListItem>PIAGGIO</asp:ListItem>
                            <asp:ListItem>PORSHE</asp:ListItem>
                            <asp:ListItem>RENAULT</asp:ListItem>
                            <asp:ListItem>ROLL-ROYCE</asp:ListItem>
                            <asp:ListItem>SEAT</asp:ListItem>
                            <asp:ListItem>SKODA</asp:ListItem>
                            <asp:ListItem>SMART</asp:ListItem>
                            <asp:ListItem>SSANGYONG</asp:ListItem>
                            <asp:ListItem>SUBARU</asp:ListItem>
                            <asp:ListItem>SUZUKI</asp:ListItem>
                            <asp:ListItem>TATA</asp:ListItem>
                            <asp:ListItem>TESLA</asp:ListItem>
                            <asp:ListItem>TOYOTA</asp:ListItem>
                            <asp:ListItem>VOLKSWAGEN</asp:ListItem>
                            <asp:ListItem>VOLVO</asp:ListItem>
                            <asp:ListItem>ALPHINE</asp:ListItem>
                            <asp:ListItem>AMERICAN MOTORS</asp:ListItem>
                            <asp:ListItem>ASIA MOTORS</asp:ListItem>
                            <asp:ListItem>AUSTIN</asp:ListItem>
                            <asp:ListItem>DAEWOOD</asp:ListItem>
                            <asp:ListItem>DITOMASO</asp:ListItem>
                            <asp:ListItem>DEVON MOTORS</asp:ListItem>
                            <asp:ListItem>GUMPERT</asp:ListItem>
                            <asp:ListItem>HUMMER</asp:ListItem>
                            <asp:ListItem>INVICTA</asp:ListItem>
                            <asp:ListItem>MARCOS</asp:ListItem>
                            <asp:ListItem>MAYBACH</asp:ListItem>
                            <asp:ListItem>MORRIS MOTORS</asp:ListItem>
                            <asp:ListItem>PLYMOUTH</asp:ListItem>
                            <asp:ListItem>OLDSMOBILE</asp:ListItem>
                            <asp:ListItem>PONTIAC</asp:ListItem>
                            <asp:ListItem>ROVER</asp:ListItem>
                            <asp:ListItem>SAAB</asp:ListItem>
                            <asp:ListItem>SATURN</asp:ListItem>
                            <asp:ListItem>SPYKER</asp:ListItem>
                            <asp:ListItem>HYUNDAI</asp:ListItem>
                            <asp:ListItem>CHRYSLER</asp:ListItem>
                            <asp:ListItem>DODGE</asp:ListItem>
                            <asp:ListItem>LINCOLN</asp:ListItem>
                            <asp:ListItem>N/A</asp:ListItem>
                        </asp:DropDownList>
                        </b></td>
                    <td>
                        <asp:TextBox ID="txtMODELO2" runat="server" MaxLength="50" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style13"><b>
                        <asp:DropDownList ID="DPAÑO2" runat="server" Width="100px" Height="29px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>1950</asp:ListItem>
                            <asp:ListItem>1951</asp:ListItem>
                            <asp:ListItem>1952</asp:ListItem>
                            <asp:ListItem>1953</asp:ListItem>
                            <asp:ListItem>1954</asp:ListItem>
                            <asp:ListItem>1955</asp:ListItem>
                            <asp:ListItem>1956</asp:ListItem>
                            <asp:ListItem>1957</asp:ListItem>
                            <asp:ListItem>1958</asp:ListItem>
                            <asp:ListItem>1959</asp:ListItem>
                            <asp:ListItem>1960</asp:ListItem>
                            <asp:ListItem>1961</asp:ListItem>
                            <asp:ListItem>1962</asp:ListItem>
                            <asp:ListItem>1963</asp:ListItem>
                            <asp:ListItem>1964</asp:ListItem>
                            <asp:ListItem>1965</asp:ListItem>
                            <asp:ListItem>1966</asp:ListItem>
                            <asp:ListItem>1967</asp:ListItem>
                            <asp:ListItem>1964</asp:ListItem>
                            <asp:ListItem>1965</asp:ListItem>
                            <asp:ListItem>1964</asp:ListItem>
                            <asp:ListItem>1965</asp:ListItem>
                            <asp:ListItem>1966</asp:ListItem>
                            <asp:ListItem>1967</asp:ListItem>
                            <asp:ListItem>1968</asp:ListItem>
                            <asp:ListItem>1969</asp:ListItem>
                            <asp:ListItem>1970</asp:ListItem>
                            <asp:ListItem>1971</asp:ListItem>
                            <asp:ListItem>1972</asp:ListItem>
                            <asp:ListItem>1973</asp:ListItem>
                            <asp:ListItem>1974</asp:ListItem>
                            <asp:ListItem>1975</asp:ListItem>
                            <asp:ListItem>1976</asp:ListItem>
                            <asp:ListItem>1977</asp:ListItem>
                            <asp:ListItem>1978</asp:ListItem>
                            <asp:ListItem>1979</asp:ListItem>
                            <asp:ListItem>1980</asp:ListItem>
                            <asp:ListItem>1981</asp:ListItem>
                            <asp:ListItem>1982</asp:ListItem>
                            <asp:ListItem>1983</asp:ListItem>
                            <asp:ListItem>1984</asp:ListItem>
                            <asp:ListItem>1985</asp:ListItem>
                            <asp:ListItem>1986</asp:ListItem>
                            <asp:ListItem>1987</asp:ListItem>
                            <asp:ListItem>1988</asp:ListItem>
                            <asp:ListItem>1989</asp:ListItem>
                            <asp:ListItem>1990</asp:ListItem>
                            <asp:ListItem>1991</asp:ListItem>
                            <asp:ListItem>1992</asp:ListItem>
                            <asp:ListItem>1993</asp:ListItem>
                            <asp:ListItem>1994</asp:ListItem>
                            <asp:ListItem>1995</asp:ListItem>
                            <asp:ListItem>1996</asp:ListItem>
                            <asp:ListItem>1997</asp:ListItem>
                            <asp:ListItem>1998</asp:ListItem>
                            <asp:ListItem>1999</asp:ListItem>
                            <asp:ListItem>2000</asp:ListItem>
                            <asp:ListItem>2001</asp:ListItem>
                            <asp:ListItem>2002</asp:ListItem>
                            <asp:ListItem>2003</asp:ListItem>
                            <asp:ListItem>2004</asp:ListItem>
                            <asp:ListItem>2005</asp:ListItem>
                            <asp:ListItem>2006</asp:ListItem>
                            <asp:ListItem>2007</asp:ListItem>
                            <asp:ListItem>2007</asp:ListItem>
                            <asp:ListItem>2008</asp:ListItem>
                            <asp:ListItem>2009</asp:ListItem>
                            <asp:ListItem>2009</asp:ListItem>
                            <asp:ListItem>2010</asp:ListItem>
                            <asp:ListItem>2011</asp:ListItem>
                            <asp:ListItem>2012</asp:ListItem>
                            <asp:ListItem>2013</asp:ListItem>
                            <asp:ListItem>2014</asp:ListItem>
                            <asp:ListItem>2015</asp:ListItem>
                            <asp:ListItem>2016</asp:ListItem>
                            <asp:ListItem>2017</asp:ListItem>
                            <asp:ListItem>2018</asp:ListItem>
                            <asp:ListItem>2019</asp:ListItem>
                            <asp:ListItem>2020</asp:ListItem>
                            <asp:ListItem>N/A</asp:ListItem>
                        </asp:DropDownList>
                        </b></td>
                    <td>
                        <asp:TextBox ID="txtCOLOR2" runat="server" MaxLength="30" Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPLACAS2" runat="server" MaxLength="30" Width="150px"></asp:TextBox>
                    </td>
                    <td><b>
                        <asp:DropDownList ID="DPENTIDAD2" runat="server" CssClass="auto-style4" Height="29px" style="margin-left: 0px" ToolTip="EN CASO DE SER NECESARIO PONER DE QUE ESTADO PROVIENEN LAS PLACAS" Width="175px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>CDMX</asp:ListItem>
                            <asp:ListItem>ESTADO DE MÉXICO</asp:ListItem>
                            <asp:ListItem>PUEBLA</asp:ListItem>
                            <asp:ListItem>GUADALAJARA</asp:ListItem>
                            <asp:ListItem>MORELOS</asp:ListItem>
                            <asp:ListItem>MICHOACÁN</asp:ListItem>
                            <asp:ListItem>VERACRUZ</asp:ListItem>
                            <asp:ListItem>PUEBLA</asp:ListItem>
                            <asp:ListItem>TLAXCALA</asp:ListItem>
                            <asp:ListItem>OAXACA</asp:ListItem>
                            <asp:ListItem>CHIAPAS</asp:ListItem>
                            <asp:ListItem>TABASCO</asp:ListItem>
                            <asp:ListItem>CAMPECHE</asp:ListItem>
                            <asp:ListItem>YUCATÁN</asp:ListItem>
                            <asp:ListItem>QUINTANA ROO</asp:ListItem>
                            <asp:ListItem>HDALGO</asp:ListItem>
                            <asp:ListItem>GUANAJUATO</asp:ListItem>
                            <asp:ListItem>QUERÉTARO</asp:ListItem>
                            <asp:ListItem>SAN LUIS POTOSÍ</asp:ListItem>
                            <asp:ListItem>JALISCO</asp:ListItem>
                            <asp:ListItem>NAYARIT</asp:ListItem>
                            <asp:ListItem>COLIMA</asp:ListItem>
                            <asp:ListItem>AGUASCALIENTES</asp:ListItem>
                            <asp:ListItem>ZACATECAS</asp:ListItem>
                            <asp:ListItem>TAMAULIPAS</asp:ListItem>
                            <asp:ListItem>NUEVO  LEÓN</asp:ListItem>
                            <asp:ListItem>DURANGO</asp:ListItem>
                            <asp:ListItem>SINALOA</asp:ListItem>
                            <asp:ListItem>DURANGO</asp:ListItem>
                            <asp:ListItem>COAHUILA</asp:ListItem>
                            <asp:ListItem>CHIHUAHUA</asp:ListItem>
                            <asp:ListItem>SONORA</asp:ListItem>
                            <asp:ListItem>BAJA CALIFORNIA</asp:ListItem>
                            <asp:ListItem>BAJA CALIFRONIA SUR</asp:ListItem>
                        </asp:DropDownList>
                        </b></td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong></strong></td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong></strong></td>
                    <td class="auto-style9">MARCA</td>
                    <td>MODELO</td>
                    <td class="auto-style11">AÑO</td>
                    <td>COLOR</td>
                    <td>PLACAS</td>
                    <td>ENTIDAD 
                        <br />
                        DE PLACAS</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>VEHÍCULO Nº 3 :</strong></td>
                    <td class="auto-style9"><b>
                        <asp:DropDownList ID="DPMARCA3" runat="server" ToolTip="Marca del vehículo " Width="95%" Visible="False" Height="29px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>ABARTH</asp:ListItem>
                            <asp:ListItem>ALFA ROMEO</asp:ListItem>
                            <asp:ListItem>ASTON MARTIN</asp:ListItem>
                            <asp:ListItem>AUDI</asp:ListItem>
                            <asp:ListItem>BENTLY</asp:ListItem>
                            <asp:ListItem>BMW</asp:ListItem>
                            <asp:ListItem>CADILLAC</asp:ListItem>
                            <asp:ListItem>CATERHAM</asp:ListItem>
                            <asp:ListItem>CHEVROLET</asp:ListItem>
                            <asp:ListItem>CITROEN</asp:ListItem>
                            <asp:ListItem>DACIA</asp:ListItem>
                            <asp:ListItem>FERRARI</asp:ListItem>
                            <asp:ListItem>FIAT</asp:ListItem>
                            <asp:ListItem>FORD</asp:ListItem>
                            <asp:ListItem>HONDA</asp:ListItem>
                            <asp:ListItem>INFINITI</asp:ListItem>
                            <asp:ListItem>ISUZU</asp:ListItem>
                            <asp:ListItem>IVECO</asp:ListItem>
                            <asp:ListItem>JAGUAR</asp:ListItem>
                            <asp:ListItem>JEEP</asp:ListItem>
                            <asp:ListItem>KIA</asp:ListItem>
                            <asp:ListItem>KTM</asp:ListItem>
                            <asp:ListItem>LADA</asp:ListItem>
                            <asp:ListItem>LAMBORGHINI</asp:ListItem>
                            <asp:ListItem>LANCIA</asp:ListItem>
                            <asp:ListItem>LAND ROVER</asp:ListItem>
                            <asp:ListItem>LEXUS</asp:ListItem>
                            <asp:ListItem>LOTUS</asp:ListItem>
                            <asp:ListItem>MASERATI</asp:ListItem>
                            <asp:ListItem>MAZDA</asp:ListItem>
                            <asp:ListItem>MERCEDES-BENZ</asp:ListItem>
                            <asp:ListItem>MINI</asp:ListItem>
                            <asp:ListItem>MITSUBISHI</asp:ListItem>
                            <asp:ListItem>MORGAN</asp:ListItem>
                            <asp:ListItem>NISSAN</asp:ListItem>
                            <asp:ListItem>OPEL</asp:ListItem>
                            <asp:ListItem>PEUGEOT</asp:ListItem>
                            <asp:ListItem>PIAGGIO</asp:ListItem>
                            <asp:ListItem>PORSHE</asp:ListItem>
                            <asp:ListItem>RENAULT</asp:ListItem>
                            <asp:ListItem>ROLL-ROYCE</asp:ListItem>
                            <asp:ListItem>SEAT</asp:ListItem>
                            <asp:ListItem>SKODA</asp:ListItem>
                            <asp:ListItem>SMART</asp:ListItem>
                            <asp:ListItem>SSANGYONG</asp:ListItem>
                            <asp:ListItem>SUBARU</asp:ListItem>
                            <asp:ListItem>SUZUKI</asp:ListItem>
                            <asp:ListItem>TATA</asp:ListItem>
                            <asp:ListItem>TESLA</asp:ListItem>
                            <asp:ListItem>TOYOTA</asp:ListItem>
                            <asp:ListItem>VOLKSWAGEN</asp:ListItem>
                            <asp:ListItem>VOLVO</asp:ListItem>
                            <asp:ListItem>ALPHINE</asp:ListItem>
                            <asp:ListItem>AMERICAN MOTORS</asp:ListItem>
                            <asp:ListItem>ASIA MOTORS</asp:ListItem>
                            <asp:ListItem>AUSTIN</asp:ListItem>
                            <asp:ListItem>DAEWOOD</asp:ListItem>
                            <asp:ListItem>DITOMASO</asp:ListItem>
                            <asp:ListItem>DEVON MOTORS</asp:ListItem>
                            <asp:ListItem>GUMPERT</asp:ListItem>
                            <asp:ListItem>HUMMER</asp:ListItem>
                            <asp:ListItem>INVICTA</asp:ListItem>
                            <asp:ListItem>MARCOS</asp:ListItem>
                            <asp:ListItem>MAYBACH</asp:ListItem>
                            <asp:ListItem>MORRIS MOTORS</asp:ListItem>
                            <asp:ListItem>PLYMOUTH</asp:ListItem>
                            <asp:ListItem>OLDSMOBILE</asp:ListItem>
                            <asp:ListItem>PONTIAC</asp:ListItem>
                            <asp:ListItem>ROVER</asp:ListItem>
                            <asp:ListItem>SAAB</asp:ListItem>
                            <asp:ListItem>SATURN</asp:ListItem>
                            <asp:ListItem>SPYKER</asp:ListItem>
                            <asp:ListItem>HYUNDAI</asp:ListItem>
                            <asp:ListItem>CHRYSLER</asp:ListItem>
                            <asp:ListItem>DODGE</asp:ListItem>
                            <asp:ListItem>LINCOLN</asp:ListItem>
                            <asp:ListItem>N/A</asp:ListItem>
                        </asp:DropDownList>
                        </b></td>
                    <td>
                        <asp:TextBox ID="txtMODELO3" runat="server" MaxLength="50" Visible="False" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="DPAÑO3" runat="server" Visible="False" Width="100px" Height="29px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>1950</asp:ListItem>
                            <asp:ListItem>1951</asp:ListItem>
                            <asp:ListItem>1952</asp:ListItem>
                            <asp:ListItem>1953</asp:ListItem>
                            <asp:ListItem>1954</asp:ListItem>
                            <asp:ListItem>1955</asp:ListItem>
                            <asp:ListItem>1956</asp:ListItem>
                            <asp:ListItem>1957</asp:ListItem>
                            <asp:ListItem>1958</asp:ListItem>
                            <asp:ListItem>1959</asp:ListItem>
                            <asp:ListItem>1960</asp:ListItem>
                            <asp:ListItem>1961</asp:ListItem>
                            <asp:ListItem>1962</asp:ListItem>
                            <asp:ListItem>1963</asp:ListItem>
                            <asp:ListItem>1964</asp:ListItem>
                            <asp:ListItem>1965</asp:ListItem>
                            <asp:ListItem>1966</asp:ListItem>
                            <asp:ListItem>1967</asp:ListItem>
                            <asp:ListItem>1964</asp:ListItem>
                            <asp:ListItem>1965</asp:ListItem>
                            <asp:ListItem>1964</asp:ListItem>
                            <asp:ListItem>1965</asp:ListItem>
                            <asp:ListItem>1966</asp:ListItem>
                            <asp:ListItem>1967</asp:ListItem>
                            <asp:ListItem>1968</asp:ListItem>
                            <asp:ListItem>1969</asp:ListItem>
                            <asp:ListItem>1970</asp:ListItem>
                            <asp:ListItem>1971</asp:ListItem>
                            <asp:ListItem>1972</asp:ListItem>
                            <asp:ListItem>1973</asp:ListItem>
                            <asp:ListItem>1974</asp:ListItem>
                            <asp:ListItem>1975</asp:ListItem>
                            <asp:ListItem>1976</asp:ListItem>
                            <asp:ListItem>1977</asp:ListItem>
                            <asp:ListItem>1978</asp:ListItem>
                            <asp:ListItem>1979</asp:ListItem>
                            <asp:ListItem>1980</asp:ListItem>
                            <asp:ListItem>1981</asp:ListItem>
                            <asp:ListItem>1982</asp:ListItem>
                            <asp:ListItem>1983</asp:ListItem>
                            <asp:ListItem>1984</asp:ListItem>
                            <asp:ListItem>1985</asp:ListItem>
                            <asp:ListItem>1986</asp:ListItem>
                            <asp:ListItem>1987</asp:ListItem>
                            <asp:ListItem>1988</asp:ListItem>
                            <asp:ListItem>1989</asp:ListItem>
                            <asp:ListItem>1990</asp:ListItem>
                            <asp:ListItem>1991</asp:ListItem>
                            <asp:ListItem>1992</asp:ListItem>
                            <asp:ListItem>1993</asp:ListItem>
                            <asp:ListItem>1994</asp:ListItem>
                            <asp:ListItem>1995</asp:ListItem>
                            <asp:ListItem>1996</asp:ListItem>
                            <asp:ListItem>1997</asp:ListItem>
                            <asp:ListItem>1998</asp:ListItem>
                            <asp:ListItem>1999</asp:ListItem>
                            <asp:ListItem>2000</asp:ListItem>
                            <asp:ListItem>2001</asp:ListItem>
                            <asp:ListItem>2002</asp:ListItem>
                            <asp:ListItem>2003</asp:ListItem>
                            <asp:ListItem>2004</asp:ListItem>
                            <asp:ListItem>2005</asp:ListItem>
                            <asp:ListItem>2006</asp:ListItem>
                            <asp:ListItem>2007</asp:ListItem>
                            <asp:ListItem>2007</asp:ListItem>
                            <asp:ListItem>2008</asp:ListItem>
                            <asp:ListItem>2009</asp:ListItem>
                            <asp:ListItem>2009</asp:ListItem>
                            <asp:ListItem>2010</asp:ListItem>
                            <asp:ListItem>2011</asp:ListItem>
                            <asp:ListItem>2012</asp:ListItem>
                            <asp:ListItem>2013</asp:ListItem>
                            <asp:ListItem>2014</asp:ListItem>
                            <asp:ListItem>2015</asp:ListItem>
                            <asp:ListItem>2016</asp:ListItem>
                            <asp:ListItem>2017</asp:ListItem>
                            <asp:ListItem>2018</asp:ListItem>
                            <asp:ListItem>2019</asp:ListItem>
                            <asp:ListItem>2020</asp:ListItem>
                            <asp:ListItem>N/A</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                    <td>
                        <asp:TextBox ID="txtCOLOR3" runat="server" MaxLength="30" Visible="False" Width="120px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPLACAS3" runat="server" MaxLength="30" Visible="False" Width="150px"></asp:TextBox>
                    </td>
                    <td><b>
                        <asp:DropDownList ID="DPENTIDAD3" runat="server" CssClass="auto-style4" Height="29px" ToolTip="EN CASO DE SER NECESARIO PONER DE QUE ESTADO PROVIENEN LAS PLACAS" Width="175px" Visible="False">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>CDMX</asp:ListItem>
                            <asp:ListItem>ESTADO DE MÉXICO</asp:ListItem>
                            <asp:ListItem>PUEBLA</asp:ListItem>
                            <asp:ListItem>GUADALAJARA</asp:ListItem>
                            <asp:ListItem>MORELOS</asp:ListItem>
                            <asp:ListItem>MICHOACÁN</asp:ListItem>
                            <asp:ListItem>VERACRUZ</asp:ListItem>
                            <asp:ListItem>PUEBLA</asp:ListItem>
                            <asp:ListItem>TLAXCALA</asp:ListItem>
                            <asp:ListItem>OAXACA</asp:ListItem>
                            <asp:ListItem>CHIAPAS</asp:ListItem>
                            <asp:ListItem>TABASCO</asp:ListItem>
                            <asp:ListItem>CAMPECHE</asp:ListItem>
                            <asp:ListItem>YUCATÁN</asp:ListItem>
                            <asp:ListItem>QUINTANA ROO</asp:ListItem>
                            <asp:ListItem>HDALGO</asp:ListItem>
                            <asp:ListItem>GUANAJUATO</asp:ListItem>
                            <asp:ListItem>QUERÉTARO</asp:ListItem>
                            <asp:ListItem>SAN LUIS POTOSÍ</asp:ListItem>
                            <asp:ListItem>JALISCO</asp:ListItem>
                            <asp:ListItem>NAYARIT</asp:ListItem>
                            <asp:ListItem>COLIMA</asp:ListItem>
                            <asp:ListItem>AGUASCALIENTES</asp:ListItem>
                            <asp:ListItem>ZACATECAS</asp:ListItem>
                            <asp:ListItem>TAMAULIPAS</asp:ListItem>
                            <asp:ListItem>NUEVO  LEÓN</asp:ListItem>
                            <asp:ListItem>DURANGO</asp:ListItem>
                            <asp:ListItem>SINALOA</asp:ListItem>
                            <asp:ListItem>DURANGO</asp:ListItem>
                            <asp:ListItem>COAHUILA</asp:ListItem>
                            <asp:ListItem>CHIHUAHUA</asp:ListItem>
                            <asp:ListItem>SONORA</asp:ListItem>
                            <asp:ListItem>BAJA CALIFORNIA</asp:ListItem>
                            <asp:ListItem>BAJA CALIFRONIA SUR</asp:ListItem>
                        </asp:DropDownList>
                        </b></td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong></strong></td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style7" colspan="3">
    <asp:Button ID="btnAbrir" runat="server" Text="Agregar" class="btnsombra btnmex btn-outline-verdemx" data-toggle="modal" data-target="#ventanaModal" UseSubmitBehavior="False" OnClientClick="return false;" Width="90px" OnClick="btnAbrir_Click" />
                        
                    </td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong></strong></td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td></td>
                </tr>
            </table>

        </div>
      <%-- ESTOS SON TUS SCRIPTS DE JAVASCRIPT O JQUERY, EL PRIMERO SIEMPRE DEBE SER JQUERY Y DEBAJO DE EL TDOS LOS DEMAS QUE VAYAS A UTILIZAR --%><%-- CUALQUIER PLUGIN DEBE IR DESPUES DE JQUERYU --%>
    <script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
        <%-- AL FINAL DE TODOS LOS SCRIPTS QUE CARGAS POR PAGINA DEBE IR EL CODIGO DE JAVASCRIPT QUE VAYAS A UTILIZAR DENTOR DE LOS TAG <SCRIPT> --%>
        <!-- AQUI YA PUEDES UTILIZAR CUALQUIER CODIGO DE JAVASCRIPT O JQUERY QUE NECESITES, DE LO CONTRARIO MARCARA ERROR -->
        <asp:SqlDataSource ID="SQLAgregar" runat="server" ConnectionString="<%$ ConnectionStrings:base de datos %>" DeleteCommand="DELETE FROM [USUARIOS] WHERE [RFC] = ?" InsertCommand="INSERT INTO [USUARIOS] ([RFC], [CAJON], [NOMBRE], [A_PATERNO], [A_MATERNO], [CARGO], [ÁREA], [NIVEL], [FECHA_DE_INGRESO], [MARCA], [MODELO], [AÑO], [ENTIDAD], [PLACAS], [COLOR], [MARCA2], [MODELO_V2], [AÑO2], [ENTIDAD2], [PLACAS2], [COLOR2], [MARCA3], [MODELO_V3], [AÑO3], [ENTIDAD3], [PLACAS3], [COLOR3]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:base de datos.ProviderName %>" SelectCommand="SELECT RFC, CAJON, NOMBRE, A_PATERNO, A_MATERNO, CARGO, ÁREA, NIVEL, FECHA_DE_INGRESO, MARCA, MODELO, AÑO, ENTIDAD, PLACAS, COLOR, MARCA2, MODELO_V2, AÑO2, ENTIDAD2, PLACAS2, COLOR2, MARCA3, MODELO_V3, AÑO3, ENTIDAD3, PLACAS3, COLOR3 FROM USUARIOS WHERE (RFC = ?) AND (CAJON = ?) AND (PLACAS = ?)" UpdateCommand="UPDATE [USUARIOS] SET [CAJON] = ?, [NOMBRE] = ?, [A_PATERNO] = ?, [A_MATERNO] = ?, [CARGO] = ?, [ÁREA] = ?, [NIVEL] = ?, [FECHA_DE_INGRESO] = ?, [MARCA] = ?, [MODELO] = ?, [AÑO] = ?, [ENTIDAD] = ?, [PLACAS] = ?, [COLOR] = ?, [MARCA2] = ?, [MODELO_V2] = ?, [AÑO2] = ?, [ENTIDAD2] = ?, [PLACAS2] = ?, [COLOR2] = ?, [MARCA3] = ?, [MODELO_V3] = ?, [AÑO3] = ?, [ENTIDAD3] = ?, [PLACAS3] = ?, [COLOR3] = ? WHERE [RFC] = ?">
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
        <asp:SqlDataSource ID="SQLSELECT" runat="server" ConnectionString="<%$ ConnectionStrings:base de datos %>" ProviderName="<%$ ConnectionStrings:base de datos.ProviderName %>" SelectCommand="SELECT RFC, NOMBRE, A_PATERNO, A_MATERNO, CARGO, ÁREA, NIVEL, FECHA_DE_INGRESO, MARCA, MODELO, AÑO, ENTIDAD, PLACAS, COLOR, MARCA2, MODELO_V2, AÑO2, ENTIDAD2, PLACAS2, COLOR2, MARCA3, MODELO_V3, AÑO3, ENTIDAD3, PLACAS3, COLOR3 FROM USUARIOS WHERE (CAJON = ?)">
            <SelectParameters>
                <asp:Parameter Name="CAJON" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SQLRFC" runat="server" ConnectionString="<%$ ConnectionStrings:base de datos %>" DeleteCommand="DELETE FROM [USUARIOS] WHERE [RFC] = ?" InsertCommand="INSERT INTO [USUARIOS] ([RFC], [CAJON], [NOMBRE], [A_PATERNO], [A_MATERNO], [CARGO], [ÁREA], [NIVEL], [FECHA_DE_INGRESO], [MARCA], [MODELO], [AÑO], [ENTIDAD], [PLACAS], [COLOR], [MARCA2], [MODELO_V2], [AÑO2], [ENTIDAD2], [PLACAS2], [COLOR2], [MARCA3], [MODELO_V3], [AÑO3], [ENTIDAD3], [PLACAS3], [COLOR3]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:base de datos.ProviderName %>" SelectCommand="SELECT CAJON, NOMBRE, A_PATERNO, A_MATERNO, CARGO, ÁREA, NIVEL, FECHA_DE_INGRESO, MARCA, MODELO, AÑO, ENTIDAD, PLACAS, COLOR, MARCA2, MODELO_V2, AÑO2, ENTIDAD2, PLACAS2, COLOR2, MARCA3, MODELO_V3, AÑO3, ENTIDAD3, PLACAS3, COLOR3, RFC FROM USUARIOS WHERE (RFC = ?)" UpdateCommand="UPDATE [USUARIOS] SET [CAJON] = ?, [NOMBRE] = ?, [A_PATERNO] = ?, [A_MATERNO] = ?, [CARGO] = ?, [ÁREA] = ?, [NIVEL] = ?, [FECHA_DE_INGRESO] = ?, [MARCA] = ?, [MODELO] = ?, [AÑO] = ?, [ENTIDAD] = ?, [PLACAS] = ?, [COLOR] = ?, [MARCA2] = ?, [MODELO_V2] = ?, [AÑO2] = ?, [ENTIDAD2] = ?, [PLACAS2] = ?, [COLOR2] = ?, [MARCA3] = ?, [MODELO_V3] = ?, [AÑO3] = ?, [ENTIDAD3] = ?, [PLACAS3] = ?, [COLOR3] = ? WHERE [RFC] = ?">
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
        <asp:SqlDataSource ID="SQLPLACAS" runat="server" ConnectionString="<%$ ConnectionStrings:base de datos %>" DeleteCommand="DELETE FROM [USUARIOS] WHERE [RFC] = ?" InsertCommand="INSERT INTO [USUARIOS] ([RFC], [CAJON], [NOMBRE], [A_PATERNO], [A_MATERNO], [CARGO], [ÁREA], [NIVEL], [FECHA_DE_INGRESO], [MARCA], [MODELO], [AÑO], [ENTIDAD], [PLACAS], [COLOR], [MARCA2], [MODELO_V2], [AÑO2], [ENTIDAD2], [PLACAS2], [COLOR2], [MARCA3], [MODELO_V3], [AÑO3], [ENTIDAD3], [PLACAS3], [COLOR3]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:base de datos.ProviderName %>" SelectCommand="SELECT RFC, CAJON, NOMBRE, A_PATERNO, A_MATERNO, CARGO, ÁREA, NIVEL, FECHA_DE_INGRESO, MARCA, MODELO, AÑO, ENTIDAD, COLOR, MARCA2, MODELO_V2, AÑO2, ENTIDAD2, PLACAS2, COLOR2, MARCA3, MODELO_V3, AÑO3, ENTIDAD3, PLACAS3, COLOR3, PLACAS FROM USUARIOS WHERE (PLACAS = ?)" UpdateCommand="UPDATE [USUARIOS] SET [CAJON] = ?, [NOMBRE] = ?, [A_PATERNO] = ?, [A_MATERNO] = ?, [CARGO] = ?, [ÁREA] = ?, [NIVEL] = ?, [FECHA_DE_INGRESO] = ?, [MARCA] = ?, [MODELO] = ?, [AÑO] = ?, [ENTIDAD] = ?, [PLACAS] = ?, [COLOR] = ?, [MARCA2] = ?, [MODELO_V2] = ?, [AÑO2] = ?, [ENTIDAD2] = ?, [PLACAS2] = ?, [COLOR2] = ?, [MARCA3] = ?, [MODELO_V3] = ?, [AÑO3] = ?, [ENTIDAD3] = ?, [PLACAS3] = ?, [COLOR3] = ? WHERE [RFC] = ?">
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
        <asp:SqlDataSource ID="SQLPLACAS2" runat="server" ConnectionString="<%$ ConnectionStrings:base de datos %>" DeleteCommand="DELETE FROM [USUARIOS] WHERE [RFC] = ?" InsertCommand="INSERT INTO [USUARIOS] ([RFC], [CAJON], [NOMBRE], [A_PATERNO], [A_MATERNO], [CARGO], [ÁREA], [NIVEL], [FECHA_DE_INGRESO], [MARCA], [MODELO], [AÑO], [ENTIDAD], [PLACAS], [COLOR], [MARCA2], [MODELO_V2], [AÑO2], [ENTIDAD2], [PLACAS2], [COLOR2], [MARCA3], [MODELO_V3], [AÑO3], [ENTIDAD3], [PLACAS3], [COLOR3]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:base de datos.ProviderName %>" SelectCommand="SELECT RFC, CAJON, NOMBRE, A_PATERNO, A_MATERNO, CARGO, ÁREA, NIVEL, FECHA_DE_INGRESO, MARCA, MODELO, AÑO, ENTIDAD, PLACAS, COLOR, MARCA2, MODELO_V2, AÑO2, ENTIDAD2, PLACAS2, COLOR2, MARCA3, MODELO_V3, AÑO3, ENTIDAD3, PLACAS3, COLOR3 FROM USUARIOS WHERE (PLACAS2 = ?)" UpdateCommand="UPDATE [USUARIOS] SET [CAJON] = ?, [NOMBRE] = ?, [A_PATERNO] = ?, [A_MATERNO] = ?, [CARGO] = ?, [ÁREA] = ?, [NIVEL] = ?, [FECHA_DE_INGRESO] = ?, [MARCA] = ?, [MODELO] = ?, [AÑO] = ?, [ENTIDAD] = ?, [PLACAS] = ?, [COLOR] = ?, [MARCA2] = ?, [MODELO_V2] = ?, [AÑO2] = ?, [ENTIDAD2] = ?, [PLACAS2] = ?, [COLOR2] = ?, [MARCA3] = ?, [MODELO_V3] = ?, [AÑO3] = ?, [ENTIDAD3] = ?, [PLACAS3] = ?, [COLOR3] = ? WHERE [RFC] = ?">
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
                <asp:Parameter Name="PLACAS2" />
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
        <asp:SqlDataSource ID="SQLPLACAS3" runat="server" ConnectionString="<%$ ConnectionStrings:base de datos %>" DeleteCommand="DELETE FROM [USUARIOS] WHERE [RFC] = ?" InsertCommand="INSERT INTO [USUARIOS] ([RFC], [CAJON], [NOMBRE], [A_PATERNO], [A_MATERNO], [CARGO], [ÁREA], [NIVEL], [FECHA_DE_INGRESO], [MARCA], [MODELO], [AÑO], [ENTIDAD], [PLACAS], [COLOR], [MARCA2], [MODELO_V2], [AÑO2], [ENTIDAD2], [PLACAS2], [COLOR2], [MARCA3], [MODELO_V3], [AÑO3], [ENTIDAD3], [PLACAS3], [COLOR3]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:base de datos.ProviderName %>" SelectCommand="SELECT RFC, CAJON, NOMBRE, A_PATERNO, A_MATERNO, CARGO, ÁREA, NIVEL, FECHA_DE_INGRESO, MARCA, MODELO, AÑO, ENTIDAD, PLACAS, COLOR, MARCA2, MODELO_V2, AÑO2, ENTIDAD2, PLACAS2, COLOR2, MARCA3, MODELO_V3, AÑO3, ENTIDAD3, PLACAS3, COLOR3 FROM USUARIOS WHERE (PLACAS3 = ?)" UpdateCommand="UPDATE [USUARIOS] SET [CAJON] = ?, [NOMBRE] = ?, [A_PATERNO] = ?, [A_MATERNO] = ?, [CARGO] = ?, [ÁREA] = ?, [NIVEL] = ?, [FECHA_DE_INGRESO] = ?, [MARCA] = ?, [MODELO] = ?, [AÑO] = ?, [ENTIDAD] = ?, [PLACAS] = ?, [COLOR] = ?, [MARCA2] = ?, [MODELO_V2] = ?, [AÑO2] = ?, [ENTIDAD2] = ?, [PLACAS2] = ?, [COLOR2] = ?, [MARCA3] = ?, [MODELO_V3] = ?, [AÑO3] = ?, [ENTIDAD3] = ?, [PLACAS3] = ?, [COLOR3] = ? WHERE [RFC] = ?">
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
                <asp:Parameter Name="PLACAS3" />
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
