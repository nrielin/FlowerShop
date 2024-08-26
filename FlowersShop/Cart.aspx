<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="FlowersShop.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
    <link rel="stylesheet" href="CSS/TrangChu.css"/>
    <style>
        .container {
        min-height: 550px;
        display: flex;
        flex-direction: column;
        margin-bottom: 200px;
    }
    .shoppingCart {
        margin: 150px auto 0;
        min-height: 230px;
    }

    .product__title {
        display: grid;
        grid-template-columns: 150px 200px 100px 150px 100px 150px 50px;
        grid-template-areas:
            "image name size price quantity total remove";
        text-align: center;
        font-size: 1.8rem;
        color: #666;
    }

    .product {
        display: grid;
        grid-template-columns: 150px 200px 100px 150px 100px 150px 50px;
        grid-auto-rows: 100px;
        grid-template-areas:
            "image name size price quantity total remove";
    }
    .product__title--name {
        grid-area: name;
    }

    .product__title--size {
        grid-area: size;
    }

    .product__title--price {
        grid-area: price;
    }

    .product__title--quantity {
        grid-area: quantity;
    }

    .product__title--total {
        grid-area: total;
    }


    .product + .product {
        border-top: 1px solid #999;
        margin-top:20px;
    }

    .shoppingCart__detail {
        font-size: 1.6rem;
    }

    .image {
        grid-area: image;
    }

        .image img {
            height: 100px;
            position: relative;
            top: 0;
        }

    .name {
        grid-area: name;
        margin: auto 0;
    }

    .size {
        grid-area: size;
        margin: auto 0;
        text-align: center;
    }

    .price {
        grid-area: price;
        text-align: center;
        margin: auto 0;
    }

    .quantity {
        grid-area: quantity;
        text-align: center;
        margin: auto 0;
    }

        .quantity input {
            width: 50px;
            text-align: center;
        }

    .total {
        grid-area: total;
        text-align: center;
        margin: auto 0;
    }

    .remove {
        grid-area: remove;
        text-align: center;
        margin: auto 0;
    }

        .remove i:hover {
            padding: 5px;
            border-radius: 2px;
            background-color: #bdbdbd;
        }

    /* CHECK OUT */
    .order {
        border-top: 1px solid var(--primary-color);
        padding: 30px 60px;
        margin: 50px auto 0;
        height: 120px;
        display: grid;
        grid-template-columns: 425px 425px;
        grid-template-areas:
            "note checkout";
    }

    .note {
        grid-area: note;
        font-size: 1.5rem;
        padding-left: 20px;
    }

    .checkout {
        grid-area: checkout;
        text-align: right;
        padding-right: 10px;
    }

    .checkout__subtotal {
        margin-bottom: 8px;
    }

        .checkout__subtotal span:first-child {
            font-size: 1.4rem;
            color: #888;
        }

        .checkout__subtotal span:last-child {
            font-size: 1.8rem;
            color: #333;
        }


    .checkout__extra {
        margin-bottom: 20px;
    }
    
div.btn {
    background-color: #fff;
    color: #333;
    border: 1px solid #333;
}
    .checkout__btn a {
        margin-top: 10px;
        font-size: 1.8rem;
        color: #333;
        padding: 5px 30px;
        border-radius: 3px;
        background-color: #fff;
        border: 1px solid #000000;
    }

        .checkout__btn a:hover {
            background-color: var(--button-hover-color);
            color: var(--white-color);
            cursor: pointer;
        }

    @media only screen and (max-width: 768px) {
        .product__title {
            display: grid;
            grid-template-columns: 150px 150px 50px 100px 50px 100px 50px;
            /* grid-auto-rows: 100px; */
            grid-template-areas:
                "image name size price quantity total remove";
            text-align: center;
            font-size: 1.8rem;
            color: #666;
        }

        .product {
            display: grid;
            grid-template-columns: 150px 150px 50px 100px 50px 100px 50px;
            grid-auto-rows: 100px;
            grid-template-areas:
                "image name size price quantity total remove";
        }

        .order {
            grid-template-columns: 300px 300px;
            grid-template-areas:
                "note checkout";
        }
    }

    </style>
    <script>
        function changeTotal() {
            let Quantity = event.target;
            let sTotal = event.target.parentElement.nextSibling;
            let sPrice = event.target.parentElement.previousElementSibling.innerText;
            
            let ssubTotal = document.getElementById("subTotalBox");
            let SubTotal = ssubTotal.innerHTML.split("$");
            let Total = sTotal.innerText.split("$");
            console.log(Total);
            let Price = sPrice.split("$");
            let output = parseFloat(parseFloat(Quantity.value) * parseFloat(Price[1]));
            let NewSubTotal = parseFloat(SubTotal[1]) + (output - parseFloat(Total[1]))
            console.log("SubTotal");
            console.log(SubTotal);
            console.log("Price");
            console.log(Price);
            console.log("Total");
            console.log(Total);
            sTotal.innerHTML = "$" + output;
            ssubTotal.innerHTML = "$" + NewSubTotal;

}
    </script>
</head>
<body>
     <header>
        <input type="checkbox" name="" id="toggler"/>
        <label for="toggler" class="fas fa-bars"></label>
        
        <a href="Trangchu.aspx" class="logo">Flower<span>.</span></a>

        <nav class="navbar">
            <a href="Trangchu.aspx#home">Home</a>
            <a href="Trangchu.aspx#about">About</a>
            <a href="Trangchu.aspx#products">Products</a>
            <a href="Trangchu.aspx#review">Review</a>
        </nav>

        <div class="icons">
            <a href="respon.aspx" class="fas fa-heart"></a>
            <a href="Cart.aspx" class="fas fa-shopping-cart"></a>
            <a href="Login.aspx" class="fas fa-user"></a>
        </div>
          <div class="log" id="log" runat="server">
             <%--<a href="signin.aspx" class="">
                 <span >Sign in</span>
                 <a href=""><i class="fa-solid fa-caret-down"></i></a>
             </a>--%>
         </div>
   </header> 

   <section>
    <div class="container">
        <div class=" shoppingCart"   id="shoppingCart" runat="server">
            <div class="product__title">
                <span class="product__title--id">ID</span>
                <span class="product__title--name">Product</span>
                <span class="product__title--price">Price</span>
                <span class="product__title--quantity">Quantity</span>
                <span class="product__title--total">Total</span>
            </div>
            <br />
            <div class="product">
                <div class="shoppingCart__detail id">
                        <span>Carnation</span>
                    </div>
                    <div class="shoppingCart__detail image">
                        <img src="Picture/image8.jpg" alt="">
                    </div>
                    <div class="shoppingCart__detail name">
                        <span>Carnation</span>
                    </div>
                    <div class="shoppingCart__detail price">
                        <span id="price">$30.00</span>
                    </div>
                    <div class="shoppingCart__detail quantity" >
                        <input type="number" min="1" value="1" id="quantity" onkeyup="changeTotal()" onchange="changeTotal()"/>
                    </div>
                    <div class="shoppingCart__detail total">
                        <span id="total">$30.00</span>
                    </div>
                    <div class="shoppingCart__detail remove">
                        <a href="#"><i class="fa-solid fa-xmark"></i></a>
                    </div>
            </div>
            </div>


        <div class="order">
            <div class="note">
                <span>Note to add if sending as gift:</span><br>
                <textarea name="" id="" cols="30" rows="6"></textarea>
            </div>
            <div class="checkout">
                <div class="checkout__subtotal">
                    <span>SUBTOTAL: </span>
                    <span id="subTotalBox" runat="server">$89.95</span>
                </div>
                <div class="checkout__extra">
                    Ships on or around April 20, 2024
                </div>
                <div class="btn">
                    <a href="Trangchu.aspx">CHECK OUT</a>
                </div>
            </div>
        </div>
   </div>
   </section>

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

    <div class="credit"> created by <span> ------</span></div>
</section>
</body>
</html>
