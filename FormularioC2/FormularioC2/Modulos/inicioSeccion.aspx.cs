using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace FormularioC2.Modulos
{
    public partial class inicioSeccion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            leerUltimaFecha();
        }

        protected void btIngresar_Click(object sender, EventArgs e)
        {
            string usuario = txUser.Value;
            string contrasenia = txContraseniaInicio.Value;
            string Documento = "";
            string ContraseniaDB = "";
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Sistema_Ventas"].ConnectionString);
                string strSQL = "SELECT NumeroDocumento,Contrasenia FROM Cliente WHERE NumeroDocumento ='" + usuario+"'";
                SqlCommand com = new SqlCommand(strSQL, con);
                con.Open();
                SqlDataReader reader = com.ExecuteReader();
                if (reader.Read())
                {
                    Documento = reader.GetString(0);
                    ContraseniaDB = reader.GetString(1);
                }
                con.Close();
            }
            catch (Exception ex)
            {

            }
            if (Documento == usuario && ContraseniaDB == contrasenia && Documento !="")
            {
                escribirUltimaFecha();
                Response.Redirect("perfil.aspx?valor=" + usuario);
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "id", "validar_inicio()", true);
            }
        }

        protected void Salir_Click(object sender, EventArgs e)
        {
            
        }

        protected void escribirUltimaFecha(){
            string path = Server.MapPath("/Scripts/fecha.txt");
            DateTime now = DateTime.Now;
            string fecha = now.ToString();
            File.WriteAllText(path, fecha);
        }

        protected void leerUltimaFecha()
        {
            string path = Server.MapPath("/Scripts/fecha.txt");
            string readText = File.ReadAllText(path);
            LabelFecha.Text = readText.ToString();
        }

    }
}