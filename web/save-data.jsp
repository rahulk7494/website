<%-- 
    Document   : SaveData
    Created on : 18 Jun, 2014, 11:28:19 AM
    Author     : Rahul
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
       <%
           String username=(String) request.getSession().getAttribute("USERID");
           
            try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
                    PreparedStatement ps=con.prepareStatement("update profile set email=? , gender=? , father_name=? , mother_name=? , category=? , address=? , district=? , state=? , pincode=? , mobile_no=? , phone_no=? , blood_group=? , admission_year=? , course=? , current_sem=? , 10_perc=? , 12_perc=? , mppet_rank=? , aieee_rank=? , jee_rank=? , cgpa=?  where enrollment_no=?");
                    ps.setString(1, request.getParameter("email"));
                    ps.setString(2, request.getParameter("gender"));
                    ps.setString(3, request.getParameter("father-name"));
                    ps.setString(4, request.getParameter("mother-name"));
                    ps.setString(5, request.getParameter("category"));
                    ps.setString(6, request.getParameter("address"));
                    ps.setString(7, request.getParameter("district"));
                    ps.setString(8, request.getParameter("state"));
                    ps.setString(9, request.getParameter("pincode"));
                    ps.setString(10, request.getParameter("mobile-no"));
                    ps.setString(11, request.getParameter("phone-no"));
                    ps.setString(12, request.getParameter("blood-group"));
                    ps.setString(13, request.getParameter("adm-year"));
                    ps.setString(14, request.getParameter("course"));
                    ps.setString(15, request.getParameter("current-sem"));
                    ps.setFloat(16, Float.parseFloat(request.getParameter("ten-mark")));
                    ps.setFloat(17, Float.parseFloat(request.getParameter("twelve-mark")));
                    ps.setInt(18, Integer.parseInt(request.getParameter("mppet")));
                    ps.setInt(19, Integer.parseInt(request.getParameter("aieee")));
                    ps.setInt(20, Integer.parseInt(request.getParameter("jee")));
                    ps.setFloat(21, Float.parseFloat(request.getParameter("cgpa")));
                    ps.setString(22, username);
                    ps.executeUpdate();
                }
            catch(Exception e){
                e.printStackTrace();
            }
            response.sendRedirect("student-profile.jsp");

        
        
        %>
        
    </body>
</html>
