using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace Administrador_de_Estacionamiento.Inicio_de_admin
{
    public partial class Agregar_Cajón : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                lblUsuario.Text = "" + Session["admin"];
            }

            else if (Session["usuario"] != null)
            {
                Session.Remove("usuario");
                Response.Redirect("Login_admin.aspx");
            }
            else
            {
                Response.Redirect("Login_admin.aspx");
            } 
        } 
        protected void OutPutDay()
        {
            Response.Write(DateTime.Now.ToString("D"));
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtPLACAS1.Text == txtPLACAS2.Text)
                {
                    lblResultados.Text = "No puede DUPLICAR las placas del Vehíuclo 1 con las del Vehículo 2 o viceversa.";
                    lblAsignado.Text = "";
                }
                else if (txtPLACAS1.Text == txtPLACAS3.Text)
                {
                    lblResultados.Text = "No puede DUPLICAR las placas del Vehíuclo 1 con las del Vehículo 3 o viceversa.";
                    lblAsignado.Text = "";
                }

                else { // este else es de verificacion que no se dupliquen placas
                    SQLRFC.SelectParameters["RFC"].DefaultValue = txtRFC.Text;
                    SQLRFC.DataSourceMode = SqlDataSourceMode.DataReader;
                    OleDbDataReader verificar;
                    verificar = (OleDbDataReader)SQLRFC.Select(DataSourceSelectArguments.Empty);
                    if (verificar.Read())
                    {
                        lblResultados.Text = "Está duplicando el valor de RFC de otro Servidor Público  : <br> **"+txtRFC.Text+"** ,  por favor corrija y vuelva a intentar";
                        lblAsignado.Text = "";
                    }
                    else // este else es del RFC
                            {
                            SQLSELECT.SelectParameters["CAJON"].DefaultValue = txtCAJON.Text;
                            SQLSELECT.DataSourceMode = SqlDataSourceMode.DataReader;
                            OleDbDataReader cajon;
                            cajon = (OleDbDataReader)SQLSELECT.Select(DataSourceSelectArguments.Empty);
                            if (cajon.Read())
                            {
                                lblResultados.Text = "Está duplicando el Lugar de Estacionamiento de otro Servidor Público : <br> ** " +txtCAJON.Text+" ** , por favor corrija y vuelva a intentar ";
                                lblAsignado.Text = "";
                            }
                            else // este else es del cajon
                            {
                                    SQLPLACAS.SelectParameters["PLACAS"].DefaultValue = txtPLACAS1.Text.ToUpper();
                                    SQLPLACAS.DataSourceMode = SqlDataSourceMode.DataReader;
                                    OleDbDataReader placas;
                                    placas = (OleDbDataReader)SQLPLACAS.Select(DataSourceSelectArguments.Empty);
                                    if(placas.Read())
                                    {
                                        lblResultados.Text = "esta Duplicando las placas de otro Servidor Público : ** "+txtPLACAS1.Text+" **, por favor corrija y vuelva a intentar ";
                                        lblAsignado.Text = "";
                            }
                                    else //este es el Else de PLACAS
                                    { /*
                                        SQLPLACAS2.SelectParameters["PLACAS2"].DefaultValue = txtPLACAS2.Text.ToUpper();
                                        SQLPLACAS2.DataSourceMode = SqlDataSourceMode.DataReader;
                                        OleDbDataReader placas2;
                                        placas2 = (OleDbDataReader)SQLPLACAS2.Select(DataSourceSelectArguments.Empty);
                                        if(placas2.Read())
                                        {
                                            lblResultados.Text = "Esta duplicando las placas del vehículo 2 de otro Servidor Público <br> ** "+txtPLACAS2.Text+" **, Por favor corrija y vuelva a intentar";
                                            lblAsignado.Text = "";
                                        }
                                        else // else de placas 2
                                        {
                                            SQLPLACAS3.SelectParameters["PLACAS3"].DefaultValue = txtPLACAS3.Text;
                                            SQLPLACAS3.DataSourceMode = SqlDataSourceMode.DataReader;
                                            OleDbDataReader placas3;
                                            placas3 = (OleDbDataReader)SQLPLACAS3.Select(DataSourceSelectArguments.Empty);
                                            if(placas3.Read())
                                            {
                                                lblResultados.Text = "Esta duplicando las placas del Vehículo 3 de otro Servidor Público :  ** "+txtPLACAS3.Text+" ** , por favor corrija y vuelva a intentar";
                                                lblAsignado.Text = "";
                                            } 
                                            else // else placas 3
                                            { */
                                                SQLAgregar.InsertParameters["RFC"].DefaultValue = txtRFC.Text.ToUpper();
                                                SQLAgregar.InsertParameters["CAJON"].DefaultValue = txtCAJON.Text.ToUpper();
                                                SQLAgregar.InsertParameters["NOMBRE"].DefaultValue = txtNOMBRE.Text.ToUpper();
                                                SQLAgregar.InsertParameters["A_PATERNO"].DefaultValue = txtA_PATERNO.Text.ToUpper();
                                                SQLAgregar.InsertParameters["A_MATERNO"].DefaultValue = txtA_MATERNO.Text.ToUpper();
                                                SQLAgregar.InsertParameters["CARGO"].DefaultValue = txtCARGO.Text.ToUpper();
                                                SQLAgregar.InsertParameters["ÁREA"].DefaultValue = txtAREA.Text.ToUpper();
                                                SQLAgregar.InsertParameters["NIVEL"].DefaultValue = DPNIVEL.Text.ToUpper();
                                                SQLAgregar.InsertParameters["FECHA_DE_INGRESO"].DefaultValue = txtFECHA.Text.ToUpper();
                                                SQLAgregar.InsertParameters["MARCA"].DefaultValue = DPMARCA1.Text.ToUpper();
                                                SQLAgregar.InsertParameters["MODELO"].DefaultValue = txtMODELO.Text.ToUpper();
                                                SQLAgregar.InsertParameters["AÑO"].DefaultValue = DPAÑO1.Text.ToUpper();
                                                SQLAgregar.InsertParameters["ENTIDAD"].DefaultValue = DPENTIDAD1.Text.ToUpper();
                                                SQLAgregar.InsertParameters["PLACAS"].DefaultValue = txtPLACAS1.Text.ToUpper();
                                                SQLAgregar.InsertParameters["COLOR"].DefaultValue = txtCOLOR1.Text.ToUpper();
                                                SQLAgregar.InsertParameters["MARCA2"].DefaultValue = DPMARCA2.Text.ToUpper();
                                                SQLAgregar.InsertParameters["MODELO_V2"].DefaultValue = txtMODELO2.Text.ToUpper();
                                                SQLAgregar.InsertParameters["AÑO2"].DefaultValue = DPAÑO2.Text.ToUpper();
                                                SQLAgregar.InsertParameters["ENTIDAD2"].DefaultValue = DPENTIDAD2.Text.ToUpper();
                                                SQLAgregar.InsertParameters["PLACAS2"].DefaultValue = txtPLACAS2.Text.ToUpper();
                                                SQLAgregar.InsertParameters["COLOR2"].DefaultValue = txtCOLOR2.Text.ToUpper();
                                                SQLAgregar.InsertParameters["MARCA3"].DefaultValue = DPMARCA3.Text.ToUpper();
                                                SQLAgregar.InsertParameters["MODELO_V3"].DefaultValue = txtMODELO2.Text.ToUpper();
                                                SQLAgregar.InsertParameters["AÑO3"].DefaultValue = DPAÑO3.Text.ToUpper();
                                                SQLAgregar.InsertParameters["ENTIDAD3"].DefaultValue = DPENTIDAD3.Text.ToUpper();
                                                SQLAgregar.InsertParameters["PLACAS3"].DefaultValue = txtPLACAS3.Text.ToUpper();
                                                SQLAgregar.InsertParameters["COLOR3"].DefaultValue = txtCOLOR3.Text.ToUpper();
                                                SQLAgregar.Insert();
                                                if (IsValid)
                                                {
                                                    lblResultados.Text = "Asignación  Exitosa";
                                                    txtRFC.Text = "";
                                                    txtCAJON.Text = "";
                                                    txtNOMBRE.Text = "";
                                                    txtA_PATERNO.Text = "";
                                                    txtA_MATERNO.Text = "";
                                                    txtCARGO.Text = "";
                                                    txtAREA.Text = "";
                                                    DPNIVEL.Text = "";
                                                    txtFECHA.Text = "";
                                                    DPMARCA1.Text = "";
                                                    txtMODELO.Text = "";
                                                    DPAÑO1.Text = "";
                                                    DPENTIDAD1.Text = "";
                                                    txtPLACAS1.Text = "";
                                                    txtCOLOR1.Text = "";
                                                    //AUTO 2
                                                    DPMARCA2.Text = "";
                                                    txtMODELO2.Text = "";
                                                    DPAÑO2.Text = "";
                                                    DPENTIDAD2.Text = "";
                                                    txtPLACAS2.Text = "";
                                                    txtCOLOR2.Text = "";
                                                    //AUTO3
                                                    DPMARCA3.Text = "";
                                                    txtMODELO3.Text = "";
                                                    DPAÑO3.Text = "";
                                                    DPENTIDAD3.Text = "";
                                                    txtPLACAS3.Text = "";
                                                    txtCOLOR3.Text = "";
                                                    lblAsignado.Text = "";
                                                }
                                                else // else de agregar
                                                {
                                                    lblResultados.Text = "Hubo un problema";
                                                } // cierre del else de agregar usuario                                     
                                           // } // cierre else placas 3 deshabilitado
                                       // } // cierre de else placas 2 deshabilitado
                                  }// cierre del else de placas                            
                            } // cierre del else de cajon
                    } // cierre del else de RFC
                } // cierre del else de verificar las placas (después del try)          
            } catch (Exception mensaje)
            {
                lblResultados.Text = "Hubo un problema durante tu solicitud, porfavor vaya a la sección de -¿Ayuda?-" +
                "para poder identificar el problema junto con el siguiente mensaje : <br>" + mensaje.ToString();
            }
            
        }

        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("admin");
            Response.Redirect("Login_admin.aspx");
        }

        //boton de disponibilidad
        protected void Button1_Click(object sender, EventArgs e)
        {
            try { 
            SQLSELECT.SelectParameters["CAJON"].DefaultValue = txtCAJON.Text.ToUpper();
            SQLSELECT.DataSourceMode = SqlDataSourceMode.DataReader;
            OleDbDataReader CONFIR;
            CONFIR = (OleDbDataReader)SQLSELECT.Select(DataSourceSelectArguments.Empty);
            if (CONFIR.Read())
            {
                lblAsignado.Text = "Cajón ya asignado a un Servidor Público.";
                lblResultados.Text = "";
            }
            else
            {
                lblAsignado.Text = "Cajón por asignar";
                lblResultados.Text = "";
                }
            }catch(Exception)
            {
                lblResultados.Text = "Se Requiere un valor el campo del Estacionamiento para poder buscar disponibilidad.";
            }

        }

        protected void btnAbrir_Click(object sender, EventArgs e)
        {

        }

        protected void txtMODELO_TextChanged(object sender, EventArgs e)
        {

        }
    }
}