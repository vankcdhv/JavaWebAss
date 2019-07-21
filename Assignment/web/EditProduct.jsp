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
        String ID = (String)request.getAttribute("id");
        ProductDB pdb = new ProductDB();
        Product shoe = pdb.getProductByID(ID);
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=shoe.getName()%></title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
