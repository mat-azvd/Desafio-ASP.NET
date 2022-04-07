using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrudEstoque.Modelo;
using CrudEstoque.DAL;

namespace CrudEstoque.Paginas
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
        }

        protected void btLogar_Click(object sender, EventArgs e)
        {
            string email = TextEmail.Text;
            string senha = TextSenha.Text;


            DALUsuario du = new DALUsuario();
            ModeloUsuario u = du.GetRegistro(email);

            if (u.email != null)
            {

                u.email = u.email.Trim();
                u.senha = u.senha.Trim();

                if (string.Equals(email, u.email) && string.Equals(senha, u.senha))
                {
                    Session["ID"] = u.ID;
                    Session["nome"] = u.nome;
                    Session["email"] = email;
                    Response.Redirect("~/Paginas/produtos.aspx");

                }

                else
                {

                    String msg = "<script> alert('Login ou senha incorretos!!!!'); </script>";
                    Response.Write(msg);
                    //Response.Write("<script> alert('E-mail ou senha incorretos!');</script>");

                }

            }

            else
            {
                String msg = "<script> alert('Digite o Login!!!!'); </script>";
                Response.Write(msg);

            }

        }

        protected void btCadastrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Paginas/Cadastro.aspx");
        }
    }
}