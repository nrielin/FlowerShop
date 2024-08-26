using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace FlowersShop
{
    public partial class SignUp : System.Web.UI.Page
    {
            List<Objects.User> listUser;
            protected void Page_Load(object sender, EventArgs e)
            {
                listUser = (List<Objects.User>)Application["listUser"];
                int soluot = (Convert.ToInt32(Application["sldangky"]));
                Response.Write("Đã có :" + soluot + " đăng ký");
                Application["sldangky"] = soluot + 1;
        }

            protected void btnRegister_onClick(object sender, EventArgs e)
            {
            string name = Request.Form["txtName"].Trim();
            string number = Request.Form["txtnumber"].Trim();
            string password = Request.Form["txtpassword"].Trim();

            bool check = true;


            foreach (Objects.User user in listUser)
            {
                if (user.Number == number)
                {
                    
                    //error.InnerHtml = "ERROR:Đã tồn tại số điện thoại này !";
                    //Response.Write("<script>alert('Phone number existed!');</script>");
                    check= false;
                    break;
                }
                else
                {
                    error.InnerHtml = "";
                }

            }
            if(check)
            {
                Objects.User newUser = new Objects.User(number, password, name);
                listUser.Add(newUser);
                Application["listUser"] = listUser;
                Response.Redirect("Login.aspx");
            }
        }

    }
}