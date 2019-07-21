<%-- 
    Document   : ChangePass
    Created on : Jul 3, 2019, 9:05:56 AM
    Author     : vank4
--%>

<%@page import="entity.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../CSS/mystyle.css">
        <script>
            function validate() {
                var fpass = document.forms["frmchangepass"]["newpass"].value;
                var repass = document.forms["frmchangepass"]["repass"].value;
                if (fpass === repass) {
                    return true;
                } else {
                    alert("Nhập lại mật khẩu không khớp");
                    return false;
                }
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đổi mật khẩu</title>
    </head>
    <body id="bodystyle">
        <!--header-->
        <header id="header">
            <jsp:include page="Header.jsp"/>
        </header>
        <!--menuContainer-->
        <section id="menuContainer">
            <jsp:include page="MenuContainer.jsp"/>
        </section>
        <!--end menuContainer-->
        <%
            if (request.getAttribute("changepass") != null) {%>
        <script>
            window.alert("<%=request.getAttribute("changepass")%>");
        </script>
        <%}%>
        <!--end header-->
        <section style="width: 990px; margin: 0 auto;background-color: #FFFFFF;border: 0px solid #8C0209;padding: 20px 5px 0px 5px;">
            <form name="frmchangepass" action="ChangePassServlet" method="post" onsubmit="return  validate()">
                <table style="width: 40%;margin-left: auto; margin-right: auto;">
                    <tr>
                        <td>Tên đăng nhập</td>
                        <%
                            Account acc = (Account) session.getAttribute("account");
                        %>
                        <td><input type="text" name="username" value="<%=acc.getUsername()%>" readonly></td>
                    </tr>
                    <tr>
                        <td>Mật khẩu cũ</td>
                        <td><input type="password" name="oldpass" required></td>
                    </tr>
                    <tr>
                        <td>Mật khẩu mới</td>
                        <td><input type="password" name="newpass" required></td>
                    </tr>
                    <tr>
                        <td>Nhập lại mật khẩu mới</td>
                        <td><input type="password" name="repass" required></td>
                    </tr>
                    <tr>
                        <td></td>
                    <script>
                        function dieu_huong() {
                            location.replace("Index.jsp");
                        }
                    </script>
                    <td>
                        <input type="submit" value="Đổi mật khẩu">
                        <button name="cancel" value="Cancel" onclick="dieu_huong()">Thoát</button>
                    </td>
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
