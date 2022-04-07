using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CrudEstoque.Modelo;
using System.Data;
using System.Data.SqlClient;


namespace CrudEstoque.DAL
{
    public class DALUsuario
    {

        //Criar uma "ConnectionStringSettings"
        private System.Configuration.ConnectionStringSettings connString;

        //Metodo construtor para pegar a string de conexão com o banco 
        public DALUsuario()
        {

            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];

        }

        //Metodo "Inserir" novo contato no banco 
        public void Inserir(ModeloUsuario obj)
        {

            //Criar um objeto de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();



            //Executar um comando no banco
            try
            {
                cmd.Connection = con;
                cmd.CommandText = "Insert into Usuario (nome,email,senha) values (@nome,@email,@senha)";
                cmd.Parameters.AddWithValue("nome", obj.nome);
                cmd.Parameters.AddWithValue("email", obj.email);
                cmd.Parameters.AddWithValue("senha", obj.senha);


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

        public void Alterar(ModeloUsuario obj)
        {

            //Criar um objeto de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();



            //Executar um comando no banco
            try
            {
                cmd.Connection = con;
                cmd.CommandText = "update Usuario set nome=@nome, email=@email, senha=@senha";
                cmd.Parameters.AddWithValue("nome", obj.nome);
                cmd.Parameters.AddWithValue("email", obj.email);
                cmd.Parameters.AddWithValue("senha", obj.senha);

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

        public void Delete(ModeloUsuario cod)
        {

            //Criar um objeto de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();



            //Executar um comando no banco
            try
            {
                cmd.Connection = con;
                cmd.CommandText = "Delete from Usuario where ID= " + cod.ToString();

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
            SqlDataAdapter da = new SqlDataAdapter("Select * from Usuario", connString.ConnectionString);

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

        public ModeloUsuario GetRegistro(String email)
        {
            ModeloUsuario obj = new ModeloUsuario();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            try
            {
                cmd.CommandText = "select * from Usuario where email=@email";
                cmd.Parameters.AddWithValue("@email", email);
                con.Open();
                SqlDataReader registro = cmd.ExecuteReader();

                if (registro.HasRows)
                {
                    registro.Read();
                    obj.ID = Convert.ToInt32(registro["ID"]);
                    obj.nome = Convert.ToString(registro["nome"]);
                    obj.email = Convert.ToString(registro["email"]);
                    obj.senha = Convert.ToString(registro["senha"]);

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