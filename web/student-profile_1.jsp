<%@page import="java.sql.PreparedStatement"%>
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

    <title>Student-Profile</title>
    
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
                    <button type="button" class="btn btn-primary">Logout</button>
                    <button type="button" class="btn btn-danger">Cancel</button>
                </div>
            </div>
        </div>
    </div>
    
                <%          try
                                {
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
                                    PreparedStatement ps=con.prepareStatement("select * from profile where enrollment_no=?");
                                    ps.setString(1,"0801CS111066");
                                    ResultSet rs=ps.executeQuery();
                                    if(rs.next())
                                    {
                                        %>
    
    
    <div class="row">
      <div class="col-sm-9 col-lg-2">
          <div class="sidebar-nav" style=" background-color: transparent">
          <div class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <span class="visible-xs navbar-brand">Sidebar menu</span>
            </div>
             
            <div class="navbar-collapse collapse sidebar-navbar-collapse" style="margin-top:50px; padding: 5px 0px;">
              <ul id="side" class="nav navbar-nav">
                <li class="picture"><img class="img-circle" src="images/anon_user.png">
                    <h4 style="color:#000"><strong><%=rs.getString(2)%></strong></h4>
                </li>
                    <li>
                        <div class="panel-group" id="accordion" style=" z-index: 200">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="student-home.jsp" style="text-decoration: none"><i class="fa fa-home"></i>&nbsp;&nbsp;Home</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="text-decoration: none"><i class="fa fa-edit"></i>&nbsp;&nbsp;Profile</a>                                
                                </h4>
                            </div>
                        </div>
                        <div class="panel-collapse collapse" id="collapseOne">
                            <div class="panel-body">
                                <ul>
                                    <li><a href="student-profile.jsp">Personal</a></li>
                                    <li><a href="#">Academic</a></li>
                                </ul>
                            </div>
                        </div>                 
                    </div>
                </li>
                <li>
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" style="text-decoration: none"><i class="fa fa-edit"></i>&nbsp;&nbsp;Registration</a>                                
                                </h4>
                            </div>
                        </div>
                        <div class="panel-collapse collapse" id="collapseTwo">
                            <div class="panel-body">
                                <ul>
                                    <li><a href="#">Registration Status</a></li>
                                    <li><a href="#">Current Registration</a></li>
                                    <li><a href="#">Registration Fees</a></li>
                                    <li><a href="#">Exam Form</a></li>
                                </ul>
                            </div>
                        </div>                 
                    </div>
                </li>
                <li>
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#" style="text-decoration: none"><i class="fa fa-home"></i>&nbsp;&nbsp;Calendar</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" style="text-decoration: none"><i class="fa fa-edit"></i>&nbsp;&nbsp;Assignment<i class="fa fa-caret-down right"></i></a>
                                </h4>
                            </div>
                        </div>
                        <div class="panel-collapse collapse" id="collapseThree">
                            <div class="panel-body">
                                <ul>
                                    <li><a href="#">View Assignments</a></li>
                                    <li><a href="#">Submit Assignments</a></li>
                                    <li><a href="#">View Marks</a></li>
                                </ul>
                            </div>
                        </div>                 
                    </div>
                </li>
                <li>
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#" style="text-decoration: none"><i class="fa fa-home"></i>&nbsp;&nbsp;Events</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour" style="text-decoration: none"><i class="fa fa-edit"></i>&nbsp;&nbsp;Message Center</a>                                
                                </h4>
                            </div>
                        </div>
                        <div class="panel-collapse collapse" id="collapseFour">
                            <div class="panel-body">
                                <ul>
                                    <li><a href="#">Mailbox</a></li>
                                    <li><a href="#">Compose Message</a></li>
                                    <li><a href="#">Chat</a></li>
                                </ul>
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
          
               
          <ol class="breadcrumb" style="margin-top: 55px; margin-left: -15px; background-color: #52be7f">
                  <li><a href="#">Student</a></li>
                  <li><a href="#">Profile</a></li>
                  <li style="color: #3071a9">Personal</li>
          </ol>
           
          <ul class="tabs">
              <li class="selected"><a href="#personal">Personal</a></li>
              <li><a href="#academic">Academic</a></li>
              <li><a href="#profile-pic">Profile Picture</a></li>                  
              
          </ul>
          
          <div class="tabcontents">
            <div id="personal">
            <form class="form-horizontal" role="form">
              <div class="col-sm-6">  

                          <div class="form-group">
                              <label for="name" class="col-sm-4 control-label">Name</label>
                              <div class="col-sm-6">
                                  <input type="text" class="form-control" id="name" disabled="true" value="<%=rs.getString(2)%>">
                              </div>
                          </div>
                          <div class="form-group">
                              <label for="roll-no" class="col-sm-4 control-label">Email Id</label>
                              <div class="col-sm-6">
                                  <input type="email" class="form-control" id="email" value="<%=rs.getString(3)%>" disabled="true">
                              </div>
                          </div>
                          <div class="form-group">
                              <label for="dob" class="col-sm-4 control-label">Date of Birth</label>
                              <div class="col-sm-6">
                                  <input type="text" class="form-control" id="dob" disabled="true" value="<%=rs.getString(4)%>">
                              </div>
                          </div>
                          <div class="form-group">
                              <label for="father-name" class="col-sm-4 control-label">Father's Name</label>
                              <div class="col-sm-6">
                                  <input type="text" class="form-control" id="father-name" value="<%=rs.getString(6)%>" disabled="true">
                              </div>
                          </div>
                          <div class="form-group">
                              <label for="mother-name" class="col-sm-4 control-label">Mother's Name</label>
                              <div class="col-sm-6">
                                  <input type="text" class="form-control" id="mother-name" value="<%=rs.getString(7)%>" disabled="true">
                              </div>
                          </div>                    
                          <div class="form-group">
                              <label for="mobile" class="col-sm-4 control-label">Mobile No.</label>
                              <div class="col-sm-6">
                                  <div class="input-group">
                                      <span class="input-group-addon">+91</span>
                                      <input type="text" class="form-control" id="mobile-no" value="<%=rs.getString(13)%>" disabled="true">
                                  </div>
                              </div>
                          </div>                    
                          <div class="form-group">
                              <label for="phone" class="col-sm-4 control-label">Phone No.</label>
                              <div class="col-sm-6">
                                  <div class="input-group">
                                      <span class="input-group-addon">+91</span>
                                      <input type="text" class="form-control" id="phone-no" value="<%=rs.getString(14)%>" disabled="true">
                                  </div>
                              </div>
                          </div>
                          <div class="form-group">
                              <label for="course" class="col-sm-4 control-label">Course</label>
                              <div class="col-sm-6">
                                  <select id="gender" name="course" class="form-control" value="" disabled="true">
                                      <option value="1"><%=rs.getString(17)%></option>
                                      <option value="2">ME</option>
                                      <option value="3">MCA</option>
                                  </select>
                              </div>
                          </div>                    
                          <div class="form-group">
                              <label for="adm-year" class="col-sm-4 control-label">Admission Year</label>
                              <div class="col-sm-6">
                                  <input id="gender" name="adm-year" class="form-control" disabled="true"  value="<%=rs.getString(16)%>">
                              </div>
                          </div>

                  </div>
                  <div class="col-sm-6">
                      <div class="form-group">
                          <label for="roll-no" class="col-sm-4 control-label">Enrollment No</label>
                          <div class="col-sm-6">
                              <input type="text" class="form-control" id="name" disabled="true" value="<%=rs.getString(1)%>">
                          </div>
                      </div>
                      <div class="form-group">
                          <label for="gender" class="col-sm-4 control-label">Gender</label>
                          <div class="col-sm-6">
                              <select id="gender" name="gender" class="form-control" disabled="true">
                                  <option value="1"><%=rs.getString(5)%></option>
                                  <option value="2">Female</option>
                                  <option value="3">Other</option>
                              </select>
                          </div>
                      </div>
                      <div class="form-group">
                          <label for="category" class="col-sm-4 control-label">Category</label>
                          <div class="col-sm-6">
                              <select id="category" name="category" class="form-control" disabled="true">
                                  <option value="1"><%=rs.getString(8)%></option>
                                  <option value="2">SC</option>
                                  <option value="3">ST</option>
                                  <option value="3">OBC</option>                                
                              </select>
                          </div>
                      </div>
                      <div class="form-group">
                          <label for="address" class="col-sm-4 control-label">Address</label>
                          <div class="col-sm-6">
                              <textarea class="form-control" id="address" name="address" disabled="true"><%=rs.getString(9)%></textarea>
                          </div>
                      </div>
                      <div class="form-group">
                          <label for="district" class="col-sm-4 control-label">District</label>
                          <div class="col-sm-6">
                              <input type="text" class="form-control" id="district" disabled="true" value="<%=rs.getString(10)%>">
                          </div>
                      </div>
                      <div class="form-group">
                          <label for="state" class="col-sm-4 control-label">State</label>
                          <div class="col-sm-6">
                              <input type="text" class="form-control" id="state" disabled="true" value="<%=rs.getString(11)%>">
                          </div>
                      </div>
                      <div class="form-group">
                          <label for="pincode" class="col-sm-4 control-label">Pincode</label>
                          <div class="col-sm-6">
                              <input type="text" class="form-control" id="pincode" disabled="true" value="<%=rs.getString(12)%>">
                          </div>
                      </div>
                      <div class="form-group">
                          <label for="blood-group" class="col-sm-4 control-label">Blood Group</label>
                          <div class="col-sm-6">
                              <input type="text" class="form-control" id="blood-group" disabled="true" value="<%=rs.getString(15)%>">
                          </div>
                      </div>
                      <div class="form-group">
                          <label for="current-sem" class="col-sm-4 control-label">Current Semester</label>
                          <div class="col-sm-6">
                              <input type="text" class="form-control" id="current-sem" disabled="true" value="<%=rs.getString(18)%>">
                          </div>
                      </div>

                  </div>
            </form>          
            </div>
            <%
                                          String dt=rs.getString(4);
                                          StringBuilder s=new StringBuilder(dt);
                                          String day=s.delete(0, 1).toString();
                                          String month=s.delete(1, 3).toString();
                                          String year=s.delete(3, 7).toString();

                                      }
                                  }
                              catch(Exception e)
                                  {
                                      e.printStackTrace();
                                  }
                              %>
            
                            
            <div id="academic">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label for="" class="col-sm-4 control-label">District</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="district" disabled="true" value="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="state" class="col-sm-4 control-label">State</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="state" disabled="true" value="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="pincode" class="col-sm-4 control-label">Pincode</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="pincode" disabled="true" value="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="blood-group" class="col-sm-4 control-label">Blood Group</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="blood-group" disabled="true" value="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="current-sem" class="col-sm-4 control-label">Current Semester</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="current-sem" disabled="true" value="">
                        </div>
                    </div>
                </form>
            </div>
                              
            <div id="profile-pic">

            </div>
          </div>
                            
                            <script>
                                var academic=document.getElementById('academic'),
                                    personal=document.getElementById('personal');
                                        
                                academic.onclick=function () {
                                    personal.setAttribute("style","visibility:hidden");
                                    academic.setAttribute("style","visibility:visible");
                                }
                            </script>

                            
          <div class="component" id="component" style="visibility:hidden">    
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
    <script src="js/tabcontent.js"></script>
    
</body>      
</html>