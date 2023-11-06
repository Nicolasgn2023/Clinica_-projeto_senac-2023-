using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Clinic__projeto_senac__2023_
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Efetua o logout do usuário (remove o cookie de autenticação)
            FormsAuthentication.SignOut();

            // Redireciona o usuário de volta para a página de login
            Response.Redirect("Login.aspx");
        }
    }
}