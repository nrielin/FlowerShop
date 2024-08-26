using FlowersShop;
using FlowersShop.Objects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace FlowersShop
{
    public partial class XoaSPTrangChiTiet : System.Web.UI.Page
    {
        List<Objects.products> listProduct;
        protected void Page_Load(object sender, EventArgs e)
        {
            /*listProduct= (List<Objects.products>)Application["listProducts"];
            
                string id = Request.QueryString["id"];
                int dem = listProduct.Count;
                Response.Write("SL:" + dem);
                if (id != null){
                    foreach (Objects.products o in listProduct) {
                    if (Request.QueryString["id"] == o.id)
                    {
                        listProduct.Remove(o);
                        Application["listProducts"] = listProduct;
                        //Response.Redirect("TrangChu.aspx");
                        dem = 1;
                    }
                    else
                    {
                        Response.Write("Xóa sản phẩm không thành công");
                    }
                }
                }
                else
                {
                    Response.Write("Xóa sản phẩm không thành công");
                }*/
            // Kiểm tra quyền admin
            string currentUserId = (string)Session["userId"];
            string adminId = "0987654321"; // ID của admin

            // Lấy ID sản phẩm từ tham số URL
            string productId = Request.QueryString["id"];

            if (string.IsNullOrEmpty(productId))
            {
                Response.Write ( "ID sản phẩm không hợp lệ.");
                return;
            }

            if (currentUserId == adminId)
            {
                DeleteProduct(productId);
                Response.Redirect("TrangChu.aspx"); // Chuyển hướng về danh sách sản phẩm sau khi xóa
            }
            else
            {
               Response.Write( "Bạn không có quyền xóa sản phẩm.");
            }
        }

        private void DeleteProduct(string productId)
        {
            List<Objects.products> listProduct = (List<Objects.products>)Application["listProducts"];
            Objects.products productToRemove = listProduct.FirstOrDefault(p => p.id == productId);

            if (productToRemove != null)
            {
                listProduct.Remove(productToRemove);
                Application["listProducts"] = listProduct;
            }
        }
    }
        }
    
