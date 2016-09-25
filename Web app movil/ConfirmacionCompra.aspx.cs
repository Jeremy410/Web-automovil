using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_app_movil
{
    public partial class ConfirmacionCompra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Random random = new Random();

            txtPrecio.Text = random.Next(400000, 500000).ToString();

            if (Session["Marca"] != null) txtMarca.Text = (string)Session["Marca"];

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
        }

        protected void btnSiguiente_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pago.aspx");
        }

        protected void btnAnterior_Click(object sender, EventArgs e)
        {
            Response.Redirect("Accesorios.aspx");
        }
    }
}