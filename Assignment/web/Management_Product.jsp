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
    </head>
    <body>
        <H1 style="text-align: center">Danh sách sản phẩm</H1>
        <%
            ProductDB pdb = new ProductDB();
            List<Product> list = new ArrayList<>();
            list = pdb.getAllProduct();
        %>
                
        <table>
            <tr></tr>
        </table>
    </body>
</html>
