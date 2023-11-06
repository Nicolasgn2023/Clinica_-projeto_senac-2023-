using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Clinic__projeto_senac__2023_
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\computer\\source\\repos\\Clinic_ projeto_senac (2023)\\App_Data\\Database1.mdf\";Integrated Security=True";
                string query = "SELECT * FROM clientes";

                SqlDataSource dataSource = new SqlDataSource(connectionString, query);



            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\computer\\source\\repos\\Clinic_ projeto_senac (2023)\\App_Data\\Database1.mdf\";Integrated Security=True";
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
                    string query = "INSERT INTO clientes (nome,sobrenome,email,senha) values (@nome,@sobrenome,@email,@senha)";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {

                        cmd.Parameters.AddWithValue("@nome", txbnome.Text);
                        cmd.Parameters.AddWithValue("@sobrenome", txbsobrenome.Text);
                        cmd.Parameters.AddWithValue("@senha", txbsenha.Text);
                        cmd.Parameters.AddWithValue("@email", txbemail.Text);
                        lblmerro.Text = "Conta criada com sucesso!";
                        lblmerro.ForeColor = System.Drawing.Color.Green;
                        cmd.ExecuteNonQuery();

                    }
                    con.Close();
                }


                txbnome.Text = " ";
                txbsobrenome.Text = " ";
                txbemail.Text = " ";
                txbsenha.Text = " ";
            }
            catch
            {
                lblmerro.Text = "Ocorreu um erro! Tente novamente.";
                lblmerro.ForeColor = System.Drawing.Color.Red;
            }
        }


    }
}