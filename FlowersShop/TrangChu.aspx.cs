using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlowersShop
{
    public partial class TrangChu : System.Web.UI.Page
    {
        List<Objects.User> listUser ;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["visitCount"] == null)
            {
                Application["visitCount"] = 1;
            }
            else
            {
                Application["visitCount"] = (int)Application["visitCount"] + 1;
            }

            // Hiển thị số lượng truy cập
            visitCount.InnerText = "Số lượng truy cập: " + Application["visitCount"].ToString();

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

            List<Objects.products> products = (List<Objects.products>)Application["listProducts"];
            string html = "";
            foreach (Objects.products product in products)
            {
                html += "<div class=\"box\">\r\n      " +
                        "<div class=\"image\">\r\n       " +
                        "<a href=ChiTietSP.aspx?id="+product.id+"><img src='" + product.image + "' alt=\"\">\r\n       </a>" +
                        "<div class=\"icons\">\r\n                        " +
                        "<a href=\"#\" class=\"fas fa-heart\"></a>\r\n                       " +
                        " <a href='AddtoCart.aspx?id="+product.id+"' class=\"cart-btn\">add to cart</a>\r\n                     " +
                        "   <a href=\"#\" class=\"fas fa-share\"></a>\r\n                    </div>\r\n                </div>\r\n              " +
                        "  <div class=\"content\">\r\n                    <h3>" + product.name + "</h3>\r\n                   " +
                        " <div class=\"price\">" + product.price + "</div>\r\n                </div>\r\n            </div>";
            }
            listProducts.InnerHtml = html;
        }
    }
}