﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="store.aspx.cs" Inherits="FlowersShop.store" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <link rel="stylesheet" href="CSS/TrangChu.css" />
    <style>
        section#products {
            margin-top: 100px;
        }

        .search-text {
            display: flex;
            width: 50%;
            height: 40px;
            background-color: none;
            border: 1px solid red;
            border-radius: 10px;
        }

            .search-text input {
                height: 38px;
                width: 85%;
                border: none;
                padding-left: 10px;
                margin-left: 10px;
            }

        .btn-seach {
            float: right;
            width: 15%;
            height: 38px;
            line-height: 38px;
            text-align: center;
            background-color:pink;
            border-radius: 10px;
        }

        .search-text input:focus .search-text input:active, .search-text input {
            outline: 0;
            outline-style: none;
            outline-width: 0;
            border-radius: 10px 0px 0px;
        }
    </style>
</head>
<body>
    <form action="store.aspx" method="get">
    <header>
        <input type="checkbox" name="" id="toggler" />
        <label for="toggler" class="fas fa-bars"></label>
        <a href="Trangchu.aspx" class="logo">Flower<span>.</span></a>
            <div class=" icons search-text">
                <input id="timkiem" type="search" name="timkiem" placeholder="Tìm kiếm của bạn..."/>
                <button type="submit" class="btn-seach fa fa-search"></button>
            </div>
        <div class="icons">
            <a href="#" class="fas fa-heart"></a>
            <a href="Cart.aspx" class="fas fa-shopping-cart"></a>
            <a href="Login.aspx" class="fas fa-user"></a>
        </div>
    </header>

    <section class="products" id="products" runat="server">
        <h1 class="heading">lastest <span>products</span></h1>
        <div class="box-container" id="listProducts" runat="server">
            <div class="box">
                <div class="image">
                    <img src="/Picture/image1.jpg" alt="">
                    <div class="icons">
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="cart-btn">add to cart</a>
                        <a href="#" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>flower pot</h3>
                    <div class="price">$12.99</div>
                </div>
            </div>
            <div class="box">
                <div class="image">
                    <img src="/Picture/image1.jpg" alt="">
                    <div class="icons">
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="cart-btn">add to cart</a>
                        <a href="#" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>flower pot</h3>
                    <div class="price">$12.99</div>
                </div>
            </div>
            <div class="box">
                <div class="image">
                    <img src="/Picture/image1.jpg" alt="">
                    <div class="icons">
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="cart-btn">add to cart</a>
                        <a href="#" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>flower pot</h3>
                    <div class="price">$12.99</div>
                </div>
            </div>
            <div class="box">
                <div class="image">
                    <img src="/Picture/image1.jpg" alt="">
                    <div class="icons">
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="cart-btn">add to cart</a>
                        <a href="#" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>flower pot</h3>
                    <div class="price">$12.99</div>
                </div>
            </div>
            <div class="box">
                <div class="image">
                    <img src="/Picture/image1.jpg" alt="">
                    <div class="icons">
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="cart-btn">add to cart</a>
                        <a href="#" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>flower pot</h3>
                    <div class="price">$12.99</div>
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

        <div class="credit"> created by <span> Nguyen Thi Thu Hang</span></div>
    </section>
        </form>
</body>
</html>