using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clinic__projeto_senac__2023_
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = txbemail.Text;
            string password = txbsenha.Text;

            if(ValidarLogin(username,password))
            {
                FormsAuthentication.SetAuthCookie(username, false);
                Response.Redirect("dashboard.aspx");
            }
            else
            {
                lblerrologin.Text = "Credenciais incorretas! Tente novamente.";
                lblerrologin.ForeColor = System.Drawing.Color.Red;
            }

    
        
        
        
       
      
        
        }

        private bool ValidarLogin(string username, string password)
        {
            string ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            string query = "SELECT COUNT(*) FROM clientes WHERE email = @email AND senha = @senha";

            using (SqlConnection con = new SqlConnection(ConnectionString))
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                con.Open();

                cmd.Parameters.Add(new SqlParameter("@email", username));
                cmd.Parameters.Add(new SqlParameter("@senha", password));

                int resultado = (int)cmd.ExecuteScalar();
                

                con.Close();
                return resultado > 0;
               
            }
        }
    }


}