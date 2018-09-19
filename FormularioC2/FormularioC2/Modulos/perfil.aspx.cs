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
    public partial class perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String usuario = Request.QueryString["valor"];
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Sistema_Ventas"].ConnectionString);
                string strSQL = "SELECT Nombre FROM Cliente WHERE NumeroDocumento ='" + usuario + "'";
                SqlCommand com = new SqlCommand(strSQL, con);
                con.Open();
                SqlDataReader reader = com.ExecuteReader();
                if (reader.Read())
                {
                    LabelAdmin.Text = reader.GetString(0);
                }
                con.Close();
            }
            catch (Exception ex)
            {

            }
        }

        protected void ibClientes_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ibProductos_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ibClientes_Click1(object sender, ImageClickEventArgs e)
        {

        }
    }
}