using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace FlowersShop
{
    public partial class Login : System.Web.UI.Page
    {
        List<Objects.User> listUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            listUser = (List<Objects.User>)Application["listUser"];
        }

        protected void btnSignIn_onClick(object sender, EventArgs e)
        {
            string number = Request.Form["txtnumber"];
            string password = Request.Form["txtpassword"];
            string userName = "";

            if (IsPostBack)
            {
                foreach (Objects.User user in listUser)
                {
                    if (user.Number == number && user.Password == password)
                    {
                        userName = user.UserName ;
                    }

                    if (userName != "")
                    {
                        Session["txtnumber"] = number;
                        Session["txtName"] = userName;
                        Response.Write("<script>alert('Welcome to "+userName+"');</script>");
                        Response.Redirect("TrangChu.aspx");
                    }
                    else
                    {
                        error.InnerHtml = "ERROR: Wrong phone number or password!";
                    }
                }
            }
        }
    }
    }
