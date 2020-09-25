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
    public partial class Estacionamiento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["usuario"] != null)
            {
                lblUsuario.Text = "Bienvenid@ : " + Session["usuario"];
            }
            else if (Session["admin"] != null)
            {
                lblUsuario.Text = "Bienvenid@ admin : " + Session["admin"];
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

        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("Login_usuarios.aspx");
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            lblResultado.Text = string.Empty;
            txtResultado.Text = string.Empty;
            RequiredFieldValidator1.Text = "";
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            { 
            SQLBUSCADOR.SelectParameters["CAJON"].DefaultValue = txtResultado.Text.ToUpper();
                SQLBUSCADOR.DataSourceMode = SqlDataSourceMode.DataReader;
                OleDbDataReader datos;
                datos = (OleDbDataReader)SQLBUSCADOR.Select(DataSourceSelectArguments.Empty);
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
            }catch (Exception m)
            {
                lblResultado.Text = "Lo siento, hubo un problema durante tu solicitud por favor identifica" +
                    " el siguiente mensaje :  <br>" + m.Message + "<br><br> y vaya a la sección de --¿Ayuda?-- para solucionar el problema.";
            }
        }
    }
}