<%-- 
    Document   : Management_Product
    Created on : Jul 4, 2019, 11:37:28 PM
    Author     : vank4
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="entity.Product"%>
<%@page import="java.util.List"%>
<%@page import="model.ProductDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Management Product</title>
        <link type="text/css" rel="stylesheet" href="CSS/mystyle.css">
    </head>
    <body>
        <H1 style="text-align: center">Danh sách sản phẩm</H1>
            <%
                ProductDB pdb = new ProductDB();
                List<Product> list = pdb.getAllProduct();
            %>
        <table>
            <%
                for (Product i : list) {
            %>
            <tr>
                <td><img src="Images/<%=i.getImage()%>" style="width: 128px; height: 128px;s"></td>
                <td><%=i.getName()%> </td>
                <td><button><a href="#" style="text-decoration: none; color: black">Sửa</a></button></td>
                <td><button><a href="#" style="text-decoration: none; color: black">Xoá</a></button></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
