<%-- 
    Document   : Register
    Created on : Jun 11, 2019, 9:49:40 AM
    Author     : vank4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../CSS/mystyle.css">
        <script>
            function matchPass() {
                var fpass = document.forms["frmregister"]["password"].value;
                var repass = document.forms["frmregister"]["repass"].value;
                if (fpass === repass) {
                    return true;
                } else {
                    alert("Nhập lại mật khẩu không khớp!");
                    return false;
                }
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
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
        <section style="width: 990px; margin: 0 auto;background-color: #FFFFFF;border: 0px solid #8C0209;padding: 20px 5px 0px 5px;">
            <H2 style="text-align: center">Enter Information of new Account</H2>
            <form name="frmregister" action="AddAccountServlet" method="post" onsubmit="return matchPass()">
                <table style=" width: 40%;margin-left: auto; margin-right: auto">
                    <tr>
                        <td>Tên đăng nhập</td>
                        <td><input type="text" name="username" required></td>
                    </tr>
                    <tr>
                        <td>Mật khẩu</td>
                        <td><input type="password" name="password" required></td>
                    </tr>
                    <tr>
                        <td>Nhập lại mật khẩu</td>
                        <td><input type="password" name="repass" required></td>
                    </tr>
                    <tr>
                        <td>Tên hiễn thị</td>
                        <td><input type="text" name="fullname" required></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="email" name="email" required></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="ADD"></td>
                    </tr>
                </table>
            </form>
        </section>
        <!--footer-->
        <div id="footer">
            <jsp:include page="Footer.jsp"/>
        </div>
        <!--end footer-->
    </body>
</html>
