<%-- 
    Document   : edit-topic
    Created on : 25 Jun, 2014, 1:57:45 PM
    Author     : Rahul
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
            <%  
                username= (String) request.getSession().getAttribute("USERID");
                
                String task,check,endDate;
                int no=Integer.parseInt(request.getParameter("count"));
                for(int i=1;i<=no;i++)   {
                        task="task"+i;
                        task=request.getParameter(task);
                        check="check"+i;
                        check=request.getParameter(check);
                        endDate="date"+i;
                        endDate = request.getParameter(endDate);
                        Date end = new SimpleDateFormat("yyyy-MM-dd").parse(endDate);
                        System.out.println(task+"%%%%%%%"+check+"%%%%%%%%"+end);
                        String list="id"+i;
                        changeInDB(task,check,end,Integer.parseInt(request.getParameter(list)),username);
                    }
                response.sendRedirect("student-home.jsp");
//                    task="task"+i;
//                    task=request.getParameter(task);
//                    check="check"+i;
//                    check=request.getParameter(check);
//                    endDate="date"+i;
//                    endDate = request.getParameter(endDate);
//                    Date end = new SimpleDateFormat("yyyy-MM-dd").parse(endDate);
//                    System.out.println(task+"%%%%%%%"+check+"%%%%%%%%"+end);
//                    changeInDB(task,check,end,username);
//                }
                     
        %>
        <%!
            String username;
            static Connection con;
            PreparedStatement ps;
            ResultSet rs;
    
            public void changeInDB(String task,String status,Date end,int id,String user)   {
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
                    java.sql.Date d=new java.sql.Date(end.getTime());
                    ps=con.prepareStatement("update todolist set task=? , status=? , end_date=? where enrollment_no=? and list_id=?");
                    ps.setString(1, task);
                    if(status.equals("on"))
                        status="Completed";
                    else if(status.equals(null))
                        status="Pending";
                    ps.setString(2, status);
                    ps.setDate(3, d);
                    ps.setString(4, user);
                    ps.setInt(5, id);
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
