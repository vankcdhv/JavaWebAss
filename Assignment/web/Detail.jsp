<%-- 
    Document   : Detail
    Created on : Jul 5, 2019, 11:40:26 AM
    Author     : vank4
--%>

<%@page import="model.ProductDB"%>
<%@page import="entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

        <link rel="stylesheet" type="text/css" href="/Assignment/CSS/mystyle.css">
        <script src="/Assignment/JavaScript/myScript.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
        <%
            String id = request.getParameter("id");
            ProductDB pdb = new ProductDB();
            Product shoe = pdb.getProductByID(id);

        %>
        <section id="mainContainer">
            <!-- Start sidebar1 -->
            <aside style="width: 300px;float: left;">
                <h2 style="color: brown;text-align: center;"><%=shoe.getName()%></h2>
                <div id="section1"> 
                    <!--Mục 1-->
                    <img src="Images/<%=shoe.getImage()%>" style="width: 300px;height: 300px;">
                </div>
            </aside>
            <!-- end sidebar1 -->
            <!-- start content -->
            <section style="float: left;width: 500px;">
                <div style="width: 500px;height: 400px;padding-left: 100px; background-color: #fff;">
                    <h2>THÔNG TIN SẢN PHẨM</h2>
                    <table style="width: 500px;margin-left: auto;margin-right: auto;">
                        <tr>
                            <td>Tên sản phẩm:</td>
                            <td><%=shoe.getName()%></td>
                        <tr>
                            <td>Giá:</td>
                            <td><%=shoe.getPrice()%></td>
                        </tr>
                        <tr>
                            <td>Còn:</td>
                            <td><%=shoe.getQuantity()%> sản phẩm</td>
                        </tr>
                        <tr>
                            <td>Thông tin thêm:</td>
                            <td><%=shoe.getDescribe()%></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><%=shoe.getStatus()%></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><a href="#"><img src="Images/buy.jpg">Thêm vào giỏ hàng</a></td>
                        </tr>
                    </table>
                </div>
            </section>
            <!-- end content -->

            <div>

                <div class="col-lg-9 offset-lg-2 col-12 comment-main rounded">
                    <form ation="" method="post">
                        <div class="form-gtoup">
                            <label>Tên của bạn: </label>
                            <input name="name" class="form-control" type="text" required>
                        </div>

                        <div class="form-gtoup">
                            <label>Cùng chọn màu chữ:</label>
                            <input name="color" class="form-control" type="color">
                        </div>
                        <div class="form-gtoup">
                            <label>Lựa chọn 1 hình ảnh đại diện:</label>
                            <table width="100%" align="center">
                                <tr>
                                    <td width="10%"><input type="radio" name="avater" value="boy.png" required><img src="Images/boy.png" width="40"></td>
                                    <td width="10%"><input type="radio" name="avater" value="boy-1.png" required><img src="Images/boy-1.png" width="40"></td>
                                    <td width="10%"><input type="radio" name="avater" value="boy-2.png" required><img src="Images/boy-2.png" width="40"></td>
                                    <td width="10%"><input type="radio" name="avater" value="boy-3.png" required><img src="Images/boy-3.png" width="40"></td>
                                    <td width="10%"><input type="radio" name="avater" value="boy-4.png" required><img src="Images/boy-4.png" width="40"></td>
                                </tr>
                                <tr>
                                    <td width="10%"><input type="radio" name="avater" value="girl.png" required><img src="Images/girl.png" width="40"></td>
                                    <td width="10%"><input type="radio" name="avater" value="girl-1.png" required><img src="Images/girl-1.png" width="40"></td>
                                    <td width="10%"><input type="radio" name="avater" value="girl-2.png" required><img src="Images/girl-2.png" width="40"></td>
                                    <td width="10%"><input type="radio" name="avater" value="girl-3.png" required><img src="Images/girl-3.png" width="40"></td>
                                    <td width="10%"><input type="radio" name="avater" value="girl-4.png" required><img src="Images/girl-4.png" width="40"></td>
                                </tr>
                            </table>
                        </div>

                        <div class="form-gtoup">
                            <label>Nhận xét của bạn về sản phẩm:</label>
                            <textarea name="comment" class="form-control" rows="8"> </textarea>
                        </div>
                        <br>

                        <button name="submit" type="submit" class="btn btn-primary btn-block"><b>Submit Comment</b></button>
                        <br>
                    </form>




                </div>
            </div>
                <hr>









                <div class="row">
                    <div class="col-lg-9 offset-lg-2 col-12 comment-main rounded">
                        <ul class="p-0">
                            <li class="wow fadeInUp">
                                <div class="row comment-box p-2 pt-4 pr-5">
                                    <div class="col-lg-2 col-3 user-img text-center">
                                        <img src="image/<?php echo $avater; ?>" class="main-cmt-img">
                                    </div>
                                    <div class="col-lg-10 col-9 user-comment bg-light rounded pb-1">
                                        <div class="row">
                                            <div class="col-lg-8 col-6 border-bottom pr-0">
                                                <p class="w-100 p-2 m-0"><font color="<?php echo $color; ?>"><b><?php echo $body; ?></b></font></p>
                                            </div>
                                            <div class="col-lg-4 col-6 border-bottom">
                                                <p class="w-100 p-2 m-0"><span class="float-right"><i class="fa fa-clock-o mr-1" aria-hidden="true"></i><?php echo $date; ?></span></p>
                                            </div>
                                        </div> 
                                        <div class="user-comment-desc p-1 pl-2">
                                            <p class="m-0 mr-2"><?php echo $name; ?></p>                      

                                        </div>    
                                    </div>
                                </div>


                            </li>
                        </ul>
                    </div>
                </div>
        </section>
        <!--footer-->
        <div id="footer">
            <jsp:include page="Footer.jsp"/>
        </div>
        <!--end footer-->
    </body>
</html>

