<%@page import="java.io.File"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%! String username; %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Student-Event</title>

    <%response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);%>
    
    <!-- Including CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css" />
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/default.css" />
    <link rel="stylesheet" type="text/css" href="css/component.css" />
    <link rel="stylesheet" type="text/css" href="css/circular-menu.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/tabcontent.css" />
    <link rel="stylesheet" type="text/css" href="css/profile.css" />
    
    <!-- Including JS -->
        
</head>

<body>
    
    <%  username = (String) request.getSession().getAttribute("USERID");
        if (username != null ) 
            System.out.println("user != null");            
        
        else    {
            System.out.println("user == null");
            response.sendRedirect("index.jsp");
        }
    %>
    
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
                    </li>                </ul>
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
                        <a href="blank-page.html" class="dropdown-toggle" data-toggle="dropdown">Alerts
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
                    <button type="button" class="btn btn-danger">Cancel</button>
                </div>
            </div>
        </div>
    </div>
    
       <%
                            
                            try {
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
                                    PreparedStatement ps=con.prepareStatement("select name from profile where enrollment_no=?");
                                    ps.setString(1,username);
                                    ResultSet rs=ps.executeQuery();
                                    int i=0;
                                    if(rs.next())   {
//                                        System.out.println(""+rs.getString(19));
                                        
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
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="student-calendar.jsp"><i class="fa fa-calendar"></i>&emsp;Calendar</a></h4>
                            </div>
                        </div>
                        <div class="panel panel-danger">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#"><i class="fa fa-photo"></i>&emsp;Events</a></h4>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="blank-page.html"><i class="fa fa-book"></i>&emsp;Assignment</a>
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
      <div class="col-sm-9">
          
                <div class="row">
                    <div class="col-xs-10">
                        <ol class="breadcrumb" style="margin-top: 55px; margin-left: -15px; background-color: #52be7f">
                                <li><a href="#">Student</a></li>
                                <li style="color: #3071a9">Events</li>                  
                        </ol>
                    </div>
                </div>
                    
          
                            <% 
                                        
%>
            
<style>
    .media-heading   {
        color:#000;
    }
    .media-body>p   {
        color:#3276b1;
        text-align: justify;
    }
</style>
            <div class="row">
                <div class="col-xs-10">
                    
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Registered Events
                                <div class="pull-right">
                                    &emsp;&emsp;
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="color:#fff"><span class="caret"></span></a>
                                </div>
                            </h3>
                        </div>
                        <div id="collapseOne" class="panel-collapse">
                            <div class="panel-body">
                                <div class="media">
                                    <a href="#" class="thumbnail pull-left">
                                        <img src="images/images2.jpg" class="media-object" alt="Sample Image">
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading">Event-Name&emsp;<small>Jun 27,2014</small></h4><br>
                                        <p>Excellent feature! I love it. One day I'm definitely going to put this Bootstrap component into use and I'll let you know once I do.</p>
                                    </div>
                                </div>
                                <hr/>
                                <div class="media">
                                    <a href="#" class="thumbnail pull-right">
                                        <img src="images/images2.jpg" class="media-object" alt="Sample Image">
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading pull-right">Event-Name&emsp;<small>Jun 29,2014</small></h4><br><br>
                                        <p>Excellent feature! I love it. One day I'm definitely going to put this Bootstrap component into use and I'll let you know once I do.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Upcoming Events
                                <div class="pull-right">
                                    &emsp;&emsp;
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" style="color:#fff"><span class="caret"></span></a>
                                </div>
                            </h3>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="media">
                                    <a href="#" class="thumbnail pull-left">
                                        <img src="images/images2.jpg" class="media-object" alt="Sample Image">
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading">Event-Name&emsp;<small>Jun 27,2014</small></h4><br>
                                        <p>Excellent feature! I love it. One day I'm definitely going to put this Bootstrap component into use and I'll let you know once I do.</p>
                                    </div>
                                </div>
                                <hr/>
                                <div class="media">
                                    <a href="#" class="thumbnail pull-right">
                                        <img src="images/images2.jpg" class="media-object" alt="Sample Image">
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading pull-right">Event-Name&emsp;<small>Jun 29,2014</small></h4><br><br>
                                        <p>Excellent feature! I love it. One day I'm definitely going to put this Bootstrap component into use and I'll let you know once I do.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <div class="col-xs-2">
                    <ul class="pull-right">
                        <li><h5>Add Events</h5></li>
                        <li><h5>Edit Events</h5></li>
                    </ul>
                </div>
            </div>              
        <%
                }

                con.close();
              }
            catch(Exception e)     {
              e.printStackTrace();
          }
      %>
                         
                            
            <div class="component" id="component" style="visibility:hidden">    
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
                              
        </div>  <!-- col-sm-9 ends -->
    </div>  <!-- row ends -->
    
<script>
    function setCookie(cname, cvalue, exdays) {
        var d = new Date();
        d.setTime(d.getTime() + (exdays*24*60*60*1000));
        var expires = "expires="+d.toGMTString();
        document.cookie = cname + "=" + cvalue + "; " + expires;
    } 
    
    function getCookie(cname) {
        var name = cname + "=";
        var ca = document.cookie.split(';');
        for(var i=0; i<ca.length; i++) {
            var c = ca[i].trim();
            if (c.indexOf(name) == 0) return c.substring(name.length, c.length);
        }
        return "";
    }
               
    function saveFields()   {
        
            var x = document.getElementById("form1"),
                y = document.getElementById("form2"),
                z = document.getElementById("form3");
            
//            document.write(document.getElementById('dob').value);
//            for (var i = 0; i < x.length ;i++) {
//                document.write((x.elements[i].value).toString() + "<br>");
//            }
            
            setCookie("studentName",x.elements[0].value,1000);
    }
</script>
      
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
    <script src="js/tabcontent.js"></script>
    
</body>      
</html>