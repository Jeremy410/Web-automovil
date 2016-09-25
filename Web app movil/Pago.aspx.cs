using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_app_movil
{
    public partial class Pago : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Nombre"] != null)
            {
                txtNombre.Text = (string)Session["Nombre"];
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
        }

        protected void btnSiguiente_Click(object sender, EventArgs e)
        {
            Session["Nombre"] = txtNombre.Text;
            Session["Apellido"] = txtApellido.Text;
            Session["Telefono"] = txtTelefono.Text;
            Session["Celular"] = txtCelular.Text;
            Session["Direccion"] = txtDireccion.Text;
            Session["Tarjeta"] = txtTarjeta.Text;
            Session["CVC"] = txtCVC.Text;
            Session["Fecha"] = txtFecha.Text;

            Response.Redirect("Checkout.aspx");
        }

        protected void btnAnterior_Click(object sender, EventArgs e)
        {
            Response.Redirect("ConfirmacionCompra.aspx");
        }
    }
}