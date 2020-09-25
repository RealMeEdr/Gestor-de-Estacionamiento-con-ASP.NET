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
    public partial class Login_usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            try
            {
                Session["usuario"] = txtUsuario.Text;
                SQLusuario.SelectParameters["usuario"].DefaultValue = txtUsuario.Text;
                SQLusuario.SelectParameters["contraseña"].DefaultValue = txtContraseña.Text;
                SQLusuario.DataSourceMode = SqlDataSourceMode.DataReader;
                OleDbDataReader datos;
                datos = (OleDbDataReader)SQLusuario.Select(DataSourceSelectArguments.Empty);
                if (datos.Read())
                {
                    Response.Redirect("Estacionamiento.aspx");
                }
                else
                {
                    lblResultado.Text = "Usuario y/o Contraseña incorrecto";

                }
            }
            catch(Exception m)
            {
                lblerror.Text = m.Message;
            }
            finally
            {

            }
        }

        protected void btnRegistrar_Click1(object sender, EventArgs e)
        {
            try
            {
                
                SQLusuario.SelectParameters["usuario"].DefaultValue = txtUsuario.Text;
                SQLusuario.SelectParameters["contraseña"].DefaultValue = txtContraseña.Text;
                SQLusuario.DataSourceMode = SqlDataSourceMode.DataReader;
                OleDbDataReader datos;
                datos = (OleDbDataReader)SQLusuario.Select(DataSourceSelectArguments.Empty);
                if (datos.Read())
                {
                    lblResultado.Text = "Ya existe un usuario o contraseña";
                }
                else
                {
                    SQLusuario.InsertParameters["usuario"].DefaultValue = txtUsuario.Text;
                    SQLusuario.InsertParameters["contraseña"].DefaultValue = txtContraseña.Text;
                    SQLusuario.Insert();
                    if(IsValid)
                    { 
                    lblResultado.Text = "Registro Realizado con éxito, ya puede iniciar sesión";
                    } 
                }
            }
            catch (Exception m)
            {
                lblerror.Text = m.Message;
            }
            finally
            {

            }
        }
    }
}