using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Web.Services.Description;
using System.Reflection.Emit;

namespace Administrador_de_Estacionamiento.Inicio_de_admin
{
    public partial class Inicio_Estacionamiento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["admin"] != null)
            {
                lblUsuario.Text = "Bienvenid@ admin : " + Session["admin"];
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


        protected void btnBuscar_Click1(object sender, EventArgs e)
        {
            try
            {
                SQLBUSCAR.SelectParameters["CAJON"].DefaultValue = txtResultado.Text.ToUpper();
                SQLBUSCAR.DataSourceMode = SqlDataSourceMode.DataReader;
                OleDbDataReader datos;
                datos = (OleDbDataReader)SQLBUSCAR.Select(DataSourceSelectArguments.Empty);
                if (datos.Read())
                {
                    lblResultado.Text = " Se encontró a : <br>" +
                        "Nombre : " + datos["NOMBRE"] + "<br>Apellido Paterno : " + datos["A_PATERNO"] + "<br>Apellido Materno : " + datos["A_MATERNO"] +
                        "<br>Cargo : " + datos["CARGO"] + "<br>Área : " + datos["ÁREA"] +
                        "<br>Nivel: " + datos["NIVEL"] + "<br>Fecha de Asignación : " + datos["FECHA_DE_INGRESO"]
                        + "<br>Vehículo 1 : " + datos["MARCA"] + "  " + datos["MODELO"] + "  " + datos["AÑO"] + "  " + datos["COLOR"]
                        + "  " + datos["PLACAS"] + "  " + datos["ENTIDAD"] + "<br>Vehículo 2: " + datos["MARCA2"] + " " + datos["MODELO_V2"]
                        + "  " + datos["AÑO2"] + "  " + datos["COLOR2"] + " " + datos["PLACAS2"] + " " + datos["ENTIDAD2"];

                }
                else
                {
                    lblResultado.Text = "**Por asignar cajón Nº : " + txtResultado.Text + ".";
                }
            }
            catch (Exception mensaje)
            {

                lblResultado.Text = "Lo siento, hubo un problema durante tu solicitud por favor identifica" +
                    " el siguiente mensaje :  <br>" + mensaje.ToString() + "<br><br> y vaya a la sección de --¿Ayuda?-- para solucionar el problema.";
            }
        }

        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("admin");
            Response.Redirect("Login_admin.aspx");
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            RequiredFieldValidator1.Text = string.Empty;
            lblResultado.Text = string.Empty;
            txtResultado.Text = string.Empty;
        }
    }
}