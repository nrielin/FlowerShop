using FlowersShop.Objects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlowersShop
{
    public partial class store : System.Web.UI.Page
    {

        List<products> list;
        protected void Page_Load(object sender, EventArgs e)
        {
            list = (List<products>)Application["listProducts"];
            // Response.Write("<script>alert('chay khi submit');</script>");
            string a = Request.QueryString["timkiem"];
            string[] arrListStr = a.Trim().Split(new char[] { ' ' });
            string html = "";
            int dem = 0;
            html += "<h2 style=\"padding:30px; margin-bottom:50px;\"><span>KẾT QUẢ TÌM KIẾM CỦA :"+a+"</span></h2>" +
                "<div class=\"box-container\" id='listProducts' runat=\"server\">";
            
            for(int i = 0; i< arrListStr.Length; i++) {
                foreach (products products in list)
                {
                    if ((products.name).Contains(arrListStr[i].Trim()))
                    {
                        html += "<div class=\"box\">\r\n      " +
                        "          <div class=\"image\">\r\n       " +
                        "             <img src='"+products.image+"' alt=\"\">\r\n       " +
                        "             <div class=\"icons\">\r\n                        " +
                        "<a href=\"#\" class=\"fas fa-heart\"></a>\r\n                       " +
                        " <a href=\"#\" class=\"cart-btn\">add to cart</a>\r\n                     " +
                        "   <a href=\"#\" class=\"fas fa-share\"></a>\r\n                    </div>\r\n                </div>\r\n              " +
                        "  <div class=\"content\">\r\n                    <h3>"+products.name+"</h3>\r\n                   " +
                        " <div class=\"price\">"+products.price+"</div>\r\n                </div>\r\n            </div>";
                            dem++;
                        
                    }
                }

            }
            if (dem>0)
                {
                    html+= "</div>";
                    products.InnerHtml = html;
                    }
                else {
                html += "</div>";
                html += "<h3 style=\"padding:30px; margin-bottom:50px;\"><span>KHÔNG TỒN TẠI SẢN PHẨM</span></h3>";
                products.InnerHtml = html;
                   // Response.Write("<script>alert('Không có sản phẩm cần tìm');</script>");
                }

        }
    }
}