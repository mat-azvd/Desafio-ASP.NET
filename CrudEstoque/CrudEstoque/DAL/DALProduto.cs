using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CrudEstoque.Modelo;
using System.Data;
using System.Data.SqlClient;

namespace CrudEstoque.DAL
{
    public class DALProduto
    {

        //Criar uma "ConnectionStringSettings"
        private System.Configuration.ConnectionStringSettings connString;

        //Metodo construtor para pegar a string de conexão com o banco 
        public DALProduto()
        {

            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["BancoEstoqueLocal"];

        }

        //Metodo "Inserir" novo contato no banco 
        public void Inserir(ModeloProduto obj)
        {

            //Criar um objeto de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();



            //Executar um comando no banco
            try
            {
                cmd.Connection = con;
                cmd.CommandText = "Insert into Produto (nome,preco,quantidade,ultima_alt_por) values (@nome,@email,@senha,@ultima_alt_por)";
                cmd.Parameters.AddWithValue("nome", obj.nome);
                cmd.Parameters.AddWithValue("preco", obj.preco);
                cmd.Parameters.AddWithValue("quantidade", obj.quantidade);
                cmd.Parameters.AddWithValue("ultima_alt_por", obj.ultima_alt_por);


                con.Open();
                obj.ID = Convert.ToInt32(cmd.ExecuteScalar());

            }

            catch (Exception erro)
            {
                new Exception(erro.Message);
            }

            finally
            {
                con.Close();
            }
        }

        public void Alterar(ModeloProduto obj)
        {

            //Criar um objeto de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();



            //Executar um comando no banco
            try
            {
                cmd.Connection = con;
                cmd.CommandText = "update Produto set nome=@nome, preco=@preco, quantidade=@quantidade, ultima_alt_por=@ultima_alt_por where ID=@ID";
                cmd.Parameters.AddWithValue("ID", obj.ID);
                cmd.Parameters.AddWithValue("nome", obj.nome);
                cmd.Parameters.AddWithValue("preco", obj.preco);
                cmd.Parameters.AddWithValue("quantidade", obj.quantidade);
                cmd.Parameters.AddWithValue("ultima_alt_por", obj.ultima_alt_por);

                con.Open();
                cmd.ExecuteNonQuery();

            }

            catch (Exception erro)
            {
                new Exception(erro.Message);
            }

            finally
            {
                con.Close();
            }

        }

        public void Delete(int ID)
        {

            //Criar um objeto de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();



            //Executar um comando no banco
            try
            {
                cmd.Connection = con;
                cmd.CommandText = "Delete from Produto where ID="+ID.ToString();

                con.Open();
                cmd.ExecuteNonQuery();


            }

            catch (Exception erro)
            {
                throw new Exception(erro.Message);
            }

            finally
            {
                con.Close();
            }

        }

        public DataTable Listar()
        {
            //DataTable para criar uma tabela
            DataTable tabela = new DataTable();

            //SqlDataAdapter para executar comandos SQL passando o comando e a string de conexao
            SqlDataAdapter da = new SqlDataAdapter("Select * from Produto", connString.ConnectionString);

            try
            {

                //Pegar o retorno do comando e preencher a tabela
                da.Fill(tabela);
                return tabela;
            }

            catch (Exception erro)
            {
                throw new Exception(erro.Message);
            }


        }

        /*public DataTable Localizar()
        {
            //DataTable para criar uma tabela
            DataTable tabela = new DataTable();

            //SqlDataAdapter para executar comandos SQL passando o comando e a string de conexao
            SqlDataAdapter da = new SqlDataAdapter("Select * from contato where con", connString.ConnectionString);

            try
            {

                //Pegar o retorno do comando e preencher a tabela
                da.Fill(tabela);
                return tabela;
            }

            catch (Exception erro)
            {
                throw new Exception(erro.Message);
            }
        

        }
        */

        public ModeloProduto GetRegistro(String nome)
        {
            ModeloProduto obj = new ModeloProduto();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            try
            {
                cmd.CommandText = "select * from Produto where nome=@nome";
                cmd.Parameters.AddWithValue("@nome", nome);
                con.Open();
                SqlDataReader registro = cmd.ExecuteReader();

                if (registro.HasRows)
                {
                    registro.Read();
                    obj.ID = Convert.ToInt32(registro["ID"]);
                    obj.nome = Convert.ToString(registro["nome"]);
                    obj.preco = Convert.ToInt32(registro["preco"]);
                    obj.quantidade = Convert.ToInt32(registro["quantidade"]);
                    obj.ultima_alt_por = Convert.ToInt32(registro["ultima_alt_por"]);

                }
            }

            catch (Exception erro)
            {

                throw new Exception(erro.Message);
            }

            return obj;
        }

    }
}