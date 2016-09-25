using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_app_movil
{
    public partial class Accesorios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {          
            if (IsPostBack && !Request.Form.AllKeys.Contains("btnSiguiente") && !Request.Form.AllKeys.Contains("btnAnterior"))
            {
                ddAsientos.Items.Clear();
            }
            
            if (Session["Marca"] != null)
            {
                ddAsientos.Items.Add(new ListItem("-- Seleccione un tipo de asiento --", ""));
                ddAsientos.Items.Insert(1, "Sedan");
                ddAsientos.Items.Insert(2, "Leder");

                if (Session["Marca"].Equals("Audi"))
                {
                    ddAsientos.Items.Insert(3, "Sedan - Premium");
                    ddAsientos.Items.Insert(4, "Leder - Premium");
                }
            } else
            {
                ddAsientos.Items.Add(new ListItem("-- Seleccione un tipo de asiento --", ""));
            }

            ddAros.Items.Add(new ListItem("-- Seleccione algun aro --", ""));
            ddAros.Items.Insert(1, "SSR Watannabes RS");
            ddAros.Items.Insert(2, "Mugen M7's");
            ddAros.Items.Insert(3, "BBS LM");
            ddAros.Items.Insert(4, "ENKEI RP03");
            ddAros.Items.Insert(5, "O.Z. Superleggera III");

            ddTableros.Items.Add(new ListItem("-- Seleccione algun tablero --", ""));
            ddTableros.Items.Insert(1, "Madera maciza");
            ddTableros.Items.Insert(2, "Aglomerado's");
            ddTableros.Items.Insert(3, "Aglomerado con melamina");
            ddTableros.Items.Insert(4, "Contrachapado");

            if (Session["Asiento"] != null)
            {
                try
                {
                    ddAsientos.Items.FindByText((string)Session["Asiento"]).Selected = true;
                } catch (NullReferenceException ex)
                {
                    Console.WriteLine(ex.Data);
                    ddAsientos.Items.FindByText("-- Seleccione un tipo de asiento --").Selected = true;
                }
                
                Session["Asiento"] = null;
            }
            if (Session["Aros"] != null)
            {
                ddAros.Items.FindByText((string)Session["Aros"]).Selected = true;
                Session["Aros"] = null;
            }

            if (Session["Tablero"] != null)
            {
                ddTableros.Items.FindByText((string)Session["Tablero"]).Selected = true;
                Session["Tablero"] = null;
            }
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            Session["Asiento"] = ddAsientos.SelectedItem.Text;
            Session["Aros"] = ddAros.SelectedItem.Text;
            Session["Tablero"] = ddTableros.SelectedItem.Text;

            Response.Redirect("ConfirmacionCompra.aspx");
        }

        protected void btnAnterior_Click(object sender, EventArgs e)
        {
            Session["Asiento"] = ddAsientos.SelectedItem.Text;
            Session["Aros"] = ddAros.SelectedItem.Text;
            Session["Tablero"] = ddTableros.SelectedItem.Text;

            Response.Redirect("Vehiculo.aspx");
        }
    }
}