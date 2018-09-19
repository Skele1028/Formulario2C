using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



namespace FormularioC2.Modulos
{
    public partial class registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btIngresar_Click(object sender, EventArgs e)
        {
            string tipoDocumento = txTipoDocumento.Text;
            string Documento = txDocumento.Text;
            string Nombre = txNombre.Text;
            string SegundoNombre = txSegundoNombre.Text;
            string Apellido = txApellido.Text;
            string SegundoApellido = txSegundoApellido.Text;
            string Correo = txCorreo.Text;
            string Contrasenia = ;

            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Sistema_Ventas"].ConnectionString);
                string strSQL = "INSERT INTO Cliente VALUES ('" + tipoDocumento + "','" + Documento + "','"
                    + Nombre + "','" + SegundoNombre + "','" + Apellido + "','" + SegundoApellido + "','"
                    + Correo + "','" + Contrasenia + "')";
                SqlCommand com = new SqlCommand(strSQL, con);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {

            }
        }
    }
}