<%@page import="javax.swing.text.Document"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Student-Home</title>
    
    <!-- Including CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/default.css" />
    <link rel="stylesheet" type="text/css" href="css/component.css" />
    <link rel="stylesheet" type="text/css" href="css/circular-menu.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <!-- Including JS -->
    
</head>

<body>
    <!-- begin top navigation Header -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <!-- Brand and toggle -->
            <div class="navbar-header">
                <a class="navbar-brand" href="#">SGSITS , Indore</a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            
            <!-- Collect the nav links -->
            
            <div class="collapse navbar-collapse" id="navbar-collapse-1">
                <ul class="nav navbar-nav navbar-left" id="menu">
                        <button type="button" class="btn btn-info">Menu</button>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown" onclick="return f1();">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Message
                        <i class="fa fa-envelope"></i><span id="n1" class="noti_bubble">2</span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">ABCD</a></li>
                            <li><a href="#">ASDF</a></li>
                            <li><a href="#">ZXCV</a></li>
                        </ul>
                    </li>
                    <li class="dropdown" onclick="return f2();">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Alerts
                        <i class="fa fa-bell"></i><span id="n2" class="noti_bubble">2</span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">ABCD</a></li>
                            <li><a href="#">ASDF</a></li>
                            <li><a href="#">ZXCV</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#dialog1" data-toggle="modal">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="modal fade" style="color:#000" id="dialog1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4>Logout</h4>
                </div>
                <div class="modal-body">
                    <p>Do you want to logout ?</p>
                    <button type="button" class="btn btn-primary"><a href="index.jsp" style="text-decoration: none">Logout</a></button>
                    <button type="button" class="btn btn-danger">Cancel</button>
                </div>
            </div>
        </div>
    </div>
    
    
    <%! String name; 
        Connection con;
    %>    
                            <%
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
                            %>
    
    <div class="row">
      <div class="col-sm-9 col-lg-2">
        <div class="sidebar-nav">
          <div class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <span class="visible-xs navbar-brand">Sidebar menu</span>
          <!--  </div>
             
              <div class="container-fluid">
                  <div class="row-fluid">
                      <div class="span2">
                          <ul class="nav nav-list">
                              <li class="active"><a href="#">Home</a></li>
                              <li><a href="#">Registration</a></li>
                                <li><a href="#">Calendar</a></li>
                                <li><a href="#">Assignment</a></li>
                                <li><a href="#">Events</a></li>
                                <li><a href="#">Message Center</a></li>
                                <li><a href="#">Others</a></li>
                          </ul>
                      </div>-->
            </div>
             
              
            <div class="navbar-collapse collapse sidebar-navbar-collapse" style="margin-top:50px; background-color: #16a085; padding: 5px 0px">
              <ul id="side" class="nav navbar-nav">
                <li class="picture"><img class="img-circle" src="images/anon_user.png">
                    <h4 style="color:#000"><strong><%=name%></strong></h4>
                </li>
                <li class="active alert-info"><a href="#"><i class="fa fa-home"></i>&nbsp;&nbsp;Home</a></li>
                <li class="alert-success"><a href="student-profile.jsp"><i class="fa fa-edit"></i>&nbsp;&nbsp;Profile</a></li>
                <li class="alert-info"><a href="#"><i class="fa fa-rss"></i>&nbsp;&nbsp;Registration</a></li>
                <li class="alert-success"><a href="#"><i class="fa fa-calendar"></i>&nbsp;&nbsp;Calendar</a></li>
                <li class="alert-info"><a href="#"><i class="fa fa-upload"></i>&nbsp;&nbsp;Assignment</a></li>
                <li class="alert-success"><a href="#"><i class="fa fa-eye"></i>&nbsp;&nbsp;Events</a></li>
                <li class="alert-info"><a href="#"><i class="fa fa-envelope"></i>&nbsp;&nbsp;Message Center</a></li>
                <li class="alert-success"><a href="#"><i class="fa fa-openid"></i>&nbsp;&nbsp;Others</a></li>
              </ul>
            </div><!--/.nav-collapse <span class="badge">1,118</span-->
          </div>
        </div>
    </div>
      <div class="col-sm-9">
            
          <ol class="breadcrumb" style="margin-top: 55px; margin-left: -15px; background-color: #52be7f">
                <li><a href="#">Student</a></li>
                <li style="color: #3071a9">Home</li>
          </ol>

          <table class="table-condensed" width="1000" border="0">
              <tr> <td colspan="2">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">News Feed</h3>                            
                        </div>
                        <div class="panel-body">
                            
                        </div>
                    </div>        
                </td>
                        <%  String date; 
                            Date curr_date=new Date();
                            SimpleDateFormat df=new SimpleDateFormat("dd-MM-yyyy");
                            date=df.format(curr_date);
                            try
                                {
                                    java.sql.PreparedStatement ps=con.prepareStatement("select * from todolist where enrollment_no=?");
                                    ps.setString(1,"0801CS111066");
                                    ResultSet rs=ps.executeQuery();
                                 %>
                                              
                                              
                        
                <td rowspan="2">
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                            <h3 class="panel-title">To Do List</h3>
                        </div>
                        <div class="panel-body">
                            <table id="todolist" class="table-condensed" style="color: #16a085">     
                                <%  int i=0;
                                    while(rs.next()) 
                                    {    
                                        i++;
                                        String value; %>
                                        
                                        <tr><td>   
                                            <%
                                                if(!rs.getString(3).equalsIgnoreCase("Pending"))
                                                {
                                                    %>  <input type="checkbox" class="css-checkbox" id="checkbox<%=i%>" name="checkbox1" checked>
                                                        <label for="checkbox<%=i%>" class="css-label"></label>
                                            <%  }
                                                else
                                                {
                                                    %>  <input type="checkbox"  class="css-checkbox" id="checkbox<%=i%>" name="checkbox1">
                                                        <label for="checkbox<%=i%>" class="css-label"></label>
                                            <%  }   %>
                                                
                                    </td>
                                    <td>
                                        <div class="input-group">
                                              <input type="text" class="form-control" disabled="true" value="<%=rs.getString(2)%>">                                              
                                        </div>
                                    </td>
                                </tr>
                                <%
                                    }
                                %>
                            </table>
                        </div>
                    </div>
                </td>
            </tr>
            <tr> <td colspan="2">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Resources</h3>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
  
                        
                                              <%
                                    con.close();
                                }
                            catch(Exception e)
                                {
                                    e.printStackTrace();
                                }
                            
                        %>
                        
                        <script type="text/javascript">
                            $(document).ready(function(){
                                $(".tooltip-e a").tooltip({
                                    placement : 'top'
                                });
                            });
                        </script>
                        
          <div class="component" id="component" style="visibility:hidden;">    
    <button class="cn-button" id="cn-button">Menu</button>
                <div class="cn-wrapper" id="cn-wrapper">
                    <ul>
                        <li><a href="#"><span>About</span></a></li>
                        <li><a href="#"><span>Courses</span></a></li>
                        <li><a href="#"><span>Reasearch</span></a></li>
                        <li><a href="#"><span>Events</span></a></li>
                        <li><a href="#"><span>Students</span></a></li>
                        <li><a href="#"><span>Faculties</span></a></li>
                        <li><a href="#"><span>Alumini</span></a></li>
                     </ul>
                </div>                    
            </div>
</div>
</div> 
    
                
    <script>
        function f1() {
            document.getElementById("n1").style.visibility='hidden';
        }
        function f2() {
            document.getElementById("n2").style.visibility='hidden';
        }
    </script>    
    
    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/demo2.js"></script>
    <script src="js/modernizr-2.6.2.min.js"></script>
    <script src="js/polyfills.js"></script>
</body>      
</html>