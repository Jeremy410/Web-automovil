using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_app_movil
{
    public partial class Marca : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(ddMarca.SelectedIndex < 0)
            {
                ddMarca.Items.Add(new ListItem("-- Seleccione una marca --", ""));
                ddMarca.Items.Insert(1, "Kia");
                ddMarca.Items.Insert(2, "Audi");
                ddMarca.Items.Insert(3, "Toyota");
            }

            if (IsPostBack && !Request.Form.AllKeys.Contains("btnSiguiente"))
            {
                ddColor.Items.Clear();
                ddAño.Items.Clear();
            }

            ddModelo.Items.Add(new ListItem("-- Seleccione un modelo --", "")); 
           
            ddColor.Items.Add(new ListItem("-- Seleccione un color --", ""));
            ddColor.Items.Insert(1, "Azul");
            ddColor.Items.Insert(2, "Negro");
            ddColor.Items.Insert(3, "Blanco");
            ddColor.Items.Insert(4, "Rojo");            

            int añoDefault = 2000;
            ddAño.Items.Add(new ListItem("-- Seleccione un año --", ""));
            for (int i = 1; i <= 17; i++) {
                ddAño.Items.Insert(i, añoDefault.ToString());
                añoDefault++;
            }

            if (Session["Marca"] != null) { 
                ddMarca.Items.FindByText((string)Session["Marca"]).Selected = true;
                Session["Marca"] = null;
            }
            if (Session["Modelo"] != null)
            {
                getModelo(true);
                Session["Modelo"] = null;
            }
            if (Session["Año"] != null)
            {
                ddAño.Items.FindByText((string)Session["Año"]).Selected = true;
                Session["Año"] = null;
            }
            if (Session["Color"] != null)
            {
                ddColor.Items.FindByText((string)Session["Color"]).Selected = true;
                Session["Color"] = null;
            }
        }
        protected void Button_Click(object sender, EventArgs e)
        {
            Session["Marca"] = ddMarca.SelectedItem.Text;
            Session["Modelo"] = ddModelo.SelectedItem.Text;
            Session["Año"] = ddAño.SelectedItem.Text;
            Session["Color"] = ddColor.SelectedItem.Text;

            Response.Redirect("Accesorios.aspx");
        }
        
        protected void Marca_Changed(object sender, EventArgs e)
        {
            getModelo(false);
        }

        private void getModelo(bool setSelectedModel)
        {
            ddModelo.Items.Clear();
            switch (ddMarca.SelectedItem.Text)
            {
                case "Kia":
                    ddModelo.Items.Add(new ListItem("-- Seleccione un modelo --", ""));
                    ddModelo.Items.Insert(1, "K3");
                    ddModelo.Items.Insert(2, "K5");
                    ddModelo.Items.Insert(3, "K7");
                    break;
                case "Audi":
                    ddModelo.Items.Add(new ListItem("-- Seleccione un modelo --", ""));
                    ddModelo.Items.Insert(1, "A4");
                    ddModelo.Items.Insert(2, "A5");
                    ddModelo.Items.Insert(3, "A6");
                    break;
                case "Toyota":
                    ddModelo.Items.Add(new ListItem("-- Seleccione un modelo --", ""));
                    ddModelo.Items.Insert(1, "Corolla");
                    ddModelo.Items.Insert(2, "Camry");
                    ddModelo.Items.Insert(3, "Prado");
                    break;
                default:
                    ddModelo.Items.Add(new ListItem("-- Seleccione un modelo --", ""));
                    break;

            }

            if (setSelectedModel) ddModelo.Items.FindByText((string)Session["Modelo"]).Selected = true;
        }
    }
}