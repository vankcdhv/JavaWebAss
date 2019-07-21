<%-- 
    Document   : AccountManagement
    Created on : Jul 4, 2019, 11:12:38 PM
    Author     : vank4
--%>

<%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/Assignment/CSS/mystyle.css">
        <script src="/Assignment/JavaScript/myScript.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body id="bodyStyle">
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
        <!-- Start sidebar1 -->
        <section id="mainContainer">
            <!-- Start sidebar1 -->
            <aside id="sidebar1">
                <div id="section1"> 
                    <div id="sanphammoi" class="radius">Danh mục</div>
                    <div id="content_left" >
                        <ul>
                            <li><a href="Management.jsp?page=account">Quản lý tài khoản</a></li>
                            <li><a href="Management.jsp?page=product"">Quản lý sản phẩm</a></li>
                        </ul>
                    </div>   
                </div>
            </aside>
            <!-- end sidebar1 -->
            <!-- start content -->
            <section style="width: ">
                <div style="height: auto;padding-left: 20px; background-color: #fff;">
                    <%!String page;%>
                    <%
                        page = request.getParameter("page");
                        if (page != null) {
                            if (page.equals("account")) {%>
                    <jsp:include page="Management_Account.jsp"/>
                    <%} else {
                        if (page.equals("product")) {%>
                    <jsp:include page="Management_Product.jsp"/>
                    <%}%> 

                    <%}
                        }%>
                </div>
            </section>
            <!-- end content -->
            <div style="clear: both;">&nbsp;</div>
        </section>
        <!-- end sidebar1 -->
        <!--footer-->
        <div id="footer">
            <jsp:include page="Footer.jsp"/>
        </div>
        <!--end footer-->
    </body>
</html>
