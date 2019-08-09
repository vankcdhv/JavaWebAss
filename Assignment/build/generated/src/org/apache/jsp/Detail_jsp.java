package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.ProductDB;
import entity.Product;

public final class Detail_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"/Assignment/CSS/mystyle.css\">\r\n");
      out.write("        <script src=\"/Assignment/JavaScript/myScript.js\"></script>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <!--header-->\r\n");
      out.write("        <header id=\"header\">\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Header.jsp", out, false);
      out.write("\r\n");
      out.write("        </header>\r\n");
      out.write("        <!--end header-->\r\n");
      out.write("        <!--menuContainer-->\r\n");
      out.write("        <section id=\"menuContainer\">\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "MenuContainer.jsp", out, false);
      out.write("\r\n");
      out.write("        </section>\r\n");
      out.write("        <!--end menuContainer-->\r\n");
      out.write("        ");

            String id = request.getParameter("id");
            ProductDB pdb = new ProductDB();
            Product shoe = pdb.getProductByID(id);

        
      out.write("\r\n");
      out.write("        <section id=\"mainContainer\">\r\n");
      out.write("            <!-- Start sidebar1 -->\r\n");
      out.write("            <aside style=\"width: 300px;float: left;\">\r\n");
      out.write("                <h2 style=\"color: brown;text-align: center;\">");
      out.print(shoe.getName());
      out.write("</h2>\r\n");
      out.write("                <div id=\"section1\"> \r\n");
      out.write("                    <!--Mục 1-->\r\n");
      out.write("                    <img src=\"Images/");
      out.print(shoe.getImage());
      out.write("\" style=\"width: 300px;height: 300px;\">\r\n");
      out.write("                </div>\r\n");
      out.write("            </aside>\r\n");
      out.write("            <!-- end sidebar1 -->\r\n");
      out.write("            <!-- start content -->\r\n");
      out.write("            <section style=\"float: left;width: 500px;\">\r\n");
      out.write("                <div style=\"width: 500px;height: 400px;padding-left: 100px; background-color: #fff;\">\r\n");
      out.write("                    <h2>THÔNG TIN SẢN PHẨM</h2>\r\n");
      out.write("                    <table style=\"width: 500px;margin-left: auto;margin-right: auto;\">\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>Tên sản phẩm:</td>\r\n");
      out.write("                            <td>");
      out.print(shoe.getName());
      out.write("</td>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>Giá:</td>\r\n");
      out.write("                            <td>");
      out.print(shoe.getPrice());
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>Còn:</td>\r\n");
      out.write("                            <td>");
      out.print(shoe.getQuantity());
      out.write(" sản phẩm</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>Thông tin thêm:</td>\r\n");
      out.write("                            <td>");
      out.print(shoe.getDescribe());
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td></td>\r\n");
      out.write("                            <td>");
      out.print(shoe.getStatus());
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td></td>\r\n");
      out.write("                            <td><a href=\"#\"><img src=\"Images/buy.jpg\">Thêm vào giỏ hàng</a></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                    </table>\r\n");
      out.write("                </div>\r\n");
      out.write("            </section>\r\n");
      out.write("            <!-- end content -->\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("      <div class=\"col-lg-9 offset-lg-2 col-12 comment-main rounded\">\r\n");
      out.write("        <form ation=\"\" method=\"post\">\r\n");
      out.write("        <div class=\"form-gtoup\">\r\n");
      out.write("          <label>Your Name</label>\r\n");
      out.write("        <input name=\"name\" class=\"form-control\" type=\"text\" required>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"form-gtoup\">\r\n");
      out.write("          <label>Select Your Text Color:</label>\r\n");
      out.write("        <input name=\"color\" class=\"form-control\" type=\"color\">\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"form-gtoup\">\r\n");
      out.write("          <label>Select Avater</label>\r\n");
      out.write("        <table width=\"100%\" align=\"center\">\r\n");
      out.write("          <tr>\r\n");
      out.write("          <td width=\"10%\"><input type=\"radio\" name=\"avater\" value=\"boy.png\" required><img src=\"image/boy.png\" width=\"40\"></td>\r\n");
      out.write("          <td width=\"10%\"><input type=\"radio\" name=\"avater\" value=\"boy-1.png\" required><img src=\"image/boy-1.png\" width=\"40\"></td>\r\n");
      out.write("          <td width=\"10%\"><input type=\"radio\" name=\"avater\" value=\"boy-2.png\" required><img src=\"image/boy-2.png\" width=\"40\"></td>\r\n");
      out.write("          <td width=\"10%\"><input type=\"radio\" name=\"avater\" value=\"boy-3.png\" required><img src=\"image/boy-3.png\" width=\"40\"></td>\r\n");
      out.write("          <td width=\"10%\"><input type=\"radio\" name=\"avater\" value=\"boy-4.png\" required><img src=\"image/boy-4.png\" width=\"40\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        <tr>\r\n");
      out.write("        <td width=\"10%\"><input type=\"radio\" name=\"avater\" value=\"girl.png\" required><img src=\"image/girl.png\" width=\"40\"></td>\r\n");
      out.write("          <td width=\"10%\"><input type=\"radio\" name=\"avater\" value=\"girl-1.png\" required><img src=\"image/girl-1.png\" width=\"40\"></td>\r\n");
      out.write("          <td width=\"10%\"><input type=\"radio\" name=\"avater\" value=\"girl-2.png\" required><img src=\"image/girl-2.png\" width=\"40\"></td>\r\n");
      out.write("          <td width=\"10%\"><input type=\"radio\" name=\"avater\" value=\"girl-3.png\" required><img src=\"image/girl-3.png\" width=\"40\"></td>\r\n");
      out.write("          <td width=\"10%\"><input type=\"radio\" name=\"avater\" value=\"girl-4.png\" required><img src=\"image/girl-4.png\" width=\"40\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"form-gtoup\">\r\n");
      out.write("          <label>Your Comment:</label>\r\n");
      out.write("        <textarea name=\"comment\" class=\"form-control\" rows=\"8\"> </textarea>\r\n");
      out.write("        </div>\r\n");
      out.write("        <br>\r\n");
      out.write("\r\n");
      out.write("        <button name=\"submit\" type=\"submit\" class=\"btn btn-primary btn-block\"><b>Submit Comment</b></button>\r\n");
      out.write("        <br>\r\n");
      out.write("        </form>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("      </div>\r\n");
      out.write("      <hr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("      <?php \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("      $comments = mysqli_query($con, \"SELECT * FROM comments ORDER BY cmt_id DESC\");\r\n");
      out.write("      while($row = mysqli_fetch_assoc($comments)) {\r\n");
      out.write("        $name = $row['cmt_name'];\r\n");
      out.write("        $color = $row['cmt_color'];\r\n");
      out.write("        $avater = $row['cmt_avater'];\r\n");
      out.write("        $body = $row['cmt_body'];\r\n");
      out.write("        $date = $row['cmt_date'];\r\n");
      out.write("\r\n");
      out.write("        ?>        \r\n");
      out.write("      \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("       \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("      <div class=\"row\">\r\n");
      out.write("        <div class=\"col-lg-9 offset-lg-2 col-12 comment-main rounded\">\r\n");
      out.write("          <ul class=\"p-0\">\r\n");
      out.write("            <li class=\"wow fadeInUp\">\r\n");
      out.write("                <div class=\"row comment-box p-2 pt-4 pr-5\">\r\n");
      out.write("                  <div class=\"col-lg-2 col-3 user-img text-center\">\r\n");
      out.write("                    <img src=\"image/<?php echo $avater; ?>\" class=\"main-cmt-img\">\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"col-lg-10 col-9 user-comment bg-light rounded pb-1\">\r\n");
      out.write("                       <div class=\"row\">\r\n");
      out.write("                             <div class=\"col-lg-8 col-6 border-bottom pr-0\">\r\n");
      out.write("                                <p class=\"w-100 p-2 m-0\"><font color=\"<?php echo $color; ?>\"><b><?php echo $body; ?></b></font></p>\r\n");
      out.write("                             </div>\r\n");
      out.write("                             <div class=\"col-lg-4 col-6 border-bottom\">\r\n");
      out.write("                                <p class=\"w-100 p-2 m-0\"><span class=\"float-right\"><i class=\"fa fa-clock-o mr-1\" aria-hidden=\"true\"></i><?php echo $date; ?></span></p>\r\n");
      out.write("                             </div>\r\n");
      out.write("                       </div> \r\n");
      out.write("                      <div class=\"user-comment-desc p-1 pl-2\">\r\n");
      out.write("                          <p class=\"m-0 mr-2\"><?php echo $name; ?></p>                      \r\n");
      out.write("                                                \r\n");
      out.write("                      </div>    \r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            \r\n");
      out.write("                \r\n");
      out.write("            </li>\r\n");
      out.write("          </ul>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("        </section>\r\n");
      out.write("        <!--footer-->\r\n");
      out.write("        <div id=\"footer\">\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Footer.jsp", out, false);
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--end footer-->\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
