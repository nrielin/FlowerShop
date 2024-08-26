using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace FlowersShop
{
    public partial class ChiTietSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["txtName"] != null)
            {
                var str =
                    "<a>"
                        + "<span>" + (string)Session["txtName"] + "</span>"
                        + "<a href = 'signout.aspx' ><i class='fa-solid fa-arrow-right-from-bracket' style='font-size: 1.5rem;'></i></a>"
                    + "</a>";
                log.InnerHtml = str;
            }
            else
            {
                var str =
                    "<a href = 'Login.aspx' >"
                        + "<span>Sign in</span>"
                    + "<a href = '' ><i class='fa-solid fa-caret-down'></i></a>"
                    + "</a>";
                log.InnerHtml = str;
            }


            List<Objects.products> listProduct = (List<Objects.products>)Application["listProducts"];
            string img = "";
            string name = "";
            string price = "";
            string linkToCart = "";
            foreach (Objects.products product in listProduct)
            {
                if (Request.QueryString["id"] == product.id)
                {
                    img += "<img src=' "+product.image+"'alt=''>";
                    name += "<h3>"+product.name+"</h3>";
                    price += "<div class='price'>"+product.price+"</div>";
                    linkToCart +=
                        "<a href='AddToCart.aspx?id=" + product.id + "' class='btn' runat='server'>add to cart</a><button id='"+product.id+"' value='"+product.id+"' class='btn' onclick='action()'>delete</button>";
                    break;
                }

            }
            if (img != "")
            {
                imageBox.InnerHtml = img;
                nameBox.InnerHtml = name;
                priceBox.InnerHtml = price;
                addToCart.InnerHtml = linkToCart;
            }
        }
    }
}