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
    <body>
        
        <%
            username= (String) request.getSession().getAttribute("USERID");
            
            String d;
            for(int x=1;x<=5;x++)   {
                d="input"+x;
                d=request.getParameter(d);
                if(!d.equalsIgnoreCase(""))
                    entryInDB(d,username);
            }
            response.sendRedirect("student-home.jsp");
        %>
        
        <%!
            String username;
            
            public void entryInDB(String d,String user) {
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
                    PreparedStatement ps,ps1;
                    ResultSet rs;
                    ps=con.prepareStatement("select max(sno) from url");
                    rs=ps.executeQuery();
                    int no1=0;
                    if(rs.next())   {
                        no1=rs.getInt(1);
                    }                
                    no1++;
                    ps=con.prepareStatement("insert into url values (?,?)");
                    ps1=con.prepareStatement("insert into newsfeed_url values (?,?)");
                    ps.setString(1, d);
                    ps.setInt(2, no1);
                    ps.executeUpdate();
                    ps1.setString(1, d);
                    ps1.setString(2,user);
                    ps1.executeUpdate();
                    con.close();
                }
                catch(Exception e)  {
                    e.printStackTrace();
                }
            }
        %>
        
    </body>
</html>
