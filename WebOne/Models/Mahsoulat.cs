using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebOne.Models
{
    public class Mahsoulat
    {
        public string name { get; set; }
        public string Image { get; set; }
        public string Price_New { get; set; }
        public string Price_Old { get; set; }
        public string Saving { get; set; }

        public int Is_Saving { get; set; }
    }
}