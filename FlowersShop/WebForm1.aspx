<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FlowersShop.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <script>
        function check(){
              // Initialize variables
             // int strength = 0;
            var name = document.getElementById("txtUser").value.trim();
            var password = document.getElementById("txtCCCD").value.trim();
            var errorname = document.getElementById("error-name");
            var errorcccd = document.getElementById("errorcccd");
            console.log(name.value);
            console.log(password.value);
            if (name == "") {
                errorname.innerHTML = "Khong được để trống dữ liệu";
                console.log("du liệu trống");
            } else {
                errorname.innerHTML = "";
            }
            if (password == "") {
                errorcccd.innerHTML = "Khong được để trống dữ liệu";
                console.log("du liệu trống");
                
            } else {
                errorcccd.innerHTML = "";
                if (password.length>8) {
                    errorcccd.innerHTML = "Mật khẩu tối da 8 kí tự";
                } else {
                    //strength += 1;
                    errorcccd.innerHTML = "";
                    if (password.match(".*[a-z].*") || password.match(".*[A-Z].*")) {
                        errorcccd.innerHTML = "";
                        console.log("da có kí tự chữ");
                        if (password.match(".*\\d.*")) {
                            errorcccd.innerHTML = "";
                            console.log("dẫ có số");

                        } else {
                            errorcccd.innerHTML = "Mật khẩu phải gồm các số";
                        }
                    } else {
                        errorcccd.innerHTML = "Mật khẩu phải các kí tự chữ";
                    }
                }
            }
            
            // Check độ dài
               

                /* Check chữ
            if (password.match(".*[a-z].*") ||  password.match(".*[A-Z].*")) {
                    //strength += 1;
                    errorcccd.innerHTML = "";
                } else {
                    errorcccd.innerHTML = "Mật khẩu bao gồm các kí tự chữ";
                }

                // Check for numbers
                if (password.match(".*\\d.*")) {
                    strength += 1;
                    errorcccd.innerHTML = "";
                } else {
                    errorcccd.innerHTML = "Mật khẩu gồm các số";
                }
                */
                // Check for special characters
                //if (password.matches(".*[^a-zA-Z\\d].*")) {
                //    strength += 1;
                //}

                /* Return strength level
                if (strength < 2) {
                    return "Easy to guess";
                } else if (strength == 2) {
                    return "Medium difficulty";
                } else if (strength == 3) {
                    return "Difficult";
                } else {
                    return "Extremely difficult";
                }*/
                
            }
    </script>
<body>
    <div id="truycap" runat="server"></div>
        <div>
            <details>
                <summary>Loạt tài liệu hướng dẫn học Lập Trình Web gồm:</summary>
                <ul>
                    <li>Tài liệu học HTML</li>
                    <li>Tài liệu học CSS</li>
                    <li>Tài liệu học JavaScript</li>
                    <li>Tài liệu học MySQL</li>
                    <li>Tài liệu học PHP</li>
                </ul>
            </details>
        </div>

</body>
</html>
