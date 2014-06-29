<%-- 
    Document   : logout
    Created on : 14 Jun, 2014, 11:14:51 PM
    Author     : Rahul
--%>

<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 
    <!DOCTYPE html>
    <html>
    <head>
    <title>My JSP 'logout.jsp' starting page</title>
    </head>
    <body>
    <%  request.getSession().setAttribute("USERID", null);    %>
    <jsp:forward page="index.jsp">
    </body>
    </html>