<%-- 
    Document   : Management_Account
    Created on : Jul 4, 2019, 11:37:14 PM
    Author     : vank4
--%>

<%@page import="model.AccountDB"%>
<%@page import="entity.Account"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            function dieu_huong(locat) {
                location.replace(locat);
            }
            function showConfirm() {
                if (confirm("Bạn chắc chắn muốn xoá tài khoản!")) {
                    return true;
                } else {
                    return false;
                }
            }
        </script>
        <title>JSP Page</title>
    </head>
    <body>

        <table style="width: 400px;margin-left: auto; margin-right: auto;">
            <H1 style="text-align: center">Danh sách tài khoản</H1>
            <tr>
                <td>Tên đăng nhập</td>
                <td>Mật khẩu</td>
                <td>Tên Hiễn Thị</td>
                <td>Email</td>
                <td>Loại tài khoản</td>
                <td></td>
                <td></td>
            </tr>
            <%
                AccountDB adb = new AccountDB();
                ArrayList<Account> list = adb.getAllAccount();
                for (Account i : list) {%>
            <tr>
                <td><input type="text" name="username" value="<%=i.getUsername()%>" readonly required style="width: 100px"></td>
                <td><input type="password" name="password" value="<%=i.getPassword()%>" readonly required style="width: 80px"></td>
                <td><input type="text" name="fullname" value="<%=i.getDisplayName()%>" readonly required style="width: 130px"></td>
                <td><input type="text" name="email" value="<%=i.getEmail()%>" required readonly style="width: 200px"></td>
                <td>
                    <%
                        if (i.getType() == 0) {%>
                    <input type="text" name="type" value="Admin"required readonly style="width: 80px">
                    <% } else {
                        if (i.getType() == 1) {%>
                    <input type="text" name="type" value="Staff"required readonly style="width: 80px">
                    <% } else { %>
                    <input type="text" name="type" value="Customer"required readonly style="width: 80px">
                    <%}
                        }%>
                </td>
                <td><a href="AccountUpdate.jsp?username=<%=i.getUsername()%>">Sửa</a></td>
                <td><a onclick="return showConfirm()" href="AccountDelleteServlet?username=<%=i.getUsername()%>">Xoá</a></td>
            </tr>

            <%}%>
            <tr>
                <td><a href="AddAccount.jsp">Add account</a></td>
            </tr>
        </table>

    </body>
</html>

