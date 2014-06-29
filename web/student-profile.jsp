<%@page import="java.io.FileInputStream"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
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

    <title>Student-Profile</title>

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
                <a class="navbar-brand" href="#" title="sgsitsindore.in">SGSITS , Indore</a>
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
                    <button type="button" class="btn btn-danger">Cancel</button>
                </div>
            </div>
        </div>
    </div>
    
                <%
                            
                            try {
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
                                    PreparedStatement ps=con.prepareStatement("select * from profile where enrollment_no=?");
                                    ps.setString(1,username);
                                    ResultSet rs=ps.executeQuery();
                                    int i=0;
                                    if(rs.next())   {
                                        System.out.println(""+rs.getDate(4));
                                        
                                        
             %>
                       
    <div class="row">
        <div class="col-sm-9 col-lg-2">
          <div class="sidebar-nav">
          <div class="navbar" role="navigation">
            <div class="navbar-collapse collapse sidebar-navbar-collapse" style="margin-top:50px; padding: 5px 0px;">
              <ul id="side" class="nav navbar-nav">
                <li class="picture"><img class="img-circle" src="images/anon_user.png">
                    <h4 style="color:#000"><strong><%=rs.getString(2)%></strong></h4>
                </li>
                <li>
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="student-home.jsp"><i class="fa fa-home"></i>&emsp;Home</a></h4>
                            </div>
                        </div>
                        <div class="panel panel-danger">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#"><i class="fa fa-edit"></i>&emsp;Profile</a></h4>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="student-calendar.jsp"><i class="fa fa-calendar"></i>&emsp;Calendar</a></h4>
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
                                        <li><a href="#"><i class="fa fa-angle-double-right"></i>&emsp;View Assignments</a></li>
                                        <li><a href="#"><i class="fa fa-angle-double-right"></i>&emsp;Submit Assignments</a></li>
                                        <li><a href="#"><i class="fa fa-angle-double-right"></i>&emsp;View Grades</a></li>
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
                                        <li><a href="#"><i class="fa fa-angle-double-right"></i>&emsp;Mailbox</a></li>
                                        <li><a href="#"><i class="fa fa-angle-double-right"></i>&emsp;Compose</a></li>
                                        <li><a href="#"><i class="fa fa-angle-double-right"></i>&emsp;Chat</a></li>
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
                                        <li><a href="#"><i class="fa fa-angle-double-right"></i>&emsp;Registration</a></li>
                                        <li><a href="#"><i class="fa fa-angle-double-right"></i>&emsp;Resource Sharing</a></li>
                                        <li><a href="#"><i class="fa fa-angle-double-right"></i>&emsp;Forum</a></li>
                                        <li><a href="#"><i class="fa fa-angle-double-right"></i>&emsp;Help Desk</a></li>
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
                                <li style="color: #3071a9">Profile</li>                  
                        </ol>
                    </div>
                    <div class="col-xs-2">
                        <div class="btn-group btn-group-justified">
                            <div class="btn-group">
                                <button id="edit" class="btn btn-info" type="button" style="margin-top: 65px;"  onclick="change();">Edit</button>
                            </div>
                        </div>                               
                    </div>
            </div>
          
          
          <ul class="tabs">
              <li class="selected"><a href="#personal">Personal</a></li>
              <li ><a href="#academic">Academic</a></li>
              <li ><a href="#contact">Contact</a></li>
              <li ><a href="#profile-pic">Profile Picture</a></li>                  
          </ul>
        <form action="save-data.jsp" method="get" id="form" class="form-horizontal" role="form">
          <div class="tabcontents">
            <div id="personal">
                <div class="col-sm-6">  
                    <div class="form-group">
                        <label for="name" class="col-sm-4 control-label">Name</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="name" name="name" disabled="true" value="<%=rs.getString(2)%>">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="father-name" class="col-sm-4 control-label">Father's Name</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="father-name" name="father-name" value="<%=rs.getString(6)%>" disabled="true">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="dob" class="col-sm-4 control-label">Date of Birth</label>
                        <div class="col-sm-6">
                            <input type="date" name="dob" class="form-control" id="dob" name="dob" disabled="true" value="<%=rs.getDate(4)%>">
                        </div>
                    </div>
                    <div class="form-group">
                            <label for="category" class="col-sm-4 control-label">Category</label>
                            <div class="col-sm-6">
                                <select id="category" name="category" class="form-control" disabled="true">
                                    <option value="1"><%=rs.getString(8)%></option>                                
                                </select>
                            </div>
                        </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="roll-no" class="col-sm-4 control-label">Enrollment No</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="roll-no" name="roll-no" disabled="true" value="<%=rs.getString(1)%>">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="mother-name" class="col-sm-4 control-label">Mother's Name</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="mother-name" name="mother-name" value="<%=rs.getString(7)%>" disabled="true">
                        </div>
                    </div>       
                    <div class="form-group">
                        <label for="gender" class="col-sm-4 control-label">Gender</label>
                        <div class="col-sm-6">
                            <select id="gender" name="gender" class="form-control" disabled="true">
                                <option value="1"><%=rs.getString(5)%></option>                                
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                          <label for="blood-group" class="col-sm-4 control-label">Blood Group</label>
                          <div class="col-sm-6">
                              <input type="text" class="form-control" id="blood-group" name="blood-group" disabled="true" value="<%=rs.getString(15)%>">
                          </div>
                      </div>
                </div>
            </div>
            <div id="academic">
                    <div class="row">
                        <div class="col-xs-5">
                            <div class="form-group">
                                <label for="course">Course</label>
                                <select id="course" name="course" class="form-control" disabled="true">
                                    <option value="1"><%=rs.getString(17)%></option>                                
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-5">
                            <div class="form-group">
                              <label for="adm-year">Admission Year</label>
                              <input id="adm-year" name="adm-year" class="form-control" disabled="true"  value="<%=rs.getString(16)%>">
                            </div>
                        </div>
                        
                    </div>
                            
    <script>

    
    var edit=document.getElementById('edit'),
        count=0;
        
    function change()   {
        if(count%2==0)  {
            edit.innerHTML="Save";
            changeControl();
        }
        else    {
            edit.setAttribute('type','submit');
            edit.innerHTML="Edit";
//            saveFields();
            document.getElementById('form').submit();
//            window.location.replace("save-data.jsp");
        }                            
        count++;
    }

    function changeControl(){
        var elements=document.getElementsByClassName("form-control");
        for(var i=0;i<elements.length;i++)  
            elements[i].disabled=false;
        document.getElementById('name').disabled=true;
        document.getElementById('roll-no').disabled=true;
        
        var admyear=document.getElementById('adm-year');
        admyear.type="number";
        admyear.min="1980";
        var year=new Date().getFullYear();
        admyear.max=year;            
        admyear.step="1";
        admyear.value=year;

        var gender=document.getElementById('gender');
        gender.remove(gender.selectedIndex);
        var option=document.createElement("option");
        option.text="Male";
        gender.add(option,gender[0]);
        option=document.createElement("option");
        option.text="Female";
        gender.add(option,gender[1]);
        option=document.createElement("option");
        option.text="Other";
        gender.add(option,gender[2]);

        var category=document.getElementById('category');
        category.remove(category.selectedIndex);
        option=document.createElement("option");
        option.text="General";
        category.add(option,category[0]);
        option=document.createElement("option");
        option.text="SC";
        category.appendChild(option,category[1]);
        option=document.createElement("option");
        option.text="ST";
        category.appendChild(option,category[2]);
        option=document.createElement("option");
        option.text="OBC";
        category.appendChild(option,category[3]);
        option=document.createElement("option");
        option.text="Other";
        category.appendChild(option,category[4]);

        var course=document.getElementById('course');
        course.remove(course.selectedIndex);
        var option=document.createElement("option");
        option.text="BE";
        course.add(option,course[0]);
        option=document.createElement("option");
        option.text="ME";
        course.add(option,course[1]);
        option=document.createElement("option");
        option.text="MCA";
        course.add(option,course[2]);

        var currsem=document.getElementById('current-sem');
        currsem.type="number";
        currsem.min="1";
        currsem.max="8";            
        currsem.step="1";
        currsem.value="<%=rs.getString(18)%>";

        }

    
    </script>
                        
                    <div class="row">
                      <div class="col-xs-5">
                          <div class="form-group">
                            <label for="current-sem">Current Semester</label>
                            <input type="text" class="form-control" id="current-sem" name="current-sem" disabled="true" value="<%=rs.getString(18)%>">
                          </div>
                      </div>
                        <div class="col-xs-5">
                            <div class="form-group">
                                <label for="cgpa">CGPA</label>
                                <input type="text" class="form-control" id="cgpa" name="cgpa" disabled="true" value="<%=rs.getString(26)%>">
                            </div>
                        </div>
                                
                    </div>

                            <div class="row">
                                <div class="col-xs-5">
                                    <div class="form-group">
                                        <label for="ten-mark">10th Marks</label>
                                        <input type="text" class="form-control" id="ten-mark" name="ten-mark" disabled="true" value="<%=rs.getString(21)%>">
                                    </div>
                                </div>
                                <div class="col-xs-5">
                                    <div class="form-group">
                                        <label for="twelve-mark">12th Marks</label>
                                        <input type="text" class="form-control" id="twelve-mark" name="twelve-mark" disabled="true" value="<%=rs.getString(22)%>">
                                    </div>
                                </div>
                            </div>
                                    
                            <div class="row">
                                <div class="col-xs-5">
                                    <div class="form-group">
                                        <label for="mppet">MP-PET Rank</label>
                                        <input type="text" class="form-control" id="mppet" name="mppet" disabled="true" value="<%=rs.getString(23)%>">
                                    </div>
                                </div>
                                <div class="col-xs-5">
                                    <div class="form-group">
                                        <label for="aieee">AIEEE Rank</label>
                                        <input type="text" class="form-control" id="aieee" name="aieee" disabled="true" value="<%=rs.getString(24)%>">
                                    </div>
                                </div>
                            </div>
                                    <div class="row">
                                        <div class="col-xs-5">
                                            <div class="form-group">
                                                <label for="ten-mark">JEE Rank</label>
                                                <input type="text" class="form-control" id="jee" name="jee" disabled="true" value="<%=rs.getString(25)%>">
                                            </div>
                                        </div>
                                    </div>
            </div>
            <div id="contact">
                    <div class="form-group">
                        <label for="address">Address</label>
                        <input type="text" class="form-control" id="address" name="address" disabled="true" height="2em" value="<%=rs.getString(9)%>">
                    </div>
                    <div class="row">
                        <div class="col-xs-4">
                            <div class="form-group">
                                <label for="district">District</label>
                                <input type="text" class="form-control" id="district" name="district" disabled="true" value="<%=rs.getString(10)%>">
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <div class="form-group">
                                <label for="state">State</label>
                                <input type="text" class="form-control" id="state" name="state" disabled="true" value="<%=rs.getString(11)%>">
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <div class="form-group">
                                <label for="pincode">Pincode</label>
                                <input type="text" class="form-control" id="pincode" name="pincode" disabled="true" value="<%=rs.getString(12)%>">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-8">
                            <div class="form-group">
                                <i class="fa fa-envelope"></i>&nbsp;&nbsp;&nbsp;<label for="roll-no">Email Id</label>
                                <input type="email" class="form-control" id="email" name="email" value="<%=rs.getString(3)%>" disabled="true">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-4">
                            <div class="form-group">
                                <label for="mobile">Mobile No.</label>
                                <div class="input-group">
                                      <span class="input-group-addon">+91</span>
                                      <input type="text" class="form-control" id="mobile-no" name="mobile-no" value="<%=rs.getString(13)%>" disabled="true">
                                </div>
                            </div>                    
                        </div>
                        <div class="col-xs-4">
                            <div class="form-group">
                                <label for="phone">Phone No.</label>
                                <div class="input-group">
                                      <span class="input-group-addon">+91</span>
                                      <input type="text" class="form-control" id="phone-no" name="phone-no" value="<%=rs.getString(14)%>" disabled="true">
                                </div>
                            </div>
                        </div>
                    </div>
                
            </div>
          </div>          
        </form>
                  
            <div id="profile-pic">
                <h3>Current Picture</h3>
                <img class="img-thumbnail" alt="Thumbnail-image" width="200" height="200" src="<%=rs.getString(20)%>">
                <form id="form4" action="UploadFile.jsp" method="post" enctype="multipart/form-data">
                    <input type="file" name="file" size="50" />
                    <br />
                    <input type="submit" value="Upload File" />
                </form>
            </div>
    </div>
                     
      
        
        <%
                                    con.close();
                                  }
                            }
                              catch(Exception e)
                                  {
                                      e.printStackTrace();
                                  }
                              %>

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
    <script src="js/tabcontent.js"></script>
    
</body>      
</html>