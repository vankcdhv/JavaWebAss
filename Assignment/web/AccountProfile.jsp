<%-- 
    Document   : AccountProfile
    Created on : Jul 4, 2019, 10:02:19 PM
    Author     : vank4
--%>

<%@page import="entity.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Profile</title>
    </head>
    <body id="bodyStyle">
        <!--header-->
        <header id="header">
            <jsp:include page="Header.jsp"/>
        </header>
        <!--end header-->
        <%
            //boolean flag = false;
            String username="";
            Account acc = (Account) session.getAttribute("account");
//            if(request.getParameter("us_edit")!=null){
//                username =  request.getParameter("us_edit");
//                flag=true;
//            }
        %>
        
        <section style="width: 990px; margin: 0 auto;background-color: #FFFFFF;border: 0px solid #8C0209;padding: 20px 5px 0px 5px;">
            <H2 style="text-align: center">Thông tin tài khoản</H2>
            <form name="frmregister" action="AccountUpdateServlet" method="post">
                <table style=" width: 40%;margin-left: auto; margin-right: auto">
                    <tr>
                        <td>Tên đăng nhập</td>
                        <td><input type="text" name="username" value="<%=acc.getUsername()%>" required readonly style="width: 200px"></td>
                    </tr>
                    <tr>
                        <td>Tên hiễn thị</td>
                        <td><input type="text" name="fullname" value="<%=acc.getDisplayName()%>"required style="width: 200px"></td>
                    </tr>
                    <tr>
                        <td>Mật khẩu</td>
                        <td><input type="password" name="password" value="<%=acc.getPassword()%>"required readonly style="width: 200px"></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="email" name="email" value="<%=acc.getEmail()%>"required style="width: 200px"></td>
                    </tr>
                    <tr>
                        <td>Loại tài khoản</td>
                        <td>
                            <%
                                if (acc.getType() == 0) {%>
                                <input type="email" name="email" value="Admin"required readonly style="width: 200px">
                            <% } else {
                                if (acc.getType() == 1) {%>
                                <input type="email" name="email" value="Staff"required readonly style="width: 200px">
                            <% } else { %>
                            <input type="email" name="email" value="Customer"required readonly style="width: 200px">
                            <%}
                                }%>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="submit" value="Cập nhật">
                            <script>
                                function dieu_huong() {
                                    location.replace("ChangePass.jsp");
                                }
                            </script>
                            <button><a href="ChangePass.jsp" style="text-decoration: none;">Đổi mật khẩu</a></button>
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
