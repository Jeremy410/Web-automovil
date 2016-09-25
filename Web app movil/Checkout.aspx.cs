using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_app_movil
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            panelPago.Visible = false;

            if (Session["Marca"] != null) txtMarca.Text = (string) Session["Marca"];            

            if (Session["Modelo"] != null)
            {
                txtModelo.Text = (string)Session["Modelo"];
            }

            if (Session["Año"] != null)
            {
                txtAnio.Text = (string)Session["Año"];
            }

            if (Session["Asiento"] != null)
            {
                txtAsiento.Text = (string)Session["Asiento"];
            }

            if (Session["Color"] != null)
            {
                txtColor.Text = (string)Session["Color"];
            }

            if (Session["Aros"] != null)
            {
                txtAros.Text = (string)Session["Aros"];
            }

            if (Session["Tablero"] != null)
            {
                txtTablero.Text = (string)Session["Tablero"];
            }

            if (Session["Nombre"] != null)
            {
                txtNombre.Text = (string) Session["Nombre"];
            }

            if (Session["Apellido"] != null)
            {
                txtApellido.Text = (string)Session["Apellido"];
            }

            if (Session["Telefono"] != null)
            {
                txtTelefono.Text = (string)Session["Telefono"];
            }

            if (Session["Celular"] != null)
            {
                txtCelular.Text = (string)Session["Celular"];
            }

            if (Session["Direccion"] != null)
            {
                txtDireccion.Text = (string)Session["Direccion"];
            }

            if (Session["Tarjeta"] != null)
            {
                txtTarjeta.Text = (string)Session["Tarjeta"];
            }

            if (Session["CVC"] != null)
            {
                txtCVC.Text = (string)Session["CVC"];
            }

            if (Session["Fecha"] != null)
            {
                txtFecha.Text = (string)Session["Fecha"];
            }

            if (Session["Nombre"] != null)
            {
                panelPago.Visible = true;
            }
        }

        protected void btnSiguiente_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "Vehiculo comprado", "alert('Se ha realizado su compra satisfactoriamente.');", true);
        }

        protected void btnAnterior_Click(object sender, EventArgs e)
        {
            if(Session["Nombre"] == null)
            {
                Response.Redirect("Accesorios.aspx");
            }
            else
            {
                Response.Redirect("Pago.aspx");
            }            
        }
    }
}