using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrudEstoque.DAL;
using CrudEstoque.Modelo;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text;
using iTextSharp.text.pdf;

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
            ultima_label.Text = Convert.ToString(objU.nome);

            modalEditar.Show();
        }

        protected void botaoModalAlterar_Click(object sender, EventArgs e)
        {
                
                int linha = GridViewProduto.SelectedIndex;
                int cod = Convert.ToInt32(GridViewProduto.Rows[linha].Cells[0].Text);

                DALProduto dal = new DALProduto();             
                ModeloProduto obj = dal.GetRegistro(cod);

                obj.nome = txtNomeAlterar.Text;
                obj.preco = Convert.ToInt32(txtPrecoAlterar.Text);
                obj.quantidade = Convert.ToInt32(txtQuantidadeAlterar.Text);              
                obj.ultima_alt_por = Convert.ToInt32(Session["ID"]);
                dal.Alterar(obj);

                string msg = "<script> alert('Produto Alterado!'); </script>";
                Response.Write(msg);

                AtualizaGrid();

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
            obj.ultima_alt_por = Convert.ToInt32(Session["ID"]);

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
                if (obj.quantidade <= 0)
                {
                    msg = "<script> alert('ERRO: Quantidade menor ou igua a zero!'); </script>";
                }
                else
                {
                    dal.Inserir(obj);
                    msg = "<script> alert('Produto Inserido!'); </script>";
                }
            }

            Response.Write(msg);

            AtualizaGrid();
           
        }

        protected void ButtonDownloadPDF_Click(object sender, EventArgs e)
        {
            
            PdfPTable pdfTable = new PdfPTable(GridViewProduto.HeaderRow.Cells.Count);

            foreach (TableCell gridViewHeaderCell in GridViewProduto.HeaderRow.Cells)
            {
                // Criar objeto fonte para o PDF
                Font font = new Font();

                // Mudar a cor do header da Grindview
                font.Color = new BaseColor(GridViewProduto.HeaderStyle.ForeColor);

                // Criar cada celula do pdf passando o texto e a fonte
                PdfPCell pdfCell = new PdfPCell(new Phrase(gridViewHeaderCell.Text, font));

                // Cor do background da grindview
                pdfCell.BackgroundColor = new BaseColor(GridViewProduto.HeaderStyle.BackColor);

                // Adicionar as celulas na tabela de PDF
                pdfTable.AddCell(pdfCell);
            }

            foreach (GridViewRow gridViewRow in GridViewProduto.Rows)
            {
                if (gridViewRow.RowType == DataControlRowType.DataRow)
                {
                    // Loop por cada celula das linhas da Grindview
                    foreach (TableCell gridViewCell in gridViewRow.Cells)
                    {
                        Font font = new Font();
                        
                        PdfPCell pdfCell = new PdfPCell(new Phrase(gridViewCell.Text, font));

                        pdfCell.BackgroundColor = new BaseColor(GridViewProduto.RowStyle.BackColor);

                        pdfTable.AddCell(pdfCell);
                    }
                }
            }

            Document pdfDocument = new Document(PageSize.A4, 10f, 10f, 10f, 10f);

            PdfWriter.GetInstance(pdfDocument, Response.OutputStream);

            pdfDocument.Open();
            pdfDocument.Add(pdfTable);
            pdfDocument.Close();

            Response.ContentType = "application/pdf";
            Response.AppendHeader("content-disposition","attachment;filename=Estoque.pdf");
            Response.Write(pdfDocument);
            Response.Flush();
            Response.End();
        }

    }
    
}