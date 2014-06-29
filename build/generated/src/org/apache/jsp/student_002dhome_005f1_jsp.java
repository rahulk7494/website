package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.swing.text.Document;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class student_002dhome_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 String name; 
        Connection con;
    
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
      response.setContentType("text/html");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <meta name=\"description\" content=\"\">\r\n");
      out.write("    <meta name=\"author\" content=\"\">\r\n");
      out.write("\r\n");
      out.write("    <title>Student-Home</title>\r\n");
      out.write("    \r\n");
      out.write("    <!-- Including CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.min.css\" />\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/font-awesome.css\" />\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/font-awesome.min.css\" />\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/default.css\" />\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/component.css\" />\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/circular-menu.css\" />\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\" />\r\n");
      out.write("    <!-- Including JS -->\r\n");
      out.write("    \r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("    <!-- begin top navigation Header -->\r\n");
      out.write("    <nav class=\"navbar navbar-inverse navbar-fixed-top\" role=\"navigation\">\r\n");
      out.write("        <div class=\"container-fluid\">\r\n");
      out.write("            <!-- Brand and toggle -->\r\n");
      out.write("            <div class=\"navbar-header\">\r\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\">SGSITS , Indore</a>\r\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#navbar-collapse-1\">\r\n");
      out.write("                    <span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                </button>\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <!-- Collect the nav links -->\r\n");
      out.write("            \r\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbar-collapse-1\">\r\n");
      out.write("                <ul class=\"nav navbar-nav navbar-left\" id=\"menu\">\r\n");
      out.write("                        <button type=\"button\" class=\"btn btn-info\">Menu</button>\r\n");
      out.write("                </ul>\r\n");
      out.write("                <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("                    <li class=\"dropdown\" onclick=\"return f1();\">\r\n");
      out.write("                        <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Message\r\n");
      out.write("                        <i class=\"fa fa-envelope\"></i><span id=\"n1\" class=\"noti_bubble\">2</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                        <ul class=\"dropdown-menu\" role=\"menu\">\r\n");
      out.write("                            <li><a href=\"#\">ABCD</a></li>\r\n");
      out.write("                            <li><a href=\"#\">ASDF</a></li>\r\n");
      out.write("                            <li><a href=\"#\">ZXCV</a></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"dropdown\" onclick=\"return f2();\">\r\n");
      out.write("                        <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Alerts\r\n");
      out.write("                        <i class=\"fa fa-bell\"></i><span id=\"n2\" class=\"noti_bubble\">2</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                        <ul class=\"dropdown-menu\" role=\"menu\">\r\n");
      out.write("                            <li><a href=\"#\">ABCD</a></li>\r\n");
      out.write("                            <li><a href=\"#\">ASDF</a></li>\r\n");
      out.write("                            <li><a href=\"#\">ZXCV</a></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#dialog1\" data-toggle=\"modal\">Logout</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("    \r\n");
      out.write("    <div class=\"modal fade\" style=\"color:#000\" id=\"dialog1\" role=\"dialog\">\r\n");
      out.write("        <div class=\"modal-dialog\">\r\n");
      out.write("            <div class=\"modal-content\">\r\n");
      out.write("                <div class=\"modal-header\">\r\n");
      out.write("                    <h4>Logout</h4>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"modal-body\">\r\n");
      out.write("                    <p>Do you want to logout ?</p>\r\n");
      out.write("                    <button type=\"button\" class=\"btn btn-primary\"><a href=\"index.jsp\" style=\"text-decoration: none\">Logout</a></button>\r\n");
      out.write("                    <button type=\"button\" class=\"btn btn-danger\">Cancel</button>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    ");
      out.write("    \r\n");
      out.write("                            ");

                            String user=request.getParameter("userid");
                             
                            try
                                {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
                                    java.sql.PreparedStatement ps=con.prepareStatement("select * from login where username=?");
                                    ps.setString(1, user);
                                    ResultSet rs=ps.executeQuery();
                                    if(rs.next())
                                    {
                                        name=rs.getString(3);
                                        session.setAttribute("USERID", name);
                                    }
                                    
                                }
                            catch(Exception e)
                                {
                                    e.printStackTrace();
                                }
                            
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    <div class=\"row\">\r\n");
      out.write("      <div class=\"col-sm-9 col-lg-2\">\r\n");
      out.write("        <div class=\"sidebar-nav\">\r\n");
      out.write("          <div class=\"navbar navbar-default\" role=\"navigation\">\r\n");
      out.write("            <div class=\"navbar-header\">\r\n");
      out.write("              <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".sidebar-navbar-collapse\">\r\n");
      out.write("                <span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("                <span class=\"icon-bar\"></span>\r\n");
      out.write("                <span class=\"icon-bar\"></span>\r\n");
      out.write("                <span class=\"icon-bar\"></span>\r\n");
      out.write("              </button>\r\n");
      out.write("              <span class=\"visible-xs navbar-brand\">Sidebar menu</span>\r\n");
      out.write("          <!--  </div>\r\n");
      out.write("             \r\n");
      out.write("              <div class=\"container-fluid\">\r\n");
      out.write("                  <div class=\"row-fluid\">\r\n");
      out.write("                      <div class=\"span2\">\r\n");
      out.write("                          <ul class=\"nav nav-list\">\r\n");
      out.write("                              <li class=\"active\"><a href=\"#\">Home</a></li>\r\n");
      out.write("                              <li><a href=\"#\">Registration</a></li>\r\n");
      out.write("                                <li><a href=\"#\">Calendar</a></li>\r\n");
      out.write("                                <li><a href=\"#\">Assignment</a></li>\r\n");
      out.write("                                <li><a href=\"#\">Events</a></li>\r\n");
      out.write("                                <li><a href=\"#\">Message Center</a></li>\r\n");
      out.write("                                <li><a href=\"#\">Others</a></li>\r\n");
      out.write("                          </ul>\r\n");
      out.write("                      </div>-->\r\n");
      out.write("            </div>\r\n");
      out.write("             \r\n");
      out.write("              \r\n");
      out.write("            <div class=\"navbar-collapse collapse sidebar-navbar-collapse\" style=\"margin-top:50px; background-color: #16a085; padding: 5px 0px\">\r\n");
      out.write("              <ul id=\"side\" class=\"nav navbar-nav\">\r\n");
      out.write("                <li class=\"picture\"><img class=\"img-circle\" src=\"images/anon_user.png\">\r\n");
      out.write("                    <h4 style=\"color:#000\"><strong>");
      out.print(name);
      out.write("</strong></h4>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"active alert-info\"><a href=\"#\"><i class=\"fa fa-home\"></i>&nbsp;&nbsp;Home</a></li>\r\n");
      out.write("                <li class=\"alert-success\"><a href=\"student-profile.jsp\"><i class=\"fa fa-edit\"></i>&nbsp;&nbsp;Profile</a></li>\r\n");
      out.write("                <li class=\"alert-info\"><a href=\"#\"><i class=\"fa fa-rss\"></i>&nbsp;&nbsp;Registration</a></li>\r\n");
      out.write("                <li class=\"alert-success\"><a href=\"#\"><i class=\"fa fa-calendar\"></i>&nbsp;&nbsp;Calendar</a></li>\r\n");
      out.write("                <li class=\"alert-info\"><a href=\"#\"><i class=\"fa fa-upload\"></i>&nbsp;&nbsp;Assignment</a></li>\r\n");
      out.write("                <li class=\"alert-success\"><a href=\"#\"><i class=\"fa fa-eye\"></i>&nbsp;&nbsp;Events</a></li>\r\n");
      out.write("                <li class=\"alert-info\"><a href=\"#\"><i class=\"fa fa-envelope\"></i>&nbsp;&nbsp;Message Center</a></li>\r\n");
      out.write("                <li class=\"alert-success\"><a href=\"#\"><i class=\"fa fa-openid\"></i>&nbsp;&nbsp;Others</a></li>\r\n");
      out.write("              </ul>\r\n");
      out.write("            </div><!--/.nav-collapse <span class=\"badge\">1,118</span-->\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("      <div class=\"col-sm-9\">\r\n");
      out.write("            \r\n");
      out.write("          <ol class=\"breadcrumb\" style=\"margin-top: 55px; margin-left: -15px; background-color: #52be7f\">\r\n");
      out.write("                <li><a href=\"#\">Student</a></li>\r\n");
      out.write("                <li style=\"color: #3071a9\">Home</li>\r\n");
      out.write("          </ol>\r\n");
      out.write("\r\n");
      out.write("          <table class=\"table-condensed\" width=\"1000\" border=\"0\">\r\n");
      out.write("              <tr> <td colspan=\"2\">\r\n");
      out.write("                    <div class=\"panel panel-primary\">\r\n");
      out.write("                        <div class=\"panel-heading\">\r\n");
      out.write("                            <h3 class=\"panel-title\">News Feed</h3>                            \r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"panel-body\">\r\n");
      out.write("                            \r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>        \r\n");
      out.write("                </td>\r\n");
      out.write("                        ");
  String date; 
                            Date curr_date=new Date();
                            SimpleDateFormat df=new SimpleDateFormat("dd-MM-yyyy");
                            date=df.format(curr_date);
                            try
                                {
                                    java.sql.PreparedStatement ps=con.prepareStatement("select * from todolist where enrollment_no=?");
                                    ps.setString(1,"0801CS111066");
                                    ResultSet rs=ps.executeQuery();
                                 
      out.write("\r\n");
      out.write("                                              \r\n");
      out.write("                                              \r\n");
      out.write("                        \r\n");
      out.write("                <td rowspan=\"2\">\r\n");
      out.write("                    <div class=\"panel panel-danger\">\r\n");
      out.write("                        <div class=\"panel-heading\">\r\n");
      out.write("                            <h3 class=\"panel-title\">To Do List</h3>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"panel-body\">\r\n");
      out.write("                            <table id=\"todolist\" class=\"table-condensed\" style=\"color: #16a085\">     \r\n");
      out.write("                                ");
  int i=0;
                                    while(rs.next()) 
                                    {    
                                        i++;
                                        String value; 
      out.write("\r\n");
      out.write("                                        \r\n");
      out.write("                                        <tr><td>   \r\n");
      out.write("                                            ");

                                                if(!rs.getString(3).equalsIgnoreCase("Pending"))
                                                {
                                                    
      out.write("  <input type=\"checkbox\" class=\"css-checkbox\" id=\"checkbox");
      out.print(i);
      out.write("\" name=\"checkbox1\" checked>\r\n");
      out.write("                                                        <label for=\"checkbox");
      out.print(i);
      out.write("\" class=\"css-label\"></label>\r\n");
      out.write("                                            ");
  }
                                                else
                                                {
                                                    
      out.write("  <input type=\"checkbox\"  class=\"css-checkbox\" id=\"checkbox");
      out.print(i);
      out.write("\" name=\"checkbox1\">\r\n");
      out.write("                                                        <label for=\"checkbox");
      out.print(i);
      out.write("\" class=\"css-label\"></label>\r\n");
      out.write("                                            ");
  }   
      out.write("\r\n");
      out.write("                                                \r\n");
      out.write("                                    </td>\r\n");
      out.write("                                    <td>\r\n");
      out.write("                                        <div class=\"input-group\">\r\n");
      out.write("                                              <input type=\"text\" class=\"form-control\" disabled=\"true\" value=\"");
      out.print(rs.getString(2));
      out.write("\">                                              \r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                ");

                                    }
                                
      out.write("\r\n");
      out.write("                            </table>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr> <td colspan=\"2\">\r\n");
      out.write("                    <div class=\"panel panel-default\">\r\n");
      out.write("                        <div class=\"panel-heading\">\r\n");
      out.write("                            <h3 class=\"panel-title\">Resources</h3>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </td>\r\n");
      out.write("            </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("  \r\n");
      out.write("                        \r\n");
      out.write("                                              ");

                                    con.close();
                                }
                            catch(Exception e)
                                {
                                    e.printStackTrace();
                                }
                            
                        
      out.write("\r\n");
      out.write("                        \r\n");
      out.write("                        <script type=\"text/javascript\">\r\n");
      out.write("                            $(document).ready(function(){\r\n");
      out.write("                                $(\".tooltip-e a\").tooltip({\r\n");
      out.write("                                    placement : 'top'\r\n");
      out.write("                                });\r\n");
      out.write("                            });\r\n");
      out.write("                        </script>\r\n");
      out.write("                        \r\n");
      out.write("          <div class=\"component\" id=\"component\" style=\"visibility:hidden;\">    \r\n");
      out.write("    <button class=\"cn-button\" id=\"cn-button\">Menu</button>\r\n");
      out.write("                <div class=\"cn-wrapper\" id=\"cn-wrapper\">\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li><a href=\"#\"><span>About</span></a></li>\r\n");
      out.write("                        <li><a href=\"#\"><span>Courses</span></a></li>\r\n");
      out.write("                        <li><a href=\"#\"><span>Reasearch</span></a></li>\r\n");
      out.write("                        <li><a href=\"#\"><span>Events</span></a></li>\r\n");
      out.write("                        <li><a href=\"#\"><span>Students</span></a></li>\r\n");
      out.write("                        <li><a href=\"#\"><span>Faculties</span></a></li>\r\n");
      out.write("                        <li><a href=\"#\"><span>Alumini</span></a></li>\r\n");
      out.write("                     </ul>\r\n");
      out.write("                </div>                    \r\n");
      out.write("            </div>\r\n");
      out.write("</div>\r\n");
      out.write("</div> \r\n");
      out.write("    \r\n");
      out.write("                \r\n");
      out.write("    <script>\r\n");
      out.write("        function f1() {\r\n");
      out.write("            document.getElementById(\"n1\").style.visibility='hidden';\r\n");
      out.write("        }\r\n");
      out.write("        function f2() {\r\n");
      out.write("            document.getElementById(\"n2\").style.visibility='hidden';\r\n");
      out.write("        }\r\n");
      out.write("    </script>    \r\n");
      out.write("    \r\n");
      out.write("    <script src=\"js/jquery-2.1.1.min.js\"></script>\r\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("    <script src=\"js/demo2.js\"></script>\r\n");
      out.write("    <script src=\"js/modernizr-2.6.2.min.js\"></script>\r\n");
      out.write("    <script src=\"js/polyfills.js\"></script>\r\n");
      out.write("</body>      \r\n");
      out.write("</html>");
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
