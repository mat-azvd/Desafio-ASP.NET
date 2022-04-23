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
    public partial class Usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AtualizaGrid()
        }

        public void AtualizaGrid()
        {
            DALUsuario dal = new DALUsuario();
            GridViewUsuario.DataSource = dal.Listar();
            GridViewUsuario.DataBind();
        }

        protected void btCadastrar_Click(object sender, EventArgs e)
        {
            string msg = "";
            string nome = txtCadastroNome.Text;
            string email = txtCadastroEmail.Text;
            string senha = txtCadastroSenha1.Text;

            DALUsuario dal = new DALUsuario();
            ModeloUsuario obj = new ModeloUsuario();

            obj.nome = nome;
            obj.email = email;
            obj.senha = senha;

            ModeloUsuario comparar = dal.GetRegistroEmail(email);

            if (comparar.email != null)
            {
                msg = "<script> alert('ERRO: Email ja cadastrado!'); </script>";
                Response.Write(msg);
            }
            else
            {
                dal.Inserir(obj);
                msg = "<script> alert('Usuario Cadastrado!'); </script>";
                Response.Redirect("~/Paginas/Usuario.aspx");

            }



        }
    }
}