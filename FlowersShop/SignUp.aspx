<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="FlowersShop.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
    <link rel="stylesheet" href="CSS/TrangChu.css"/>
    <link rel="stylesheet" href="CSS\signup.css" />
    <script>
        function btnSignUp() {
            var name = document.getElementById("txtName").value.trim();
            var number = document.getElementById("txtnumber").value.trim();
            var password = document.getElementById("txtpassword").value.trim();

            var errname = document.getElementById("err-name");
            var errnumber = document.getElementById("err-number");
            var errpassword = document.getElementById("err-password");
            var check = true;
            var strength = 0;
            if (name == "") {
                //alert("Fill last name!");
                errname.innerHTML = "Du lieu khong duoc trong";
                check = false;
                document.getElementById("txtName").focus();
            } else {
                errname.innerHTML = "";
                strength += 1;
            }
            if (number == "") {
                // alert("Fill phone number!");
                errnumber.innerHTML = "Du lieu khong duoc trong";
                check = false;
                document.getElementById("txtnumber").focus();
            }
            else if (/^0[1-9]{9}/.test(number) == false) {
                // alert("Wrong phone! Fill phone again!");
                errnumber.innerHTML = "Sai dinh dang";
                check = false;
                document.getElementById("txtnumber").focus();
            } else {
                errnumber.innerHTML = "";
                strength += 1;
            }
           
            console.log(password.substring(0, 3));
            if (password == "") {
                errpassword.innerHTML = "Fill your password!"
                password.focus();
                check = false;
            } else {
                errpassword.innerHTML = "";
                if (password.length > 8) {
                    errpassword.innerHTML = "Mật khẩu tối da 8 kí tự";
                    check = false;
                } else {
                    //
                    errpassword.innerHTML = "";
                    if (password.match(".*[a-z].*") || password.match(".*[A-Z].*")) {
                        errpassword.innerHTML = "";
                        console.log("da có kí tự chữ");
                        if (password.match(".*\\d.*")) {
                            errpassword.innerHTML = "";
                            console.log("dẫ có số");
                            strength += 1;
                        } else {
                            errpassword.innerHTML = "Mật khẩu phải gồm các số";
                            check = false;
                        }
                    } else {
                        errpassword.innerHTML = "Mật khẩu phải các kí tự chữ";
                        check = false;
                    }
                    
                }
            }
            if (password.substring(0, 3).match(".*\\d.*")) {
                console.log("dẫ có số ow 3 ki tu dau");
                strength += 1;
            } else {
                errpassword.innerHTML = "3 ki tu dau cua Mật khẩu phải la so";
                check = false;
            }
            if (strength > 3) {
                check = true;
            }
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
            <form  id="RegisterForm" method="post" runat="server" onsubmit="return btnSignUp();">
                <div class="form-contents">
                    <div class="signup-form">
                        <div class="title" >Sign Up</div>
                        <div class="input-boxes">
                            <div class="input-box">
                                <i class="fas fa-user"></i>
                                <input id="txtName" name="txtName" type="text" placeholder="Enter your name" runat="server" />
                            </div>
                            <div id="err-name" style="font-size: 1.5rem; color: red;"></div>
                            <div class="input-box">
                                <i class="fas fa-envelope"></i>
                                <input id="txtnumber" name="txtnumber" type="text" placeholder="Enter your number" runat="server"/>
                            </div>
                            <div id="err-number" style="font-size: 1.5rem; color: red;"></div>
                            <div class="input-box">
                                <i class="fas fa-envelope"></i>
                                <input id="txtpassword" name="txtpassword" type="password" placeholder="Enter your password" runat="server"/> 
                            </div>
                            <div id="err-password" style="font-size: 1.5rem; color: red;"></div>

                            <div id="error" style="font-size: 1.5rem; color: red;" runat="server"></div>
                            <div class="button input-box">
                                <asp:Button ID="btn" runat="server" Text="Button" OnClick="btnRegister_onClick" />
                            </div>
                            <div class="text">Already have an account?<a href="Login.aspx">LogIn Now</a></div>
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

     <div class="credit"> created by <span>Nguyen Thi Thu Hang</span></div>
 </section>
</body>
</html>
