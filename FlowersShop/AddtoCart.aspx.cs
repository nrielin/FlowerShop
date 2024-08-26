using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace FlowersShop
{
    public partial class AddtoCart : System.Web.UI.Page
    {
        List<Objects.User> listUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["txtName"] != null)
            {
                string phone = (string)Session["txtnumber"];

                List<Objects.productofUser> cart = (List<Objects.productofUser>)Application["listProductOfUser"];

                List<Objects.products> listProduct = (List<Objects.products>)Application["listProducts"];


                foreach (Objects.products product in listProduct)
                {
                    if (Request.QueryString["id"] == product.id)
                    {
                        cart.Add(new Objects.productofUser(cart.Count + DateTime.Now.ToString(), product, phone));
                        break;
                    }

                }
                Application["listProductOfUser"] = cart;
                Response.Redirect("Cart.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }
    }
}