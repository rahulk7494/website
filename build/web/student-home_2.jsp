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
                        <button type="button" class="btn btn-info">Menu</button>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown" onclick="return f1();">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Message
                        <i class="fa fa-envelope"></i><span id="n1" class="noti_bubble">2</span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="blank-page.html">ABCD</a></li>
                            <li><a href="blank-page.html">ASDF</a></li>
                            <li><a href="blank-page.html">ZXCV</a></li>
                        </ul>
                    </li>
                    <li class="dropdown" onclick="return f2();">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Alerts
                        <i class="fa fa-bell"></i><span id="n2" class="noti_bubble">2</span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="blank-page.html">ABCD</a></li>
                            <li><a href="blank-page.html">ASDF</a></li>
                            <li><a href="blank-page.html">ZXCV</a></li>
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
                        <div class="panel panel-default">
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
                                <h4 class="panel-title"><a href="student-event.jsp"><i class="fa fa-photo"></i>&emsp;Events</a></h4>
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
                                    <ul class="dropdown-menu" style="color:#000">
                                        <li><a href="#topic" data-toggle="modal">Add Topics</a></li>
                                        <li><a href="#feed">Add RSS Feed URL</a></li>
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
                                    <div class="modal-body">
                                        <form action="save-topic.jsp" method="get" class="form-inline" id="form1" role="form">
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
                                        <h4>Add Topics</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form action="save-url.jsp" method="get" class="form-inline" id="form1" role="form">
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
                        
                        <div id="collapseOne" class="panel-collapse collapse in">
                            <div class="panel-body">

                        
        <%
                    }
                    
                }
            catch(Exception e)    {
                e.printStackTrace();
            }
    
    // declare strings to hold XML description field string to be searched by
    // the subject strings given here as an example e.g 'hacker' and 'malicious'
//    String desc=null;
//    String subject[]={"argentina","india"};
//    String url="https://news.google.co.in/news/feeds?pz=1&cf=all&ned=in&hl=en&output=rss";//http://feeds.feedburner.com/NdtvNews-TopStories";
    // start try-catch block
        String desc=null;
         String []subject={"india"};
          String []url={"http://feeds.feedburner.com/NdtvNews-TopStories","https://news.google.co.in/news/feeds?pz=1&cf=all&ned=in&hl=en&output=rss"};
    // start try-catch block
    try
    {
        for(int l=0;l<url.length;l++)   {
            DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            URL u = new URL(url[l]);//"http://feeds.bbci.co.uk/news/technology/rss.xml");   // feed address

            // build a document from the XML stream
            Document doc = builder.parse(u.openStream());
            // get the number of records (nodes) in the XML file and store in variable nodes
            NodeList nodes = doc.getElementsByTagName("item");

            // now move through all the records (nodes)
            for(int j=0;j<subject.length;j++) {

                for(int i=0;i<nodes.getLength();i++) {
            // get a field (element) from the node (record)
                Element element = (Element)nodes.item(i);
                // ...and extract the description field ready to be search for the desired strings
                desc=getElementValue(element,"description");
                // if the subject strings (hackers or malicious in this example) is in the description field then get and output the rest of the node to HTML

                if (desc.indexOf(subject[j]) >= 0)  {

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
        var add=document.getElementById('addTopic'),
            footer=document.getElementById('footer');
    
        add.onclick=function(){
            footer.setAttribute("style","visibility:visible");
             $(function() {
                    var counter = 0;

                    $('#add').click(function() {

                        var textBox = $('<input type="text" class="topic" id="t1' + (counter) + '"/>&emsp;'),
                            removeButton = $('<input type="button" value="&emsp;x&emsp;" id="removebtn' + (counter) + '"/>'),
                            containerDiv = $("<div />");

                        removeButton.click(function(e) {
                            e.preventDefault();
                            containerDiv.remove();
                        });

                        containerDiv
                            .append(textBox)
                            .append(removeButton);

                        counter++;

                        $("#box").append(containerDiv);
                    });
             });
             
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
        };
        
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
                              Nihil anim keffiyeh helvetica, craft beer labore wes anderson 
                              cred nesciunt sapiente ea proident. Ad vegan excepteur butcher 
                              vice lomo.
                            </div>
                        </div>
                    </div>
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
        
                            <%  String date; 
                                Date curr_date=new Date();
                                SimpleDateFormat df=new SimpleDateFormat("dd-MM-yyyy");
                                date=df.format(curr_date);
                                try    {
                                    java.sql.PreparedStatement ps1=con.prepareStatement("select * from todolist where enrollment_no=?");
                                    ps1.setString(1,username);
                                    ResultSet rs=ps1.executeQuery();
                            %>
                                              
                        
            <div class="col-xs-4">
                <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">To Do List
                                <div class="pull-right">
                                    <a href="#" style="color:#fff"><i class="fa fa-"></i></a>
                                    <a href="#" data-toggle="dropdown" class="dropdown-toggle" style="color:#fff"><i class="fa fa-edit"></i></a>
                                </div>   
                            </h3>
                        </div>
                        <div class="panel-body">
                            <ul class="fa-ul">
                                <%  while(rs.next())  {    
                                        if(!rs.getString(3).equalsIgnoreCase("Pending"))    {
                                %>          <li><i class="fa-li fa fa-check-square-o"></i><%=rs.getString(2)%></li>
                                <%      }
                                        else    {
                                %>          <li><i class="fa-li fa fa-square-o"></i><%=rs.getString(2)%></li>
                                <%      }   %>
                            </ul>
                                <%      }   %>
                        </div>
                    </div>
            </div>
                            
        </div>
     
                        <%
                                    con.close();
                                }
                            catch(Exception e)
                                {
                                    e.printStackTrace();
                                }
                            
                        %>
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