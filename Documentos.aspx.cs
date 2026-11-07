using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Parcial2
{
    public partial class Documentos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["nombre"] == null)
            {
                Response.Redirect("Registro.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    this.Label2.Text = "Bienvenido/a, " + Session["nombre"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.FileUpload1.SaveAs(Server.MapPath(".") + "/Subidas/"+ this.FileUpload1.FileName);
            this.Label1.Text = "Archivo subido correctamente";
        }
    }
}