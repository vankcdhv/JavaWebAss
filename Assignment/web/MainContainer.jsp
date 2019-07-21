<%-- 
    Document   : MainContainer
    Created on : Jun 27, 2019, 4:22:15 AM
    Author     : vank4
--%>

<%@page import="model.ProductDB"%>
<%@page import="entity.Product"%>
<%@page import="entity.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/Assignment/CSS/mystyle.css">
        <script src="/Assignment/JavaScript/myScript.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Container</title>
    </head>
    <body>
        <!-- Start sidebar1 -->
        <aside id="sidebar1">
            <div id="section1"> 
                <!--Mục 1-->
                <jsp:include page="ContentLeft.jsp"/>
            </div>
            <br>
            <div id="section2"> 
                <!--Mục 2 -->
                <jsp:include page="HoTroTrucTuyen.jsp"/>
            </div>
            <br>
            <div id="section3"> 
                <!--Mục 3 -->
                <jsp:include page="Thongke.jsp"/>
            </div>
        </aside>
        <!-- end sidebar1 -->
        <!-- start content -->
        <section id="mainContent">
            <div id="mainContent_1">
                <img src="/Assignment/Images/loro-piana-luxury-designer-clothes-shop-on-sloane-street-london-uk-E3X55D.jpg">
                <div id="mainContent_1_title">
                    &laquo;&laquo;&nbsp;&nbsp;Cửa hàng của chúng tôi&nbsp;&nbsp;&raquo;&raquo;
                </div>
            </div> 
            <!--mục 1 -->
            <div id="mainContent_2"> <!—mục 2 -->
                <div id="mainContent_2_title" class="radius">
                    &loz; Thời trang cực hot !!! 
                </div>
                <div id="mainContent_2_content"> 
                    <%
                        ProductDB pdb = new ProductDB();
                        ArrayList<Product> list = pdb.getTopProduct();
                        String[] imgname = new String[list.size()];
                        double[] price = new double[list.size()];
                        for (int i = 0; i < list.size(); i++) {
                            imgname[i] = list.get(i).getImage();
                            price[i] = list.get(i).getPrice();
                        }
                        String s = "";
                        int k = 7;
                        int row;
                        if ((imgname.length % k) == 0) {
                            row = imgname.length / k;
                        } else {
                            row = imgname.length / k + 1;
                        }
                        for (int i = 0; i < row; i++) {
                            if (i < (row - 1)) {
                                for (int j = 0; j < k; j++) {
                                    String link = "Detail.jsp?id=" + list.get(i * k + j).getID();
                                    s += "<a href='" + link + "' target='_parent'>"
                                            + "<img src=\"Images/" + imgname[i * k + j] + " \">"
                                            + "</a>";
                                }
                            } else {
                                int x = imgname.length % k;
                                if (x == 0) {
                                    x = k;
                                }
                                for (int j = 0; j < x; j++) {
                                    String link = "Detail.jsp?id=" + list.get(i * k + j).getID();
                                    s += "<a href='" + link + "' target='_parent'>"
                                            + "<img src=\"Images/" + imgname[i * k + j] + " \">"
                                            + "</a>";
                                }
                            }
                        }
                    %>
                    <%=s%>
                </div>
            </div>
            <div id="mainContent_4">
                <%--<jsp:include page="Noidung.jsp"/>--%>
                <%
                    String catID = request.getParameter("category");
                    if (catID == null) {%>
                <jsp:include page="Noidung.jsp"/>
                <%} else {%>
                <jsp:include page="Noidung.jsp?category=<%=catID%>"/>
                <%}%>

            </div>
        </section>
        <!-- end content -->
        <div style="clear: both;">&nbsp;</div>
    </body>
</html>
