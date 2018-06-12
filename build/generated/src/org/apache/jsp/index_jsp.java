package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;
import SoutezBene.DBConnect;
import SoutezBene.GetUser;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Soutěž BenePlus</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/main.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\"\n");
      out.write("    </head>\n");
      out.write("    ");
 
        
        Date date = new Date();
        DBConnect conn = new DBConnect();
        GetUser user = new GetUser();
        
    
      out.write("\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <h1>Soutěž BenePlus</h1>\n");
      out.write("        \n");
      out.write("        <div>\n");
      out.write("            <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Image/cat-02.svg\" />\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("            ");
      out.write("\n");
      out.write("            \n");
      out.write("        <div>\n");
      out.write("            \n");
      out.write("            <div class=\"login-card\">\n");
      out.write("                <h1>Log-in</h1><br>\n");
      out.write("                <form>\n");
      out.write("                    <input type=\"text\" name=\"user\" placeholder=\"Username\">\n");
      out.write("                    <input type=\"password\" name=\"pass\" placeholder=\"Password\">\n");
      out.write("                    <input type=\"submit\" name=\"login\" class=\"login login-submit\" value=\"login\">\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("                <div class=\"login-help\">\n");
      out.write("                  <a href=\"#\">Register</a> • <a href=\"#\">Forgot Password</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("           \n");
      out.write("        <p class=\"stav\">Aktuální stav k: ");
      out.print( date );
      out.write("</p>\n");
      out.write("        <span class=\"stav-count\"> \n");
      out.write("            ");

                out.print("Aktuální počet zaregistrovaných čísel: "+ conn.getCount());
            
      out.write("   \n");
      out.write("        </span>\n");
      out.write("        <span class=\"stav-count-archive\"> \n");
      out.write("            ");

                int result = conn.getCount() + conn.getCountArchive();
                out.print("Aktuální počet <b>VŠECH</b> zaregistrovaných čísel: "+ result);
            
      out.write("   \n");
      out.write("        </span>\n");
      out.write("   \n");
      out.write("            \n");
      out.write("            <H3>Nemate dostatecna opravneni - Obraďte se na správce systému: <span class = \"spravce\">Chlebusová, Lenka</span></H3>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        \n");
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
