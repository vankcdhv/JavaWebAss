package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.AccountDB;
import entity.Account;

public final class AccountUpdate_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Account Profile</title>\n");
      out.write("    </head>\n");
      out.write("    <body id=\"bodyStyle\">\n");
      out.write("        <!--header-->\n");
      out.write("        <header id=\"header\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Header.jsp", out, false);
      out.write("\n");
      out.write("        </header>\n");
      out.write("        <!--end header-->\n");
      out.write("        ");

            String username = request.getParameter("username");
            AccountDB adb = new AccountDB();
            Account acc = (Account) adb.getAccountByUsername(username);
        
      out.write("\n");
      out.write("        <section style=\"width: 990px; margin: 0 auto;background-color: #FFFFFF;border: 0px solid #8C0209;padding: 20px 5px 0px 5px;\">\n");
      out.write("            <H2 style=\"text-align: center\">Thông tin tài khoản</H2>\n");
      out.write("            <form name=\"frmregister\" action=\"AccountUpdateServlet\" method=\"post\" onsubmit=\"return matchPass()\">\n");
      out.write("                <table style=\" width: 40%;margin-left: auto; margin-right: auto\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Tên đăng nhập</td>\n");
      out.write("                        <td><input type=\"text\" name=\"username\" value=\"");
      out.print(acc.getUsername());
      out.write("\" required readonly></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Tên hiễn thị</td>\n");
      out.write("                        <td><input type=\"text\" name=\"fullname\" value=\"");
      out.print(acc.getDisplayName());
      out.write("\"required></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Mật khẩu</td>\n");
      out.write("                        <td><input type=\"password\" name=\"password\" value=\"");
      out.print(acc.getPassword());
      out.write("\"required readonly></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Email</td>\n");
      out.write("                        <td><input type=\"email\" name=\"email\" value=\"");
      out.print(acc.getEmail());
      out.write("\"required></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Loại tài khoản</td>\n");
      out.write("                        <td>\n");
      out.write("                            ");

                                if (acc.getType() == 0) {
      out.write("\n");
      out.write("                                <input type=\"email\" name=\"email\" value=\"Admin\"required readonly>\n");
      out.write("                            ");
 } else {
                                if (acc.getType() == 1) {
      out.write("\n");
      out.write("                                <input type=\"email\" name=\"email\" value=\"Staff\"required readonly>\n");
      out.write("                            ");
 } else { 
      out.write("\n");
      out.write("                            <input type=\"email\" name=\"email\" value=\"Customer\"required readonly>\n");
      out.write("                            ");
}
                                }
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td>\n");
      out.write("                        <td>\n");
      out.write("                            <input type=\"submit\" value=\"Cập nhật\">\n");
      out.write("                            <script>\n");
      out.write("                                function dieu_huong() {\n");
      out.write("                                    location.replace(\"ChangePass.jsp\");\n");
      out.write("                                }\n");
      out.write("                            </script>\n");
      out.write("                            <button name=\"changepass\" onclick=\"dieu_huong()\">Đổi mật khẩu</button>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("            </form>\n");
      out.write("        </section>\n");
      out.write("        <!--footer-->\n");
      out.write("        <div id=\"footer\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Footer.jsp", out, false);
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <!--end footer-->\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
