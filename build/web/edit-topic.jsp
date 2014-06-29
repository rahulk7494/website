<%-- 
    Document   : edit-topic
    Created on : 25 Jun, 2014, 1:57:45 PM
    Author     : Rahul
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <table width="100%" border="1" align="center">
            <tr bgcolor="#949494">
            <th>Param Name</th><th>Param Value(s)</th>
            </tr>
            <%  
                username= (String) request.getSession().getAttribute("USERID");
                
                    Enumeration paramNames = request.getParameterNames();
                    while(paramNames.hasMoreElements()) {
                       String paramName = (String)paramNames.nextElement();
                       out.print("<tr><td>" + paramName + "</td>\n");
                       String paramValue = request.getHeader(paramName);
                       out.println("<td> " + paramValue + "</td></tr>\n");
                       String name=request.getParameter(paramName);
                       System.out.println(name);
                       changeInDB(username, name);
                    }
        %>
            </table>
          
        <%
                response.sendRedirect("student-home.jsp");
        %>  
            <%!
            String username;
            
            public void changeInDB(String user,String name)   {
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
                    PreparedStatement ps,ps1;
                    ResultSet rs;
                    ps=con.prepareStatement("delete from newsfeed_topic where topic=? and enrollment_no=?");
                    ps.setString(1, name);
                    ps.setString(2, user);
                    ps.executeUpdate();
                    con.close();
                }   
                catch(Exception e)  {
                    e.printStackTrace();
                }
            }
            
        %>

    </body>
</html>
