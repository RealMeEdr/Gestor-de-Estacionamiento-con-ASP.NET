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
    public partial class Eliminar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           /* if (Session["admin"] != null)
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
            } */
        }
        protected void OutPutDay()
        { // esto es para la fecha
            Response.Write(DateTime.Now.ToString("D"));
        }

        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("admin");
            Response.Redirect("Login_admin.aspx");
        }

        protected void btnBuscar_Click1(object sender, EventArgs e)
        {

            try
            {
                SQLBUSCAR.SelectParameters["RFC"].DefaultValue = txtBuscador.Text.ToUpper();
                SQLBUSCAR.DataSourceMode = SqlDataSourceMode.DataReader;
                OleDbDataReader datos;
                datos = (OleDbDataReader)SQLBUSCAR.Select(DataSourceSelectArguments.Empty);
                if (datos.Read())
                {
                    RequiredFieldValidator1.Text = "";
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
                    lblResultado.Text = "**No se ha encontrado el RFC :  " + txtBuscador.Text + " en la base de datos, porfavor verifique que esté bien escrito y vuelva a intentar";
                    RequiredFieldValidator1.Text = string.Empty;
                }
            }
            catch (Exception mensaje)
            {
                RequiredFieldValidator1.Text = "";
                lblResultado.Text = "Lo siento, hubo un problema durante tu solicitud por favor identifica" +
                    " el siguiente mensaje :  <br>" + mensaje.Message + "<br><br> y vaya a la sección de --¿Ayuda?-- para solucionar el problema.";
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            try { 
            SQLBUSCAR.DeleteParameters["RFC"].DefaultValue = txtBuscador.Text.ToUpper();
            int cant;
            cant = SQLBUSCAR.Delete();
            if (cant == 1)
            {
                lblResultado.Text = "Se Eliminó la Información exitosamente";
                    RequiredFieldValidator1.Text = string.Empty;
                    txtBuscador.Text = string.Empty;
            }
            else
            {
                lblResultado.Text = "No se pudo borrar la información o hubo algún problema al intentar hacerlo, por favor intente de nuevo.";
                    RequiredFieldValidator1.Text = "";
            }
            }catch(Exception mensaje)
            {
               lblResultado.Text = "Lo siento, hubo un problema durante tu solicitud por favor identifica" +
                    " el siguiente mensaje :  <br>" + mensaje.Message + "<br><br> y vaya a la sección de --¿Ayuda?-- para solucionar el problema.";
                RequiredFieldValidator1.Text = "";
            }
        }
    }
    
}