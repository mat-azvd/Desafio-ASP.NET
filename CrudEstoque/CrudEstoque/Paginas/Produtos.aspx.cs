using System;
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

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try { 
            int linha = GridViewProduto.SelectedIndex;
            int cod = Convert.ToInt32(GridViewProduto.Rows[linha].Cells[0].Text);
            DALProduto dal = new DALProduto();

            ModeloProduto p = dal.GetRegistro(cod);

            if (p != null)
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

        protected void botaoInserir_Click(object sender, EventArgs e)
        {

        }
    }
}