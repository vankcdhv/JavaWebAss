<%-- 
    Document   : Header.jsp
    Created on : Jun 27, 2019, 4:09:24 AM
    Author     : vank4
--%>

<%@page import="entity.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="/Assignment/CSS/mystyle.css">
        <script src="/Assignment/JavaScript/myScript.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <div id="logo">
            <div>
                <h1>Shop<span> SHOE</span></h1> 
                <p> GIÀY NAM NỮ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
            </div>
            <div id="login" style="text-align: right">
                <% if (request.getAttribute("error") != null) {
                        String error = (String) request.getAttribute("error");
                %>
                <script> window.alert("<%=error%>")</script>
                <%}%>
                <form name="formLogin" action="LoginServlet" method="post">
                    <% if (session.getAttribute("account") == null) {%>
                    <input id="username" type="text" name="username" placeholder="Tên đăng nhập" required>
                    <input id="password" type="password" name="password" placeholder="Mật khẩu" required>
                    <input type="submit" value="Đăng nhập">
                    <script>
                        function dieu_huong() {
                            location.replace("Register.jsp");
                        }
                    </script>
                    <input type="button" value="Đăng ký" onclick="dieu_huong()">
                    <% } else {
                        Account a = (Account) session.getAttribute("account");  %>
                        <img src="/Assignment/Images/Account.png" style="width: 15px; height: 15px">
                        &nbsp;<%=a.getDisplayName()%>
                        <%
                            if(a.getType()==0){%>
                            <a href="Management.jsp">Quản lý</a>
                        <%}%>
                        &nbsp;<a href="AccountProfile.jsp">Thông tin</a>
                        &nbsp;<a href="LogoutServlet">Đăng xuất</a>
                    <% }%>
                </form>
            </div>
        </div>
    </body>
</html>
