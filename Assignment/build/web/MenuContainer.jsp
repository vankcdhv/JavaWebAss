<%-- 
    Document   : MainContent
    Created on : Jun 27, 2019, 4:16:58 AM
    Author     : vank4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/Assignment/CSS/mystyle.css">
        <script src="/Assignment/JavaScript/myScript.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav id="menu">
            <ul>
                <li><a href="Index.jsp">Trang chủ</a></li>
                <li>&loz;</li>
                <li><a href="#">Giày nữ</a></li>
                <li>&loz;</li>
                <li><a href="#">Giày nam</a></li>
                <li>&loz;</li>
                <li><a href="#">Phụ kiện</a></li>
                <li>&loz;</li>
                <li><a href="#">Tin tức sự kiện</a></li>
                <li>
                    <form name="frmTim" action="" method="get">
                        <input id="inp" type="text" name="txt" placeholder="Tên sản phẩm" required>
                        <input type="image" src="/Assignment/Images/search.png" name="btnTim" style="position: relative; top: 7px" onclick="search()" >
                    </form>
                </li>
            </ul>
        </nav>
    </body>
</html>
