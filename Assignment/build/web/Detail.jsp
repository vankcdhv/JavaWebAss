<%-- 
    Document   : Detail
    Created on : Jul 5, 2019, 11:40:26 AM
    Author     : vank4
--%>

<%@page import="model.ProductDB"%>
<%@page import="entity.Product"%>
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
        <!--header-->
        <header id="header">
            <jsp:include page="Header.jsp"/>
        </header>
        <!--end header-->
        <!--menuContainer-->
        <section id="menuContainer">
            <jsp:include page="MenuContainer.jsp"/>
        </section>
        <!--end menuContainer-->
        <%
            String id = request.getParameter("id");
            ProductDB pdb = new ProductDB();
            Product shoe = pdb.getProductByID(id);

        %>
        <section id="mainContainer">
            <!-- Start sidebar1 -->
            <aside style="width: 300px;float: left;">
                <h2 style="color: brown;text-align: center;"><%=shoe.getName()%></h2>
                <div id="section1"> 
                    <!--Mục 1-->
                    <img src="Images/<%=shoe.getImage()%>" style="width: 300px;height: 300px;">
                </div>
            </aside>
            <!-- end sidebar1 -->
            <!-- start content -->
            <section style="float: left;width: 500px;">
                <div style="width: 500px;height: 400px;padding-left: 100px; background-color: #fff;">
                    <h2>THÔNG TIN SẢN PHẨM</h2>
                    <table style="width: 500px;margin-left: auto;margin-right: auto;">
                        <tr>
                            <td>Tên sản phẩm:</td>
                            <td><%=shoe.getName()%></td>
                        <tr>
                            <td>Giá:</td>
                            <td><%=shoe.getPrice()%></td>
                        </tr>
                        <tr>
                            <td>Còn:</td>
                            <td><%=shoe.getQuantity()%> sản phẩm</td>
                        </tr>
                        <tr>
                            <td>Thông tin thêm:</td>
                            <td><%=shoe.getDescribe()%></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><%=shoe.getStatus()%></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><a href="#"><img src="Images/buy.jpg">Thêm vào rỏ hàng</a></td>
                        </tr>
                    </table>
                </div>
            </section>
            <!-- end content -->
        </section>
        <!--footer-->
        <div id="footer">
            <jsp:include page="Footer.jsp"/>
        </div>
        <!--end footer-->
    </body>
</html>

