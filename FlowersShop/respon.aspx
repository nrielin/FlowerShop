<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="respon.aspx.cs" Inherits="FlowersShop.respon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #wp-content{
            max-width:960px;
            margin:0 auto;
        }
        #header,
        #footer{
            background:brown;
            padding:10px;
            text-align:center;
            color:yellow;
        }
        #wp-content{
            display:flex;
            flex-wrap:wrap;
        }
        #content,
        #sidebar{
            padding:10px;
            box-sizing:border-box;

        }
        #content{
            flex-basis:100%;
            background:rgb(128, 128, 128);
        }
        #sidebar{
            flex-basis:100%;
            background:rgb(182, 255, 0);
        }

        @media (min-width:576px){
            #content{
                flex-basis:70%;
            }
            #sidebar{
                flex-basis:30%;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <h1>Header</h1>
        </div>
        <div>
    <details>
        <summary>BTL Lập Trình Web gồm:</summary>
        <ul>
            <li><a href="TrangChu.aspx">Trang Chu</a></li>
            <li><a href="TrangChu.aspx#about">About</a></li>
            <li><a href="TrangChu.aspx#products">Product</a></li>
        </ul>
    </details>
</div>
        <div id="wp-content">
           <div id="content">
               <h1>Content</h1>
              <p>Data Mining, hay khai phá dữ liệu, là quá trình phân tích tập hợp dữ liệu lớn để xác định các mẫu, thiết lập mối liên hệ và giải quyết vấn đề thông qua phân tích dữ liệu1. Quá trình này bao gồm nhiều bước như làm sạch dữ liệu, tích hợp, chọn lọc, chuyển đổi, khai phá, đánh giá mẫu và trình bày thông tin1. Các kỹ thuật khai phá dữ liệu bao gồm quy tắc kết hợp, phân loại, phân cụm và dự báo1.

                Khai phá dữ liệu không chỉ giới hạn trong việc trích xuất dữ liệu mà còn được sử dụng để chuyển đổi, làm sạch, tích hợp dữ liệu và phân tích mẫu. Nó sử dụng các phương pháp và thuật toán máy học để tạo ra thông tin giá trị từ dữ liệu không biết trước đó2.

                Ứng dụng của Data Mining rất đa dạng, từ phân tích thị trường và chứng khoán, phát hiện gian lận, quản lý rủi ro, phân tích doanh nghiệp, cho đến phân tích giá trị trọn đời của khách hàng1. Các công cụ khai phá dữ liệu phổ biến bao gồm RapidMiner, Weka, và nhiều công cụ khác</p>
                           
                  <p>Data Mining, hay khai phá dữ liệu, là quá trình phân tích tập hợp dữ liệu lớn để xác định các mẫu, thiết lập mối liên hệ và giải quyết vấn đề thông qua phân tích dữ liệu1. Quá trình này bao gồm nhiều bước như làm sạch dữ liệu, tích hợp, chọn lọc, chuyển đổi, khai phá, đánh giá mẫu và trình bày thông tin1. Các kỹ thuật khai phá dữ liệu bao gồm quy tắc kết hợp, phân loại, phân cụm và dự báo1.

                Khai phá dữ liệu không chỉ giới hạn trong việc trích xuất dữ liệu mà còn được sử dụng để chuyển đổi, làm sạch, tích hợp dữ liệu và phân tích mẫu. Nó sử dụng các phương pháp và thuật toán máy học để tạo ra thông tin giá trị từ dữ liệu không biết trước đó2.

                Ứng dụng của Data Mining rất đa dạng, từ phân tích thị trường và chứng khoán, phát hiện gian lận, quản lý rủi ro, phân tích doanh nghiệp, cho đến phân tích giá trị trọn đời của khách hàng1. Các công cụ khai phá dữ liệu phổ biến bao gồm RapidMiner, Weka, và nhiều công cụ khác</p>
                 
            </div>
            <div id="sidebar">
            <h1>Sidebarrr</h1>
              <p>Data Mining, hay khai phá dữ liệu, là quá trình phân tích tập hợp dữ liệu lớn để xác định các mẫu, thiết lập mối liên hệ và giải quyết vấn đề thông qua phân tích dữ liệu1. Quá trình này bao gồm nhiều bước như làm sạch dữ liệu, tích hợp, chọn lọc, chuyển đổi, khai phá, đánh giá mẫu và trình bày thông tin1. Các kỹ thuật khai phá dữ liệu bao gồm quy tắc kết hợp, phân loại, phân cụm và dự báo1.

Khai phá dữ liệu không chỉ giới hạn trong việc trích xuất dữ liệu mà còn được sử dụng để chuyển đổi, làm sạch, tích hợp dữ liệu và phân tích mẫu. Nó sử dụng các phương pháp và thuật toán máy học để tạo ra thông tin giá trị từ dữ liệu không biết trước đó2.

Ứng dụng của Data Mining rất đa dạng, từ phân tích thị trường và chứng khoán, phát hiện gian lận, quản lý rủi ro, phân tích doanh nghiệp, cho đến phân tích giá trị trọn đời của khách hàng1. Các công cụ khai phá dữ liệu phổ biến bao gồm RapidMiner, Weka, và nhiều công cụ khác</p>
               
            </div>
            </div>
        <div id="footer">
            <h1>Footer</h1>
        </div>
    </form>
</body>
</html>
