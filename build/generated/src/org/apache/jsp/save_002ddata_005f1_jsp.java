package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class save_002ddata_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("            <h6>");
      out.print(request.getParameter("father-name"));
      out.write("</h6><br>\n");
      out.write("       ");

            try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
                    PreparedStatement ps=con.prepareStatement("update profile set father_name=? where enrollment_no=?");  //email=? , gender=? ,  , mother_name=? , category=? , address=? , district=? , state=? , pincode=? , mobile_no=? , phone_no=? , blood_group=? , admission_year=?  
//                    ps.setString(1, request.getParameter("email"));
//                    ps.setString(2, request.getParameter("gender"));
                    ps.setString(1, request.getParameter("father-name"));
//                    ps.setString(4, request.getParameter("mother-name"));
//                    ps.setString(5, request.getParameter("category"));
//                    ps.setString(6, request.getParameter("address"));
//                    ps.setString(7, request.getParameter("district"));
//                    ps.setString(8, request.getParameter("state"));
//                    ps.setString(9, request.getParameter("pincode"));
//                    ps.setString(10, request.getParameter("mobile-no"));
//                    ps.setString(11, request.getParameter("phone-no"));
//                    ps.setString(12, request.getParameter("blood-group"));
//                    ps.setString(13, request.getParameter("admission-year"));
                    ps.setString(2, request.getParameter("roll-no"));
                    ps.executeUpdate();
                    con.close();
            }
            catch(Exception e){
                e.printStackTrace();
            }
            

        
        
        
      out.write("\n");
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
