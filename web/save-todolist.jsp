<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Enumeration"%>
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
            
            try {
                
                String d,dueDate,stat;
                Date due;
                
                for(int x=1;x<=5;x++)   {
                    d="task-name"+x;
                    d=request.getParameter(d);
                    if(!d.equalsIgnoreCase("")) {
                        dueDate="due-date"+x;
                        stat="status"+x;
                        dueDate = request.getParameter(dueDate);
                        due = new SimpleDateFormat("yyyy-MM-dd").parse(dueDate);
                        System.out.println(dueDate+"******"+due+"*********"+d);
                        if(!d.equalsIgnoreCase(""))
                            entryInDB(d,request.getParameter(stat),due,username);
                    }                    
                }
            }
            catch(Exception e)  {
                e.printStackTrace();
            }
            response.sendRedirect("student-home.jsp");
            %>
        <%!
            String username;
            
            public void entryInDB(String task,String status,Date d,String user) {
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
                    PreparedStatement ps,ps1;
                    ResultSet rs;
                    int no=0;
                    Date d1=new Date();
                    SimpleDateFormat sdf1=new SimpleDateFormat("yyyy-MM-dd");
                    Date d2=sdf1.parse(sdf1.format(d1));
                    ps=con.prepareStatement("select max(list_id) from todolist");
                    rs=ps.executeQuery();
                    if(rs.next())
                        no=rs.getInt(1);
                    no++;
                    ps=con.prepareStatement("insert into todolist values (?,?,?,?,?,?)");
                    ps.setString(1, user);
                    ps.setString(2, task);
                    ps.setString(3, status);
                    java.sql.Date d3=new java.sql.Date(d2.getTime());
                    java.sql.Date d4=new java.sql.Date(d.getTime());
                    ps.setDate(4,d3);
                    ps.setDate(5,d4);
                    ps.setInt(6, no);
                    ps.executeUpdate();
                    System.out.println("Success");
                    con.close();
                }
                catch(Exception e)  {
                    e.printStackTrace();
                }
            }
        %>
        
    </body>
</html>
