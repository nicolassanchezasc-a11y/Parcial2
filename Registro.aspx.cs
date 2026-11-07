using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial2
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                this.Label1.Text = "Registro exitoso";
            HttpCookie Cookiecontraseña= new HttpCookie("contrasena", this.TextBox4.Text);
            Cookiecontraseña.Expires = DateTime.Now.AddDays(30);
            this.Response.Cookies.Add(Cookiecontraseña);

            this.Session["nombre"] = this.TextBox2.Text;
            this.Session.Timeout = 1;

            this.Response.Redirect("Documentos.aspx");


            }else { this.Label1.Text = "Error en el registro"; }
        }

       
    }
}