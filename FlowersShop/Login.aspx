<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FlowersShop.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
    <link rel="stylesheet" href="CSS/TrangChu.css"/>
    <link rel="stylesheet" href="CSS/login.css"/>
    <script>
        function btnLogin() {
            var phone = document.getElementById("txtnumber").value.trim();
            var pass = document.getElementById("txtpassword").value.trim();
            var errorname = document.getElementById("error-name");
            var errorpassword = document.getElementById("error-password");
            var check = true;

            if (phone == "") {
                errorname.innerHTML = "Fill your phone number!"
                phone.focus();
                check = false;
            } else errorname.innerHTML = "";
            if (pass == "") {
                error.innerHTML = "Fill your password!"
                pass.focus();
                check = false;
            } else errorpasword.innerHTML = "";

            return check;
        }
    </script>
</head>
<body>
        <header>
        <input type="checkbox" name="" id="toggler"/>
        <label for="toggler" class="fas fa-bars"></label>
        
        <a href="#" class="logo">Flower<span>.</span></a>
   
        <nav class="navbar">
            <a href="#home">Home</a>
            <a href="#about">About</a>
            <a href="#products">Products</a>
            <a href="#review">Review</a>
        </nav>
   
        <div class="icons">
            <a href="#" class="fas fa-heart"></a>
            <a href="#" class="fas fa-shopping-cart"></a>
            <a href="#" class="fas fa-user"></a>
        </div>
   </header>
    <section class="body" id="">
        <div class="container">
            <form id="form1" method="post" runat="server" onsubmit="return btnLogin();">
                <div class="form-contents">
                    <div class="login-form" >
                        <div class="title" >Log In</div>
                        <div class="input-boxes">
                            <div class="input-box">
                                <i class="fas fa-envelope"></i>
                                <input id="txtnumber" name="txtnumber" type="text" placeholder="Enter your number" runat="server"/>   
                            </div>
                            <div id="err-number" style="font-size: 1.5rem; color: red;"></div>
                            
                            <div class="input-box">
                                <i class="fas fa-envelope"></i>
                                <input id="txtpassword" name="txtpassword"  type="password" placeholder="Enter your password" runat="server"/>   
                            </div>
                            <div id="err-password" style="font-size: 1.5rem; color: red;"></div>

                           <div id="error" runat="server">
                                <!-- *Wrong  -->
                            </div>

                            <div class="button input-box">
                                <asp:Button ID="btn" Text="SIGN IN" name="btnSignIn" runat="server"  OnClick="btnSignIn_onClick" />
                            </div>
                            <div class="text">Dont have an account?<a href="SignUp.aspx">SignUp Now</a></div>
                        </div>
                    </div>
                    
                </div>
            </form>
        </div>
    </section>
    
    <!-- footer section -->
    <section class="footer">
        <div class="box-container">
            <div class="box">
                <h3>quick links</h3>
                <a href="#">Home</a>
                <a href="#">about</a>
                <a href="#">products</a>
                <a href="#">review</a>
            </div>

            <div class="box">
                <h3>extra links</h3>
                <a href="#">my account</a>
                <a href="#">my order</a>
                <a href="#">my favorite</a>
            </div>

            <div class="box">
                <h3>locations </h3>
                <a href="#">Vietnam</a>
                <a href="#">USA</a>
                <a href="#">Germany</a>
            </div>

            <div class="box">
                <h3>contact info</h3>
                <a href="#">+74 123-321-345</a>
                <a href="#">flowershop@gmail.com</a>
                <a href="#">Hanoi, Vietnam - 12312</a>
            </div>
        </div>

        <div class="credit"> created by <span> Nguyen Thi Thu Hang</span></div>
    </section>
</body>
</html>
