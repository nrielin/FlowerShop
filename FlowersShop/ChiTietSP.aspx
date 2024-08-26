<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChiTietSP.aspx.cs" Inherits="FlowersShop.ChiTietSP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="CSS/ChiTiet.css">
    <title>Chi Tiết Sản Phẩm</title>
    <style>
        col-1{
           width: 20%;
        }
        col-2{
           width: 20%;
        }
        col-3{
           width: 20%;
        }
        col-4{
            width: 20%;
        }
        col-5{
           width: 20%;
        }
        [class*="col-"]{
            text-align: center;
        }
         @media(max-width:768px){
           [class*="col"]{
               float: left;
               width: 100%;
               text-align:center;
           }
           header, .footer{
               font-size: 1rem;
           }
         }
    </style>
    <script>
        function action() {
            let val = event.target;
            let value = val.value;
            let choice = confirm("Ban có muốn xóa sản phẩm hay không?");
            let text;
            if (choice == true) {
                text = "Nút OK đã được bấm!";
                console.log(value);
                window.location ="https://localhost:44385/XoaSPTrangChiTiet.aspx?id="+value;
            } else {
                text = "Nút Cancel đã được bấm!";
                
            }
            console.log(text);
        }
    </script>
</head>
<body>
     <header>
     <input type="checkbox" name="" id="toggler"/>
     <label for="toggler" class="fas fa-bars"></label>
     
     <a href="#" class="logo">Flower<span>.</span></a>

     <nav class="navbar">
         <a href="TrangChu.aspx#home">Home</a>
         <a href="TrangChu.aspx#about">About</a>
         <a href="TrangChu.aspx#products">Products</a>
         <a href="TrangChu.aspx#review">Review</a>
     </nav>

     <div class="icons">
         <a href="respon.aspx" class="fas fa-heart"></a>
         <a href="#" class="fas fa-shopping-cart"></a>
         <a href="#" class="fas fa-user"></a>
     </div>
          <div class="log" id="log" runat="server">
     <%--<a href="signin.aspx" class="">
         <span >Sign in</span>
         <a href=""><i class="fa-solid fa-caret-down"></i></a>
     </a>--%>
 </div>
</header> 
  
<section class="details">
 <div class="box-container" id="idProduct" runat="server">
     <div class="box" style="display: flex;justify-content: space-between;">
         <div class="image col-1" runat="server" id="imageBox">
             <img src="/Picture/image1.jpg" alt="">
         </div>
         <div class="content col-3">
             <div runat='server' id='nameBox'>
                 <h3>flower pot</h3>
             </div>
             <div class="stars">
                 <i class="fas fa-star"></i>
                 <i class="fas fa-star"></i>
                 <i class="fas fa-star"></i>
                 <i class="fas fa-star"></i>
                 <i class="fas fa-star"></i>
             </div>
             <div runat='server' id='priceBox'>
                 <div class='price'>$12.99</div>
             </div>
             <div class='description'>erect flowers with long, broad, parallel-veined leaves and a cup-shaped<br />
                 single or double flower at the tip of the stem
             </div>
             <div class='color'>Color: <span>Violet</span></div>
                      <div  id='addToCart' runat="server" >
                            <a href='AddtoCart.aspx?id=3' class='btn' >add to cart</a>
                            <button id="3" value="3" href='XoaSPTrangChiTiet.aspx?id=3' class='btn' onclick="action()" >delete</button>
                      </div>
             <p>Shipped within 2-3 days from placing order </p>
         </div>
     </div>
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
