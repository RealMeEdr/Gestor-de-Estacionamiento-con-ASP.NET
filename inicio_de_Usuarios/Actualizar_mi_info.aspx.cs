using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace Administrador_de_Estacionamiento.inicio_de_Usuarios
{
    public partial class Actualizar_mi_info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] != null)
            {
                lblUsuario.Text = "" + Session["usuario"];
                txtADMIN1.Text = "Actualizó : " + Session["usuario"];
            }

            else if (Session["admin"] != null)
            {
                lblUsuario.Text = "" + Session["admin"];
                txtADMIN1.Text = "Actualizó : " + Session["admin"];
            }
            else
            {
                Response.Redirect("Login_usuarios.aspx");
            }

        }
        protected void OutPutDay()
        {
            Response.Write(DateTime.Now.ToString("D"));
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtPLACAS1.Text == txtPLACAS2.Text)
                {
                    lblResultados.Text = "No puede DUPLICAR las placas del Vehíuclo 1 con las del Vehículo 2 o viceversa.";
                }
                else if (txtPLACAS1.Text == txtPLACAS3.Text)
                {
                    lblResultados.Text = "No puede DUPLICAR las placas del Vehíuclo 1 con las del Vehículo 3 o viceversa.";
                }
                else
                {
                    SQLactualizar.UpdateParameters["RFC"].DefaultValue = txtRFC.Text.ToUpper();
                    SQLactualizar.UpdateParameters["CAJON"].DefaultValue = txtCAJON.Text.ToUpper();
                    SQLactualizar.UpdateParameters["NOMBRE"].DefaultValue = txtNOMBRE.Text.ToUpper();
                    SQLactualizar.UpdateParameters["A_PATERNO"].DefaultValue = txtA_PATERNO.Text.ToUpper();
                    SQLactualizar.UpdateParameters["A_MATERNO"].DefaultValue = txtA_MATERNO.Text.ToUpper();
                    SQLactualizar.UpdateParameters["CARGO"].DefaultValue = txtCARGO.Text.ToUpper();
                    SQLactualizar.UpdateParameters["ÁREA"].DefaultValue = txtAREA.Text.ToUpper();
                    SQLactualizar.UpdateParameters["NIVEL"].DefaultValue = txtNIVEL.Text.ToUpper();
                    SQLactualizar.UpdateParameters["FECHA_DE_INGRESO"].DefaultValue = txtFECHA.Text.ToUpper();
                    SQLactualizar.UpdateParameters["MARCA"].DefaultValue = txtMARCA1.Text.ToUpper();
                    SQLactualizar.UpdateParameters["MODELO"].DefaultValue = txtMODELO.Text.ToUpper();
                    SQLactualizar.UpdateParameters["AÑO"].DefaultValue = txtAÑO1.Text.ToUpper();
                    SQLactualizar.UpdateParameters["ENTIDAD"].DefaultValue = txtENTIDAD1.Text.ToUpper();
                    SQLactualizar.UpdateParameters["PLACAS"].DefaultValue = txtPLACAS1.Text.ToUpper();
                    SQLactualizar.UpdateParameters["COLOR"].DefaultValue = txtCOLOR1.Text.ToUpper();
                    SQLactualizar.UpdateParameters["MARCA2"].DefaultValue = txtMARCA2.Text.ToUpper();
                    SQLactualizar.UpdateParameters["MODELO_V2"].DefaultValue = txtMODELO2.Text.ToUpper();
                    SQLactualizar.UpdateParameters["AÑO2"].DefaultValue = txtAÑO2.Text.ToUpper();
                    SQLactualizar.UpdateParameters["ENTIDAD2"].DefaultValue = txtENTIDAD2.Text.ToUpper();
                    SQLactualizar.UpdateParameters["PLACAS2"].DefaultValue = txtPLACAS2.Text.ToUpper();
                    SQLactualizar.UpdateParameters["COLOR2"].DefaultValue = txtCOLOR2.Text.ToUpper();
                    SQLactualizar.UpdateParameters["MARCA3"].DefaultValue = txtMARCA3.Text.ToUpper();
                    SQLactualizar.UpdateParameters["MODELO_V3"].DefaultValue = txtMODELO3.Text.ToUpper();
                    SQLactualizar.UpdateParameters["AÑO3"].DefaultValue = txtAÑO3.Text.ToUpper();
                    SQLactualizar.UpdateParameters["ENTIDAD3"].DefaultValue = txtENTIDAD3.Text.ToUpper();
                    SQLactualizar.UpdateParameters["PLACAS3"].DefaultValue = txtPLACAS3.Text.ToUpper();
                    SQLactualizar.UpdateParameters["COLOR3"].DefaultValue = txtCOLOR3.Text.ToUpper();
                    int cant;
                    cant = SQLactualizar.Update();
                    if (cant == 1)
                    {
                        SQLHISTORIAL.InsertParameters["RFC"].DefaultValue = txtRFC.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["CAJON"].DefaultValue = txtCAJON.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["NOMBRE"].DefaultValue = txtNOMBRE.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["A_PATERNO"].DefaultValue = txtA_PATERNO.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["A_MATERNO"].DefaultValue = txtA_MATERNO.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["CARGO"].DefaultValue = txtCARGO.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["ÁREA"].DefaultValue = txtAREA.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["NIVEL"].DefaultValue = txtNIVEL.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["FECHA_DE_INGRESO"].DefaultValue = txtFECHA.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["FECHA_DE_REASIGNACIÓN"].DefaultValue = txtREASIG.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["MARCA"].DefaultValue = txtMARCA1.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["MODELO"].DefaultValue = txtMODELO.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["AÑO"].DefaultValue = txtAÑO1.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["ENTIDAD"].DefaultValue = txtENTIDAD1.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["PLACAS"].DefaultValue = txtPLACAS1.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["COLOR"].DefaultValue = txtCOLOR1.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["MARCA2"].DefaultValue = txtMARCA2.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["MODELO_V2"].DefaultValue = txtMODELO2.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["AÑO2"].DefaultValue = txtAÑO2.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["ENTIDAD2"].DefaultValue = txtENTIDAD2.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["PLACAS2"].DefaultValue = txtPLACAS2.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["COLOR2"].DefaultValue = txtCOLOR2.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["MARCA3"].DefaultValue = txtMARCA3.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["MODELO_V3"].DefaultValue = txtMODELO3.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["AÑO3"].DefaultValue = txtAÑO3.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["ENTIDAD3"].DefaultValue = txtENTIDAD3.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["PLACAS3"].DefaultValue = txtPLACAS3.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["COLOR3"].DefaultValue = txtCOLOR3.Text.ToUpper();
                        SQLHISTORIAL.InsertParameters["ADMIN"].DefaultValue = txtADMIN1.Text.ToUpper();
                        SQLHISTORIAL.Insert();
                        if (IsValid)
                        {
                            lblResultados.Text = "Se han Actualizado los Datos, por favor pulse buscar RFC de nuevo para verificar que se realizó el(los) Cambio(s)";
                            txtCAJON.Text = "";
                            txtNOMBRE.Text = "";
                            txtA_PATERNO.Text = "";
                            txtA_MATERNO.Text = "";
                            txtCARGO.Text = "";
                            txtAREA.Text = "";
                            txtNIVEL.Text = "";
                            txtFECHA.Text = "";
                            txtMARCA1.Text = "";
                            txtMODELO.Text = "";
                            txtAÑO1.Text = "";
                            txtENTIDAD1.Text = "";
                            txtPLACAS1.Text = "";
                            txtCOLOR1.Text = "";
                            //AUTO 2
                            txtMARCA2.Text = "";
                            txtMODELO2.Text = "";
                            txtAÑO2.Text = "";
                            txtENTIDAD2.Text = "";
                            txtPLACAS2.Text = "";
                            txtCOLOR2.Text = "";
                            //AUTO3
                            txtMARCA3.Text = "";
                            txtMODELO3.Text = "";
                            txtAÑO3.Text = "";
                            txtENTIDAD3.Text = "";
                            txtPLACAS3.Text = "";
                            txtCOLOR3.Text = "";
                        }
                    }
                    else if (cant == 0)
                    {
                        lblResultados.Text = "Hubo un problema durante tu solicitud, si persiste por favor vaya al área correspondiente para poder ayudarle.";
                        /*SQLactualizar.SelectParameters["RFC"].DefaultValue = txtRFC.Text.ToUpper();
                        SQLactualizar.SelectParameters["CAJON"].DefaultValue = txtCAJON.Text.ToUpper();
                        SQLactualizar.SelectParameters["PLACAS"].DefaultValue = txtPLACAS1.Text.ToUpper();
                        SQLactualizar.DataSourceMode = SqlDataSourceMode.DataReader;
                        OleDbDataReader datos;
                        datos = (OleDbDataReader)SQLactualizar.Select(DataSourceSelectArguments.Empty);
                        if (datos.Read())
                        {
                            lblResultados.Text = "Estas tratando de duplicar el RFC, CAJON O PLACAS DEL VEHÍCULO 1, por lo cuál" +
                                "no se pueden actualizar los datos que solicitaste.<br> Corrije estos datos y vuelve a intentar.";
                        } */

                    }
                }

            }
            catch (Exception mensaje)
            {
                lblResultados.Text = "Hubo un problema durante tu solicitud, porfavor vaya a la sección de -¿Ayuda?-" +
                    "para poder identificar el problema junto con el siguiente mensaje : <br><br>" + mensaje.Message;
            }
        }

        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Session.Remove("admin");
            Response.Redirect("Login_usuarios.aspx");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                SQLBUSCAR.SelectParameters["RFC"].DefaultValue = txtRFC.Text;
                SQLBUSCAR.DataSourceMode = SqlDataSourceMode.DataReader;
                OleDbDataReader datos;
                datos = (OleDbDataReader)SQLBUSCAR.Select(DataSourceSelectArguments.Empty);
                if (datos.Read())
                {
                    txtCAJON.Text = datos["CAJON"].ToString();
                    txtNOMBRE.Text = datos["NOMBRE"].ToString();
                    txtA_PATERNO.Text = datos["A_PATERNO"].ToString();
                    txtA_MATERNO.Text = datos["A_MATERNO"].ToString();
                    txtCARGO.Text = datos["CARGO"].ToString();
                    txtAREA.Text = datos["ÁREA"].ToString();
                    txtNIVEL.Text = datos["NIVEL"].ToString();
                    txtFECHA.Text = datos["FECHA_DE_INGRESO"].ToString();
                    txtMARCA1.Text = datos["MARCA"].ToString();
                    txtMODELO.Text = datos["MODELO"].ToString();
                    txtAÑO1.Text = datos["AÑO"].ToString();
                    txtENTIDAD1.Text = datos["ENTIDAD"].ToString();
                    txtPLACAS1.Text = datos["PLACAS"].ToString();
                    txtCOLOR1.Text = datos["COLOR"].ToString();
                    //AUTO 2
                    txtMARCA2.Text = datos["MARCA2"].ToString();
                    txtMODELO2.Text = datos["MODELO_V2"].ToString();
                    txtAÑO2.Text = datos["AÑO2"].ToString();
                    txtENTIDAD2.Text = datos["ENTIDAD2"].ToString();
                    txtPLACAS2.Text = datos["PLACAS2"].ToString();
                    txtCOLOR2.Text = datos["COLOR2"].ToString();
                    //AUTO3
                    txtMARCA3.Text = datos["MARCA3"].ToString();
                    txtMODELO3.Text = datos["MODELO_V3"].ToString();
                    txtAÑO3.Text = datos["AÑO3"].ToString();
                    txtENTIDAD3.Text = datos["ENTIDAD3"].ToString();
                    txtPLACAS3.Text = datos["PLACAS3"].ToString();
                    txtCOLOR3.Text = datos["COLOR3"].ToString();
                    lblResultados.Text = "Se encontró a " + txtNOMBRE.Text + " " + txtA_PATERNO.Text + "<br>  Asociad@ con el RFC : " + txtRFC.Text.ToUpper();

                }
                else
                {
                    lblResultados.Text = "el RFC ** " + txtRFC.Text + " **, no está registrado en nuestra base de datos, " +
                        "verifique que este bien escrito y vuelva a intentar.";
                }
            }
            catch (Exception m)
            {
                lblResultados.Text = m.Message;
            }
        }
    }
}