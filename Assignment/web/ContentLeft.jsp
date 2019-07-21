<%-- 
    Document   : ContentLeft
    Created on : Jun 27, 2019, 5:10:38 AM
    Author     : vank4
--%>

<%@page import="entity.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.DBCategory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="CSS/mystyle.css">
        <script src="JavaScript/myScript.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="sanphammoi" class="radius">Category</div>
        <%
            DBCategory cdb = new DBCategory();
            ArrayList<Category> list = cdb.getAllCategories();
        %>
        <div id="content_left" >
            <ul>
                <% for (Category i : list) {
                        String link = "#";
                        link = "Index.jsp?category="+i.getID();
                %>
                <li><a href=<%=link%>><%=i.getName()%></a></li>
                    <%}%>
            </ul>
        </div>    
    </body>
</html>
