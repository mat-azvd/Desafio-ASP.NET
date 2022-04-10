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
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
        }

        protected void btVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Paginas/Login.aspx");
        }

        protected void btCadastrar_Click(object sender, EventArgs e)
        {
            string nome = txtCadastroNome.Text;
            string email = txtCadastroEmail.Text;
            string senha = txtCadastroSenha1.Text;

            DALUsuario du = new DALUsuario();
            ModeloUsuario obj = new ModeloUsuario();

            obj.nome= nome;
            obj.email=email;    
            obj.senha=senha;

            du.Inserir(obj);
            Response.Redirect("~/Paginas/Login.aspx");
        }
    }
}