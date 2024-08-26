using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FlowersShop.Objects
{
    public class productofUser
    {
        public string Id { get; set; }
        public products products { get; set; }
        public string Number { get; set; }
        public bool IsAdmin { get; set; }

        public productofUser() { }

        public productofUser(string id, products product, string number, bool isAdmin = false)
        {
            this.Id = id;
            this.products = product;
            this.Number = number;
            this.IsAdmin = isAdmin;
            //this.size = size;
        }
    }
}