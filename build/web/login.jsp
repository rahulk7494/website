<%-- 
    Document   : login
    Created on : 16 Jun, 2014, 7:36:20 AM
    Author     : Rahul
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.ConnectException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
<%      String user=request.getParameter("userid");
        try  {
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
                 java.sql.PreparedStatement ps=con.prepareStatement("select * from login where username=?");
                 ps.setString(1, user);
                 ResultSet rs=ps.executeQuery();
                 if(rs.next())   {
                    session.setAttribute("USERID",user);
                    Cookie ck=new Cookie("USERID",user);
                    ck.setMaxAge(100000);
                    response.addCookie(ck);
                    if(user.equalsIgnoreCase("admin"))
                        response.sendRedirect("admin.jsp");
                    else                         
                        response.sendRedirect("student-home.jsp");
                 }
                 else    {
                     response.sendRedirect("index.jsp");
                 }
             }
         catch(Exception e){
             e.printStackTrace();
         }

%>

    </body>
</html>
