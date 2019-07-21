<%-- 
    Document   : Noidung
    Created on : Jun 27, 2019, 5:17:44 AM
    Author     : vank4
--%>

<%@page import="model.DBCategory"%>
<%@page import="entity.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.DBProduct"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/Assignment/CSS/mystyle.css">
        <script src="/Assignment/JavaScript/myScript.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>
        <%
            String code = request.getParameter("category");
            if (code == null) {
                code = "GCG";
            }
            DBProduct pdb = new DBProduct();
            ArrayList<Product> list = pdb.getListProductByCatID(code);
            DBCategory cdb = new DBCategory();
            String name = cdb.getNameByCode(code);
            String[] imgname = new String[list.size()];
            double[] price = new double[list.size()];
            for (int i = 0; i < list.size(); i++) {
                imgname[i] = list.get(i).getImage();
                price[i] = list.get(i).getPrice();
            }
            String s = "";
            int k = 4;
            int row;

            if ((imgname.length % k) == 0) {
                row = imgname.length / k;
            } else {
                row = imgname.length / k + 1;
            }

            s = "<table>";
            for (int i = 0; i < row; i++) {
                s += "<tr>";
                if (i < (row - 1)) {
                    for (int j = 0; j < k; j++) {
                        String link = "Detail.jsp?id=" + list.get(i * k + j).getID();
                        s += "<td>"
                                + "<a href='" + link + "' target='_parent'>"
                                + "<img src=\"Images/" + imgname[i * k + j]
                                + " \" style=\"width:240px; height:280px\">"
                                + "</a>"
                                + "<p><a href='#' target='_parent'>"
                                + "<img src='Images/buy.jpg'></a>Giá của sản phẩm: " + price[i * k + j] + " VND</p></td>";
                    }
                } else {
                    int x = imgname.length % k;
                    if (x == 0) {
                        x = k;
                    }
                    for (int j = 0; j < x; j++) {
                        String link = "Detail.jsp?id=" + list.get(i * k + j).getID();
                                s += "<td>"
                                + "<a href='" + link + "' target='_parent'>"
                                + "<img src=\"Images/" + imgname[i * k + j]
                                + " \" style=\"width:240px; height:280px\">"
                                + "</a>"
                                + "<p><a href='#' target='_parent'>"
                                + "<img src='Images/buy.jpg'></a>Giá của sản phẩm: " + price[i * k + j] + " VND</p></td>";
                    }
                }
                s += "</tr>";
            }
            s += "</table>";
        %>
        <div id="mainContent_4_title" class="radius">
            &loz; <%=name%>
        </div>
        <div id="noichuaanh"> <%=s%></div>  
    </body>
</html>
