<%@page import="java.util.ArrayList"%>
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
    <link rel="stylesheet" href="//code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.8.3.js"></script>
    <script src="//code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    
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
    </nav>-->
    
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
                        <div class="panel panel-danger">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a href="#"><i class="fa fa-home"></i>&emsp;Home</a></h4>
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
       
      <div class="col-sm-9">
            
          <ol class="breadcrumb" style="margin-top: 55px; margin-left: -15px; background-color: transparent">
                <li><a href="#">Student</a></li>
                <li style="color: #3071a9">Home</li>
          </ol>
          <div class="row">
            <div class="col-xs-8">
                <div class="panel-group" id="accordion">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">News Feed
                                <div class="pull-right">
                                    <a href="#" data-toggle="dropdown" class="dropdown-toggle" style="color:#fff"><i class="fa fa-gears"></i></a>
                                    <ul class="dropdown-menu" style="color:#000; z-index: 100000">
                                        <li><a href="#topic" data-toggle="modal">Add Topics</a></li>
                                        <li><a href="#delete" data-toggle="modal">Delete Topics</a></li>
                                        <li><a href="#feed" data-toggle="modal">Add RSS Feed URL</a></li>
                                    </ul>
                                    &emsp;
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" style="color:#fff"><span class="caret"></span></a>
                                </div>
                            </h3>
                        </div>
                        
                        <div class="modal fade" style="color:#000" id="topic" role="dialog">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4>Add Topics</h4>
                                    </div>
                                    <form action="save-topic.jsp" method="get" class="form-inline" id="form1" role="form">
                                        <div class="modal-body">
                                            <p>Add topics in the text fields</p>
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    <div class="form-group">
                                                        <label for="input1" class="control-label">1.</label>
                                                        <input type="text" name="input1" class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="input2" class="control-label">2.</label>
                                                        <input type="text" name="input2" class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="input3" class="control-label">3.</label>
                                                        <input type="text" name="input3" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-xs-6">
                                                    <div class="form-group">
                                                        <label for="input4" class="control-label">4.</label>
                                                        <input type="text" name="input4" class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="input5" class="control-label">5.</label>
                                                        <input type="text" name="input5" class="form-control">
                                                    </div>
                                                </div>
                                            </div>                                                                             
                                    </div>
                                    <div class="modal-footer">
                                        <div class="pull-right">
                                            <button type="submit" class="btn btn-success">Save</button>
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                        </div>
                                    </div>
                                    </form>   
                                </div>
                            </div>
                        </div>
                        <div class="modal fade" style="color:#000" id="feed" role="dialog">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4>Add URL</h4>
                                    </div>
                                    <form action="save-url.jsp" method="get" class="form" id="form1" role="form">
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    <div class="form-group">
                                                        <label for="input1" class="col-xs-2 control-label">1.</label>
                                                        <div class="col-xs-10">
                                                            <input type="text" name="input1" class="form-control">
                                                        </div>
                                                    </div>
                                                <br>
                                                    <div class="form-group">
                                                        <label for="input2" class="col-xs-2 control-label">2.</label>
                                                        <div class="col-xs-10">
                                                            <input type="text" name="input2" class="form-control">
                                                        </div>
                                                    </div>
                                                <br>
                                                    <div class="form-group">
                                                        <label for="input3" class="col-xs-2 control-label">3.</label>
                                                        <div class="col-xs-10">
                                                            <input type="text" name="input3" class="form-control">
                                                        </div>
                                                    </div>
                                                <br>
                                                    <div class="form-group">
                                                        <label for="input4" class="col-xs-2 control-label">4.</label>
                                                        <div class="col-xs-10">
                                                            <input type="text" name="input4" class="form-control">
                                                        </div>
                                                    </div>
                                                <br>
                                                    <div class="form-group">
                                                        <label for="input5" class="col-xs-2 control-label">5.</label>
                                                        <div class="col-xs-10">
                                                            <input type="text" name="input5" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <div class="pull-right">
                                                <button type="submit" class="btn btn-success">Save</button>
                                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                            </div>
                                        </div>
                                    </form>   
                                </div>
                            </div>
                        </div>
                        <div class="modal fade" style="color:#000" id="delete" role="dialog">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4>Topics</h4>                                        
                                    </div>
                                    <form action="edit-topic.jsp" method="get" class="form" id="form1" role="form">
                                        <div class="modal-body">
                                            <p>Tick the check boxes for deleting the topic</p> 
                                            <div class="row">
                        <%
                                    }
                                    ps=con.prepareStatement("select topic from newsfeed_topic where enrollment_no=?");
                                    ps.setString(1, username);
                                    rs=ps.executeQuery();
                                    int x=1;
                                    while(rs.next())    {
                        %>
                                                <div class="input-group" id="todo">
                                                    <span class="input-group-addon">
                                                        <input type="checkbox" class="css-checkbox" name="<%=x%>" value="<%=rs.getString(1)%>">
                                                    </span>
                                                        <input type="text" class="form-control" disabled="true" value="<%=rs.getString(1)%>">
                                                </div>
                        <%          x++;
                                    }       %>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <div class="pull-right">
                                                <button type="submit" class="btn btn-success">Delete</button>
                                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                            </div>
                                        </div>
                                    </form>   
                                </div>
                            </div>
                        </div>
                        
                        <div id="collapseOne" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <br>
                                <br>
                                <br>
                                
        <%
                    
                    
                int a=0,b=0;           
                ArrayList url,subject;
                subject=new ArrayList();
                url=new ArrayList();
                PreparedStatement ps1;  ResultSet rs1;
                ps=con.prepareStatement("select url from newsfeed_url where enrollment_no=?");
                ps.setString(1, username);
                rs=ps.executeQuery();
                while(rs.next()) {
                   url.add(rs.getString(1));
                   System.out.println("--"+url.get(a));
                   a++;
                }
                ps1=con.prepareStatement("select topic from newsfeed_topic where enrollment_no=?");
                ps1.setString(1, username);
                rs1=ps1.executeQuery();
                while(rs1.next()) {
                    subject.add(rs1.getString(1));
//                    System.out.println("22"+subject.get(b));
                    b++;   
                }
    
    // declare strings to hold XML description field string to be searched by
    // the subject strings given here as an example e.g 'hacker' and 'malicious'
    // String desc=null;
    // String subject[]={"argentina","india"};
    
//    String url="https://news.google.co.in/news/feeds?pz=1&cf=all&ned=in&hl=en&output=rss";//http://feeds.feedburner.com/NdtvNews-TopStories";
    // start try-catch block
        String desc=null;
    
         
         
//          String []url={"http://feeds.feedburner.com/NdtvNews-TopStories","https://news.google.co.in/news/feeds?pz=1&cf=all&ned=in&hl=en&output=rss"};
    // start try-catch block
        int count=1;
        for(int l=0;l<url.size();l++)   {
            DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            URL u = new URL(url.get(l).toString());//"http://feeds.bbci.co.uk/news/technology/rss.xml");   // feed address
            System.out.println("*"+u);
            // build a document from the XML stream
            Document doc = builder.parse(u.openStream());
            // get the number of records (nodes) in the XML file and store in variable nodes
            NodeList nodes = doc.getElementsByTagName("item");

            // now move through all the records (nodes)
            for(int j=0;j<subject.size();j++) {
                for(int i=0;i<nodes.getLength();i++) {
            // get a field (element) from the node (record)
                Element element = (Element)nodes.item(i);
                // ...and extract the description field ready to be search for the desired strings
                desc=getElementValue(element,"description");
                // if the subject strings (hackers or malicious in this example) is in the description field then get and output the rest of the node to HTML

                if (desc.indexOf(subject.get(j).toString()) >= 0 && count<=5)  {
                    count++;
//                    out.println("<label>" + getElementValue(element,"title")+ "</label><hr>");
//                    out.println("<b>Link: </b><a href='" + getElementValue(element,"link")+ "'>View Page</a><br>");
                  out.println("<a href='" + getElementValue(element,"link")+ "'>"+getElementValue(element,"title")+"</a><hr>");
//                    out.println("<b>Publish Date: </b>" + getElementValue(element,"pubDate")+ "<br>");
                    //out.println("<b>author: </b>" + getElementValue(element,"dc:creator")+ "<br>");
                    //out.println("<b>comments: </b>" + getElementValue(element,"wfw:comment")+ "<br>");

//                    out.println("<b>description: </b>" + desc+ "<br>");
//                    out.println("<b>----------------------------------------------------------------------------------------</b>"+ "<br>");
                } //if
                }
            }
        }//for
    }//try
    catch(Exception ex) {
        ex.printStackTrace();
    }
    %>
                            </div>                            
                        </div>                        
                    </div>
                            
    
    <script>
//        var add=document.getElementById('addTopic'),
//            footer=document.getElementById('footer');
//    
//        add.onclick=function(){
//            footer.setAttribute("style","visibility:visible");
//             $(function() {
//                    var counter = 0;
//
//                    $('#add').click(function() {
//
//                        var textBox = $('<input type="text" class="topic" id="t1' + (counter) + '"/>&emsp;'),
//                            removeButton = $('<input type="button" value="&emsp;x&emsp;" id="removebtn' + (counter) + '"/>'),
//                            containerDiv = $("<div />");
//
//                        removeButton.click(function(e) {
//                            e.preventDefault();
//                            containerDiv.remove();
//                        });
//
//                        containerDiv
//                            .append(textBox)
//                            .append(removeButton);
//
//                        counter++;
//
//                        $("#box").append(containerDiv);
//                    });
//             });
             
//            $('#save').click(function () {
//                var elements=document.getElementsByClassName("topic"),
//                    name=document.getElementById('hiddenInput');
//                    
//                var arr;
//                for(var i=0;i<elements.length;i++)  {
//                    name.value=elements[i].value;
//                    arr='save-topic.jsp/?val='+elements[i].value;
////                    setCookie("topic",arr,1000);
//                    alert(elements[i].value);
//                }
//                alert("Clicked");
//                window.location.replace("save-topic.jsp");
//            });
//        };
        
    </script>

            

    <br>
    
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Resources
                                <div class="pull-right">
                                    <a href="#" data-toggle="dropdown" class="dropdown-toggle" style="color:#fff"><i class="fa fa-gears"></i></a>
                                    <ul class="dropdown-menu" style="color:#000">
                                        <li><a href="#">Upload</a></li>
                                        
                                    </ul>
                                    &emsp;
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" style="color:#fff"><span class="caret"></span></a>
                                </div>
                            </h3>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse">
                            <div class="panel-body">
                                <br>
                                <br>
                            </div>
                        </div>
                    </div>
    
<!--                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Attendance
                                <div class="pull-right">
                                    <a href="#" data-toggle="dropdown" class="dropdown-toggle" style="color:#fff"><i class="fa fa-gears"></i></a>
                                    <ul class="dropdown-menu" style="color:#000">
                                        <li><a href="#">Upload</a></li>
                                        
                                    </ul>
                                    &emsp;
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" style="color:#fff"><span class="caret"></span></a>
                                </div>
                            </h3>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse">
                            <div class="panel-body">
                              Nihil anim keffiyeh helvetica, craft beer labore wes anderson 
                              cred nesciunt sapiente ea proident. Ad vegan excepteur butcher 
                              vice lomo.
                            </div>
                        </div>
                    </div>-->
                </div>        
            </div>
    
    <!-- The main code here uses two java functions to break each node into child fields -->
    <%!
    // give this function a parent element (node) and it will break it down into child fields by calling...
    public String getElementValue(Element parent,String label) {
        return getCharacterDataFromElement((Element)parent.getElementsByTagName(label).item(0));
    }
    
    //... this function which builds each field character by character- it returns a string
    public String getCharacterDataFromElement(Element e) {
        try {
            Node child = e.getFirstChild();
            if(child instanceof CharacterData) {
            CharacterData cd = (CharacterData) child;
            return cd.getData();
            }
        }
        catch(Exception ex) {

        }
        return " ";
    } //private String getCharacterDataFromElement

    %>
        
    <%!
            public int checkDate(Date d1)  {
                
                Date d2=new Date();
                int num=d2.compareTo(d1);
                return num;
            }
        
    %>
    
                            <%  String date; 
                                Date curr_date=new Date();
                                SimpleDateFormat df=new SimpleDateFormat("dd-MM-yyyy");
                                SimpleDateFormat ft=new SimpleDateFormat ("E  '-'  MMM dd ',' yyyy ");
                                SimpleDateFormat ft1=new SimpleDateFormat ("MMM dd");
                                String s=ft.format(curr_date);
                                date=df.format(curr_date);
                                try    {
                                    java.sql.PreparedStatement ps1=con.prepareStatement("select task,status,end_date,list_id from todolist where enrollment_no=? order by status desc,end_date desc");
                                    ps1.setString(1,username);
                                    ResultSet rs=ps1.executeQuery();
                            %>
                                              
                        
            <div class="col-sm-4">
                
                <div class="row">
                    <h1 style="text-align: center; color: #fff"><%=s%></h1>
                </div>
                
                <br>
                <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">To Do List
                                <div class="pull-right">
                                    <a href="#add" data-toggle="modal" title="Add Tasks in To Do List" style="color:#fff"><i class="fa fa-plus"></i></a>&emsp;
                                    <a href="#" onclick="editTodo()" title="Edit To Do List" style="color:#fff"><i id="edit1" class="fa fa-edit"></i></a>
                                </div>   
                            </h3>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <form id="form3" action="edit-todolist.jsp" method="get">
                            <table id="todolist" class="table-condensed" style="color: #16a085">   
                               
                                <%      int i=0;
                                        while(rs.next())  {    
                                            i++;
                                            String stat="";
                                            int q=checkDate(rs.getDate(3));
                                            if(q<=0)    {
                                %>
                                        <tr>
                                            <td>   
                                                <div class="input-group" id="todo">
                                                
                                <%      if(!rs.getString(2).equalsIgnoreCase("Pending"))    {   %>  
                                                <input type="text" name="task<%=i%>" class="form-control" style="color: gray" disabled="true" value="<%=rs.getString(1)%>">  
                                                <span class="input-group-addon">
                                                    <input type="checkbox" class="css-checkbox" id="checkbox<%=i%>" name="check<%=i%>" disabled="true" checked>
                                                </span>
                                                <input type="hidden" name="date<%=i%>" value="<%=rs.getDate(3)%>"/>
                                                <input type="hidden" name="id<%=i%>" value="<%=rs.getInt(4)%>"/>
                                                <span class="input-group-addon"><a href="#" style="color: gray"><%=ft1.format(rs.getDate(3))%></a></span>
                                                
                                <%      }
                                        else    {
                                %>              <input type="text" name="task<%=i%>" class="form-control" style="color: navy" disabled="true" value="<%=rs.getString(1)%>"> 
                                                <span class="input-group-addon">
                                                    <input type="checkbox" class="css-checkbox" id="checkbox<%=i%>" name="check<%=i%>" disabled="true">
                                                </span>
                                                <input type="hidden" name="date<%=i%>" value="<%=rs.getDate(3)%>"/>
                                                <input type="hidden" name="id<%=i%>" value="<%=rs.getInt(4)%>"/>
                                                <span class="input-group-addon"><a href="#" style="color: navy"><%=ft1.format(rs.getDate(3))%></a></span>
                                                
                                <%      }   %>
                                                
                                            </div>
                                        </td>
                                    </tr>
                                <%          }  
                                            else    {
                                %>
                                    <tr>
                                        <td>   
                                            <div class="input-group" id="todo">
                                                
                                <%      if(!rs.getString(2).equalsIgnoreCase("Pending"))    {   %>  
                                                <input type="text" name="task<%=i%>" class="form-control" style="color: gray" disabled="true" value="<%=rs.getString(1)%>">  
                                                <span class="input-group-addon">
                                                    <input type="checkbox" class="css-checkbox" id="checkbox<%=i%>" name="check<%=i%>" disabled="true" checked>
                                                </span>
                                                <input type="hidden" name="date<%=i%>" value="<%=rs.getDate(3)%>"/>
                                                <input type="hidden" name="id<%=i%>" value="<%=rs.getInt(4)%>"/>
                                                <span class="input-group-addon"><a href="#" style="color: gray"><%=ft1.format(rs.getDate(3))%></a></span>
                                                
                                <%      }
                                        else    {
                                %>              <input type="text" name="task<%=i%>" class="form-control" style="color: tomato" disabled="true" value="<%=rs.getString(1)%>">  
                                                <span class="input-group-addon">
                                                    <input type="checkbox"  class="css-checkbox" id="checkbox<%=i%>" name="check<%=i%>" disabled="true">
                                                </span>
                                                <input type="hidden" name="date<%=i%>" value="<%=rs.getDate(3)%>"/>
                                                <input type="hidden" name="id<%=i%>" value="<%=rs.getInt(4)%>"/>
                                                <span class="input-group-addon"><a href="#" style="color: tomato"><%=ft1.format(rs.getDate(3))%></a></span>
                                                
                                <%      }   %>
                                                
                                            </div>
                                        </td>
                                    </tr>
                                <%      }   
                                    }   
                                %>  
                                <tr id="cat" style="display:none">
                                    <td class="pull-right">
                                        <input type="hidden" name="count" value="<%=i%>"/>
                                        <button id="button" type="submit" class="btn btn-success">Save</button>
                                    </td>
                                </tr>
                            </table>
                                </form>
                            </div>
                        </div>
                    </div>  
            </div>
        </div>

                            <script>
                                var count=0;
                                
                                function editTodo()    {
                                    var elem1=document.getElementsByClassName('form-control'),
                                        elem2=document.getElementsByClassName('css-checkbox'),
                                        table=document.getElementById('cat'),
                                            e=document.getElementById('edit1');
                                    
                                    if(count%2==0)  {
                                        for(var i=0;i<elem1.length;i++)
                                            elem1[i].disabled=false;
                                        for(i=0;i<elem2.length;i++) 
                                            elem2[i].disabled=false;
                                        table.removeAttribute("style");
                                        e.setAttribute("style","display:none");
//                                        e.removeAttribute("class","fa fa-edit");
//                                        e.setAttribute("class","fa fa-save");
                                    }
                                    else    {
                                        for(var i=0;i<elem1.length;i++)
                                            elem1[i].disabled=true;
                                        for(i=0;i<elem2.length;i++) 
                                            elem2[i].disabled=true
                                        table.setAttribute("style","display:none");
                                        e.removeAttribute("style");
//                                        e.removeAttribute("class","fa fa-save");
//                                        e.setAttribute("class","fa fa-edit");  
//                                        document.getElementById('form3').submit();
                                    }
                                    count++;
                                }
                            </script>
                            
                        <div class="modal fade" style="color:#000" id="add" role="dialog">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4>Add Tasks to the List</h4>
                                    </div>
                                    <form action="save-todolist.jsp" method="get" class="form-horizontal" id="form1" role="form">
                                        <div class="modal-body">
                                            <div id="tabs" style="font-size: 12px;" >
                                                <ul>
                                                    <li class="tab"><a href="#tab-1"> 1 </a></li>
                                                    <li class="tab"><a href="#tab-2"> 2 </a></li>
                                                    <li class="tab"><a href="#tab-3"> 3 </a></li>
                                                    <li class="tab"><a href="#tab-4"> 4 </a></li>
                                                    <li class="tab"><a href="#tab-5"> 5 </a></li>
                                                </ul>
                                                <div id="tab-1">
                                                    <div class="input-group danger">
                                                        <input type="text" class="form-control" name="task-name1" placeholder="Task Name 1">
                                                    </div>
                                                    <br>
                                                    <div class="input-group">
                                                        <select name="status1" class="form-control">
                                                            <option value="Pending">Pending</option>
                                                            <option value="Completed">Completed</option>
                                                        </select>
                                                    </div>
                                                    <br>
                                                    <div class="input-group">
                                                        <input type="date" class="form-control" name="due-date1">
                                                    </div>
                                                    <br>
                                                </div>
                                                <div id="tab-2">
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" name="task-name2" placeholder="Task Name 2">
                                                    </div>
                                                    <br>
                                                    <div class="input-group">
                                                        <select name="status2" class="form-control">
                                                            <option value="Pending">Pending</option>
                                                            <option value="Completed">Completed</option>
                                                        </select>
                                                    </div>
                                                    <br>
                                                    <div class="input-group">
                                                        <input type="date" class="form-control" name="due-date2">
                                                    </div>
                                                    <br>
                                                </div>
                                                <div id="tab-3">
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" name="task-name3" placeholder="Task Name 3">
                                                    </div>
                                                    <br>
                                                    <div class="input-group">
                                                        <select name="status3" class="form-control">
                                                            <option value="Pending">Pending</option>
                                                            <option value="Completed">Completed</option>
                                                        </select>
                                                    </div>
                                                    <br>
                                                    <div class="input-group">
                                                        <input type="date" class="form-control" name="due-date3">
                                                    </div>
                                                    <br>
                                                </div>
                                                <div id="tab-4">
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" name="task-name4" placeholder="Task Name 4">
                                                    </div>
                                                    <br>
                                                    <div class="input-group">
                                                        <select name="status4" class="form-control">
                                                            <option value="Pending">Pending</option>
                                                            <option value="Completed">Completed</option>
                                                        </select>
                                                    </div>
                                                    <br>
                                                    <div class="input-group">
                                                        <input type="date" class="form-control" name="due-date4">
                                                    </div>
                                                    <br>
                                                </div>
                                                <div id="tab-5">
                                                    <div class="input-group">
                                                        <input type="text" class="form-control" name="task-name5" placeholder="Task Name 5">
                                                    </div>
                                                    <br>
                                                    <div class="input-group">
                                                        <select name="status5" class="form-control">
                                                            <option value="Pending">Pending</option>
                                                            <option value="Completed">Completed</option>
                                                        </select>
                                                    </div>
                                                    <br>
                                                    <div class="input-group">
                                                        <input type="date" class="form-control" name="due-date5" placeholder="Due Date">
                                                    </div>
                                                    <br>
                                                </div>
                                            </div>                                            
                                        </div>
                                        <div class="modal-footer">
                                            <div class="pull-right">
                                                <button type="submit" class="btn btn-success">Save</button>
                                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                            </div>
                                        </div>
                                    </form>   
                                </div>
                            </div>
                        </div>
                            
                            
                               
<!--                        <div class="modal fade" style="color:#000" id="edit-todo" role="dialog">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4>Edit Todo List</h4>
                                    </div>
                                    <form action="save-todolist.jsp" method="get" class="form-horizontal" id="form1" role="form">
                                        <div class="modal-body">
                                            <div class="input-group" id="todo">
                                                <span class="input-group-addon">
                                                    <input type="checkbox" class="css-checkbox" id="checkbox%>" name="checkbox1" checked>
                                                </span>
                                                <input type="text" class="form-control" style="color: gray" disabled="true" value="%=rs.getString(1)%>">  
                                                <span class="input-group-addon" style="color: gray">=ft1.format(rs.getDate(3))%></span>
                                            </div>
                                                                                            
                                        </div>
                                        <div class="modal-footer">
                                            <div class="pull-right">
                                                <button type="submit" class="btn btn-success">Save</button>
                                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                            </div>
                                        </div>
                                    </form>   
                                </div>
                            </div>
                        </div>-->
                    
                            
    <script>
        $("#tabs").tabs();
    </script>
                        <%
                                    con.close();
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
    <script src="js/jquery-ui-1.9.2.js"></script>
    
</body>      
</html>