<%@page import="java.net.URL"%>
<%@page import="javax.xml.parsers.DocumentBuilder"%>
<%@page import="javax.xml.parsers.DocumentBuilderFactory"%>
<%@page import="org.w3c.dom.CharacterData"%>
<%@page import="org.w3c.dom.Document"%>
<%@page import="org.w3c.dom.Element"%>
<%@page import="org.w3c.dom.Node"%>
<%@page import="org.w3c.dom.NodeList"%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.PreparedStatement"%>
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
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/default.css" />
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
                    <li class="dropdown">
                        <span class="label label-info dropdown-toggle" data-toggle="dropdown"><a href="">Menu</a></span>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="index.jsp"><span>About</span></a></li>
                            <li><a href="blank-page.html"><span>Courses</span></a></li>
                            <li><a href="blank-page.html"><span>Reasearch</span></a></li>
                            <li><a href="blank-page.html"><span>Events</span></a></li>
                            <li><a href="blank-page.html"><span>Students</span></a></li>
                            <li><a href="blank-page.html"><span>Faculties</span></a></li>
                            <li><a href="blank-page.html"><span>Alumini</span></a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown" onclick="return f1();">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Message
                        <i class="fa fa-envelope"></i><span id="n1" class="noti_bubble">2</span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="blank-page.html">Message 1</a></li>
                            <li><a href="blank-page.html">Message 2</a></li>
                            <li><a href="blank-page.html">Message 3</a></li>
                        </ul>
                    </li>
                    <li class="dropdown" onclick="return f2();">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Alerts
                        <i class="fa fa-bell"></i><span id="n2" class="noti_bubble">2</span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="blank-page.html">Alert 1</a></li>
                            <li><a href="blank-page.html">Alert 2</a></li>
                            <li><a href="blank-page.html">Alert 3</a></li>
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
                    <button type="button" class="btn btn-primary" onClick="javascript:location.href = 'index.jsp';">Logout</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                </div>
            </div>
        </div>
    </div>
    
    <%! Connection con;
    %>    
                            <%
                            String username=(String)session.getAttribute("USERID");
                             
                            try  {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
                                    java.sql.PreparedStatement ps=con.prepareStatement("select name from profile where enrollment_no=?");
                                    ps.setString(1, username);
                                    ResultSet rs=ps.executeQuery();
                                    if(rs.next())   {
                                        
                                    %>
              
    
    
    <div class="row">
        <div class="col-sm-9 col-lg-2">
          <div class="sidebar-nav">
          <div class="navbar" role="navigation">
            <div class="navbar-collapse collapse sidebar-navbar-collapse" style="margin-top:50px; padding: 5px 0px;">
              <ul id="side" class="nav navbar-nav">
                <li class="picture"><img class="img-circle" src="images/anon_user.png">
                    <h4 style="color:#000"><strong><%=rs.getString(1)%></strong></h4>
                </li>
                <li>
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="student-home.jsp"><i class="fa fa-home"></i>&emsp;Home</a></h4>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="student-profile.jsp"><i class="fa fa-edit"></i>&emsp;Profile</a></h4>
                            </div>
                        </div>
                        <div class="panel panel-danger">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#"><i class="fa fa-calendar"></i>&emsp;Calendar</a></h4>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="student-event.jsp"><i class="fa fa-photo"></i>&emsp;Events</a></h4>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#"><i class="fa fa-book"></i>&emsp;Assignment</a>
                                    <div class="pull-right">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1" style="color:#000"><span class="caret"></span></a>
                                    </div>
                                </h4>
                            </div>
                            <div id="collapse1" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul style="color: #000">
                                        <li><a href="blank-page.html"><i class="fa fa-angle-double-right"></i>&emsp;View Assignments</a></li>
                                        <li><a href="blank-page.html"><i class="fa fa-angle-double-right"></i>&emsp;Submit Assignments</a></li>
                                        <li><a href="blank-page.html"><i class="fa fa-angle-double-right"></i>&emsp;View Grades</a></li>
                                    </ul>
                                </div>                                
                            </div>             
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#"><i class="fa fa-envelope"></i>&emsp;Messages</a>
                                    <div class="pull-right">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse2" style="color:#000"><span class="caret"></span></a>
                                    </div>
                                </h4>
                            </div>
                            <div id="collapse2" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul style="color: #000">
                                        <li><a href="blank-page.html"><i class="fa fa-angle-double-right"></i>&emsp;Mailbox</a></li>
                                        <li><a href="blank-page.html"><i class="fa fa-angle-double-right"></i>&emsp;Compose</a></li>
                                        <li><a href="blank-page.html"><i class="fa fa-angle-double-right"></i>&emsp;Chat</a></li>
                                    </ul>
                                </div>                                
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#"><i class="fa fa-bug"></i>&emsp;Others</a>
                                    <div class="pull-right">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3" style="color:#000"><span class="caret"></span></a>
                                    </div>
                                </h4>
                            </div>
                            <div id="collapse3" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul style="color: #000">
                                        <li><a href="blank-page.html"><i class="fa fa-angle-double-right"></i>&emsp;Registration</a></li>
                                        <li><a href="blank-page.html"><i class="fa fa-angle-double-right"></i>&emsp;Resource Sharing</a></li>
                                        <li><a href="blank-page.html"><i class="fa fa-angle-double-right"></i>&emsp;Forum</a></li>
                                        <li><a href="blank-page.html"><i class="fa fa-angle-double-right"></i>&emsp;Help Desk</a></li>
                                    </ul>
                                </div>                                
                            </div>
                        </div>
                    </div>
                </li>
              </ul>
            </div>
        </div>
    </div><!--/.nav-collapse <span class="badge">1,118</span-->
    </div>
                    <%
                                    }
                                    con.close();
                            }
                            catch(Exception e)  {
                                e.printStackTrace();
                            }
                    %>
                    
      <div class="col-sm-9">
            
          <ol class="breadcrumb" style="margin-top: 55px; margin-left: -15px; background-color: transparent">
                <li><a href="#">Student</a></li>
                <li style="color: #3071a9">Home</li>
          </ol>
          
          <iframe src="https://www.google.com/calendar/embed?title=My%20Calendar&amp;height=600&amp;wkst=1&amp;hl=en&amp;bgcolor=%2399ff99&amp;src=rahulk7494%40gmail.com&amp;color=%232952A3&amp;src=%23contacts%40group.v.calendar.google.com&amp;color=%238D6F47&amp;src=en.indian%23holiday%40group.v.calendar.google.com&amp;color=%238D6F47&amp;ctz=Asia%2FKarachi" style=" border:solid 1px #777 " width="800" height="600" frameborder="0" scrolling="no"></iframe>
          
          <div class="component" id="component" style="visibility:hidden;">    
    <button class="cn-button" id="cn-button">Menu</button>
                <div class="cn-wrapper" id="cn-wrapper">
                    <ul>
                        <li><a href="blank-page.html"><span>About</span></a></li>
                        <li><a href="blank-page.html"><span>Courses</span></a></li>
                        <li><a href="blank-page.html"><span>Reasearch</span></a></li>
                        <li><a href="blank-page.html"><span>Events</span></a></li>
                        <li><a href="blank-page.html"><span>Students</span></a></li>
                        <li><a href="blank-page.html"><span>Faculties</span></a></li>
                        <li><a href="blank-page.html"><span>Alumini</span></a></li>
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