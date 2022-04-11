﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrudEstoque.DAL;
using CrudEstoque.Modelo;

namespace CrudEstoque.Paginas
{
    public partial class Produtos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AtualizaGrid();

        }

        public void AtualizaGrid()
        {
            DALProduto dal = new DALProduto();
            GridViewProduto.DataSource = dal.Listar();
            GridViewProduto.DataBind();
        }

        protected void GridViewProduto_SelectedIndexChanged(object sender, EventArgs e)
        {
            int linha = GridViewProduto.SelectedIndex;
            int cod = Convert.ToInt32(GridViewProduto.Rows[linha].Cells[0].Text);
            DALProduto dalProduto = new DALProduto();
            DALUsuario dALUsuario = new DALUsuario();
            ModeloProduto objP = dalProduto.GetRegistro(cod);

            int ID = objP.ultima_alt_por;

            ModeloUsuario objU = dALUsuario.GetRegistroID(ID);


            txtNomeAlterar.Text = objP.nome;
            txtPrecoAlterar.Text = Convert.ToString(objP.preco);
            txtQuantidadeAlterar.Text = Convert.ToString(objP.quantidade);
            ultima_label.Text = Convert.ToString(objP.ultima_alt_por);

            modalEditar.Show();
        }

        protected void botaoModalAlterar_Click(object sender, EventArgs e)
        {
            try
            {
                int linha = GridViewProduto.SelectedIndex;
                int cod = Convert.ToInt32(GridViewProduto.Rows[linha].Cells[0].Text);
                DALProduto dal = new DALProduto();

                ModeloProduto obj = dal.GetRegistro(cod);



                if (obj != null)
                {

                }
            }

            catch
            {

            }
        }

        protected void GridViewProduto_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int linha = Convert.ToInt32(e.RowIndex);
            int cod = Convert.ToInt32(GridViewProduto.Rows[linha].Cells[0].Text);
            DALProduto dal = new DALProduto();
            dal.Delete(cod);
            AtualizaGrid();
        }

        protected void GridViewProduto_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            int linha = Convert.ToInt32(e.RowIndex);
            int cod = Convert.ToInt32(GridViewProduto.Rows[linha].Cells[0].Text);
            DALProduto dal = new DALProduto();
            
            ModeloProduto obj = dal.GetRegistro(cod);
            obj.quantidade = 0;

            dal.Alterar(obj);

            AtualizaGrid();
        }

        protected void botaoModalInserir_Click(object sender, EventArgs e)
        {
            ModalInserir.Show();
        }


        protected void botaoInserir_Click1(object sender, EventArgs e)
        {

            string msg = "";
            string nome = txtProdNome.Text;           
            int preco = Convert.ToInt32(txtProdPreco.Text);
            int quantidade = Convert.ToInt32(txtProdQuantidade.Text);
            int ultima_alt_por = Convert.ToInt32(Session["ID"]);
           
            DALProduto dal = new DALProduto();
            ModeloProduto obj = new ModeloProduto();

            obj.nome = nome.Trim();         
            obj.preco = preco;
            obj.quantidade = quantidade;
            obj.ultima_alt_por = ultima_alt_por;

            ModeloProduto comparar = dal.GetRegistroNome(nome);

            if (comparar.nome != null)
            {            
                msg = "<script> alert('ERRO: Produto ja Existe!'); </script>";              
            }
            else
            {
                dal.Inserir(obj);
                msg = "<script> alert('Produto Inserido!'); </script>";
            }

            Response.Write(msg);

            AtualizaGrid();
           
        }

        
    }
}