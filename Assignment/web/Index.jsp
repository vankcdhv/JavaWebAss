<%-- 
    Document   : Index
    Created on : Jun 25, 2019, 12:11:05 AM
    Author     : vank4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/Assignment/CSS/mystyle.css">
        <script src="/Assignment/JavaScript/myScript.js"></script>
        <meta charset = "utf-8">
        <title>Fashion</title>
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
        <!--pageContainer-->
        <section id="mainContainer">
            <jsp:include page="MainContainer.jsp"/>
        </section>
        <!--end pageContainer-->
        <!--footer-->
        <div id="footer">
            <jsp:include page="Footer.jsp"/>
        </div>
        <!--end footer-->
    </body>
</html>