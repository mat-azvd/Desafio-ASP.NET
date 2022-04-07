using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CrudEstoque.Modelo
{
    public class ModeloProduto
    {
        public int ID { get; set; }
        public String nome { get; set; }
        public int preco { get; set; }
        public int quantidade { get; set; }
        public int ultima_alt_por { get; set; }
    }
}