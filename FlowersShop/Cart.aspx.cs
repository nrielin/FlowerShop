using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace FlowersShop
{
    public partial class Cart : System.Web.UI.Page
    {
        List<Objects.productofUser> cart;
        string number;
        protected void Page_Load(object sender, EventArgs e)
        {

            cart = (List<Objects.productofUser>)Application["listProductOfUser"];

            if ((string)Session["txtName"] != null)
            {
                var str =
                    "<a>"
                        + "<span>" + (string)Session["txtName"] + "</span>"
                        + "<a href = 'signout.aspx' ><i class='fa-solid fa-arrow-right-from-bracket' style='font-size: 1.5rem;'></i></a>"
                    + "</a>";
                log.InnerHtml = str;


                number = (string)Session["txtnumber"];
                string html = "";
                double subTotal = 0;
                html = "<div class=\"product__title\">\r\n"
                    + "<span class=\"product__title--id\">ID</span>\r\n"
                            + "<span class=\"product__title--name\">Product</span>\r\n"
                            + "<span class=\"product__title--price\">Price</span>\r\n " +
                            "<span class=\"product__title--quantity\">Quantity</span>\r\n " +
                            " <span class=\"product__title--total\">Total</span>\r\n  </div>";

                for (int i = 0; i < cart.Count; i++)
                {

                    if (cart[i].Number == number)
                    {

                        double total = cart[i].products.price;
                        subTotal += total;
                        
                        html +=
                        "<div class='product' id='cartBlock' runat='server'>"+
                        "<div class=\"shoppingCart__detail id\">\r\n                      " +
                        "  <span>" + cart[i].products.id + "</span>\r\n"+
                        "</div>"
                            + "<div class='shoppingCart__detail image'>"
                                + "<img src = '" + cart[i].products.image + "' alt=''>"
                            + "</div>"
                            + "<div class='shoppingCart__detail name'>"
                                + "<span>" + cart[i].products.name + "</span>"
                            + "</div>"
                            + "<div class='shoppingCart__detail price' >"
                                + "<span id='price'>$" + cart[i].products.price + ".00 </span>"
                            + "</div>"
                            + "<div class='shoppingCart__detail quantity'>"
                                + "<input type = 'number' min='1' value='1' id='quantity' runat='server'onkeyup='changeTotal()' onchange='changeTotal()'>"
                            + "</div>"
                            + "<div class='shoppingCart__detail total'>"
                                + "<span id='total'>$" + total + ".00</span>"
                            + "</div>"
                            + "<div class='shoppingCart__detail remove'>"
                                + "<a href='removeProduct.aspx?idRemove=" + cart[i].products.id + "'><i class='fa-solid fa-xmark'></i></a>"
                            + "</div>"
                        + "</div>";
                        //dvsdgasf
                    }
                }
                subTotalBox.InnerHtml = "$" + subTotal + ".00";
                shoppingCart.InnerHtml = html;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }

}