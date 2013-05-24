package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AdminProfile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Socioware/AdminProfile</title>\n");
      out.write(" \n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("#span2{\n");
      out.write("    position: relative;\n");
      out.write("    left:5px;\n");
      out.write("    top: 55px;\n");
      out.write("    font-family: Broadway;\n");
      out.write("    text-decoration: underline;\n");
      out.write("    font-size: xx-large;\n");
      out.write("    color:turquoise;\n");
      out.write("    \n");
      out.write("}\n");
      out.write("            #bd{\n");
      out.write("                margin: 0;\n");
      out.write("                background-color:#202503 ;\n");
      out.write("\n");
      out.write("\n");
      out.write("}\n");
      out.write("            #dv1{\n");
      out.write("                position: fixed;\n");
      out.write("                z-index: +1;\n");
      out.write("                background-color:#192201;\n");
      out.write("                height: 50px;\n");
      out.write("                width: 1366px;\n");
      out.write("                border-bottom-style: ridge;\n");
      out.write("                border-bottom-width: thin;\n");
      out.write("                border-bottom-color: royalblue;\n");
      out.write("                margin-top: -8px;\n");
      out.write("}\n");
      out.write("            #span1{\n");
      out.write("                margin-top: 0;\n");
      out.write("                margin-left: 5px;\n");
      out.write("                font-family:Forte;\n");
      out.write("                color: #6699FF;\n");
      out.write("                font-size: xx-large;\n");
      out.write("                font-weight: 900;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            #sub1{\n");
      out.write("                margin-top: 2px;\n");
      out.write("                margin-left: 5px;\n");
      out.write("                font-size: small;\n");
      out.write("                font-family: Tempus Sans ITC;\n");
      out.write("                color: tomato;\n");
      out.write("}\n");
      out.write("#a1{\n");
      out.write("    text-decoration: none;\n");
      out.write("    color: whitesmoke;\n");
      out.write("\n");
      out.write("    border-radius:2px;\n");
      out.write("    background-color:lightslategray;\n");
      out.write("    margin-left: 10px;\n");
      out.write("    text-align: center;\n");
      out.write("}\n");
      out.write("#a1:hover{\n");
      out.write("    color:green;\n");
      out.write("\n");
      out.write("    background-color: transparent;\n");
      out.write("}\n");
      out.write("#ip1{\n");
      out.write("    margin-left: 170px;\n");
      out.write("}\n");
      out.write("ul{\n");
      out.write("    list-style: none;\n");
      out.write("    margin-top: -20px;\n");
      out.write("    margin-left: 1210px;\n");
      out.write("}\n");
      out.write("ul li a{\n");
      out.write("    position:relative;\n");
      out.write("\n");
      out.write("    display: block;\n");
      out.write("    padding: 3px;\n");
      out.write("    text-decoration: none;\n");
      out.write("    background-color: #696969;\n");
      out.write("    color: whitesmoke;\n");
      out.write("    border:2px #1E90FF ridge;\n");
      out.write("    text-align: center;\n");
      out.write("    font-family: Comic Sans MS;\n");
      out.write("    font-size: small;\n");
      out.write("    border-radius:5px;\n");
      out.write("}\n");
      out.write("#main{\n");
      out.write("    margin-left: 10px;\n");
      out.write("    position: absolute;\n");
      out.write("    z-index: -1;\n");
      out.write("    \n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("        <style>\n");
      out.write("            #OtherAdm{\n");
      out.write("                     width: 200px;\n");
      out.write("                     border: 1px solid tomato;\n");
      out.write("                     margin-top: 100px;\n");
      out.write("                     margin-left: 20px;\n");
      out.write("                     background-color: #232505;\n");
      out.write("}\n");
      out.write("#OtherAdm h3{\n");
      out.write("    background: silver url(\"images/arrow-square.gif\") no-repeat  right -51px;\n");
      out.write("    margin: 0px;\n");
      out.write("     color: sienna;\n");
      out.write("}\n");
      out.write("#OtherAdm h3:hover{\n");
      out.write("    background-color: whitesmoke;\n");
      out.write("    cursor: pointer;\n");
      out.write(" color: coral;\n");
      out.write("}\n");
      out.write("#OtherAdm h3.active{\n");
      out.write("    background-position: right 5px;\n");
      out.write("}\n");
      out.write("#OtherAdm p{\n");
      out.write("  \n");
      out.write("    color: white;\n");
      out.write("    font-weight: bold;\n");
      out.write("    margin-left: 5px;\n");
      out.write("    margin: 0px;   \n");
      out.write("}\n");
      out.write("#OtherAdm p:hover{\n");
      out.write("    color: thistle;\n");
      out.write("    cursor: pointer;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("        <script type=\"text/javascript\" src=\"jquery.js\"></script>\n");
      out.write("           <script type=\"text/javascript\">\n");
      out.write("            $(document).ready(function(){\n");
      out.write("                $(\"a\").hover(\n");
      out.write("                function(){$(this).css(\"color\",\"#32CD32\"),(\"text-decoration\",\"underline\");},\n");
      out.write("                function(){$(this).css(\"color\",\"white\");\n");
      out.write("                });\n");
      out.write("                $(\".l,.li2,.li3\").hover(\n");
      out.write("                function(){$(\"ul\",this).fadeIn(\"slow\");},\n");
      out.write("                function(){$(\"ul\",this).fadeOut(\"fast\");\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                         });\n");
      out.write("</script>\n");
      out.write("    </head>\n");
      out.write("    <body id=\"bd\">\n");
      out.write("         <div id=\"dv1\">\n");
      out.write("            <span id=\"span1\">Socioware<sub id=\"sub1\">B social B Realstic</sub></span>\n");
      out.write("            <input id=\"ip1\" type=\"text\" size=\"40\"><a id=\"a1\" href=\"#\">&nbsp;&nbsp;Find&nbsp;&nbsp;</a>\n");
      out.write("            <ul>\n");
      out.write("                \n");
      out.write("                <li class=\"l\"><a id=\"a2\" href=\"LogoutServlet\">LogOut</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div id=\"main\">\n");
      out.write("        <span id=\"span2\">Welcome Admin</span>\n");
      out.write("        <div id=\"OtherAdm\">\n");
      out.write("            <h3>Other Admins</h3>\n");
      out.write("            <p>Ashish Namdev</p>\n");
      out.write("            <p>Anoop Tiwari</p>\n");
      out.write("            <p>Vivek Jain</p>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        </div>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Footer.html", out, false);
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
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
