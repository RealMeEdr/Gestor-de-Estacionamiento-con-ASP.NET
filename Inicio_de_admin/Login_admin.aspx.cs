using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace Administrador_de_Estacionamiento.Inicio_de_admin
{
    public partial class Login_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            try
            {
                Session["admin"] = txtNombre.Text;
                SQLusuario.SelectParameters["Nombre"].DefaultValue = txtNombre.Text;
                SQLusuario.SelectParameters["Usuario"].DefaultValue = txtUsuario.Text;
                SQLusuario.SelectParameters["Contraseña"].DefaultValue = txtContraseña.Text;
                SQLusuario.DataSourceMode = SqlDataSourceMode.DataReader;
                OleDbDataReader datos;
                datos = (OleDbDataReader)SQLusuario.Select(DataSourceSelectArguments.Empty);
                if (datos.Read())
                {
                    Response.Redirect("Inicio_Estacionamiento.aspx");
                }
                else
                {
                    lblResultado.Text = "No eres administrativo O el campo de nombre, usuario o contraseña son incorrectos";
                }
            }
            catch (Exception m)
            {
                lblerror.Text = m.Message;
            }

        }
    }
}