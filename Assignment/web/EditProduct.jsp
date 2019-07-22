<%-- 
    Document   : EditProduct
    Created on : Jul 21, 2019, 5:19:17 PM
    Author     : vank4
--%>

<%@page import="entity.Product"%>
<%@page import="model.ProductDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        String ID = (String) request.getParameter("id");
        ProductDB pdb = new ProductDB();
        Product shoe = pdb.getProductByID(ID);
    %>

    <head>
        <link rel="stylesheet" type="text/css" href="/Assignment/CSS/mystyle.css">
        <script src="/Assignment/JavaScript/myScript.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=shoe.getName()%></title>
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
        <form name="frm_edit_product" action="UpdateProductServlet" method="post" enctype="ultipart/form-data">
            <section id="mainContainer">
                <!-- Start sidebar1 -->
                <aside style="width: 300px;float: left;">
                    <h2 style="color: brown;text-align: center;"><%=shoe.getName()%></h2>
                    <div id="section1"> 
                        <!--Mục 1-->
                        <img src="Images/<%=shoe.getImage()%>" style="width: 300px;height: 300px;">
                        <br>
                        <input type="file" name="image" accept="image/*">
                    </div>
                </aside>
                <!-- end sidebar1 -->
                <!-- start content -->
                <section style="float: left;width: 600px;">
                    <div style="width: 600px;height: 400px;padding-left: 50px; background-color: #fff;">
                        <h2>THÔNG TIN SẢN PHẨM</h2>
                        <table style="width: 600px;margin-left: auto;margin-right: auto;">
                            <tr>
                                <td>Tên sản phẩm:</td>
                                <td><input type="text" name="name" value="<%=shoe.getName()%>"></td>
                            <tr>
                                <td>Giá:</td>
                                <td><input type="text" name="price" value="<%=shoe.getPrice()%>"></td>
                            </tr>
                            <tr>
                                <td>Còn:</td>
                                <td><input type="text" name="name" value="<%=shoe.getQuantity()%>" style="width: 50px"> sản phẩm</td>
                            </tr>
                            <tr>
                                <td>Thông tin thêm:</td>
                                <td>
                                    <textarea name="des" rows="5" cols="40" style="">
                                        <%=shoe.getDescribe().trim()%>
                                    </textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                            </tr>
                        </table>
                    </div>
                </section>
                <!-- end content -->
            </section>
        </form>
        <!--footer-->
        <div id="footer">
            <jsp:include page="Footer.jsp"/>
        </div>
        <!--end footer-->
    </body>
</html>
