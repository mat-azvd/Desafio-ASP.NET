using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CrudEstoque.Modelo
{
    public class ModeloUsuario
    {
        public int ID { get; set; }
        public String nome { get; set; }
        public String email { get; set; }
        public String senha { get; set; }

    }
}