<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <meta name="author" content="">
    <meta name="description" content="">

    <!-- Bootstrap Core CSS-->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- User CSS-->
    <link href="home_css.css" rel="stylesheet">

    <!-- Jquery JS-->
    <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    <title>SGSITS Indore</title>
    
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300' rel='stylesheet' type='text/css'>
    <link href="css/preview.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/default.css" />
    <script src="js/modernizr.custom.js"></script>
    
	<style type="text/css" media="screen">
    
    .slide-out-div {
        width: 320px;
    }
    </style>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js" type="text/javascript"></script>
    <script src="js/jquery.tabSlideOut.v1.3.js"></script>
         
         <script>
         $(function(){
             $('.slide-out-div').tabSlideOut({
                 tabHandle: '.handle',                              //class of the element that will be your tab
                 pathToTabImage: 'images/login.png',          //path to the image for the tab (optionaly can be set using css)
                 imageHeight: '180px',                               //height of tab image
                 imageWidth: '55px',                               //width of tab image    
                 tabLocation: 'right',                               //side of screen where tab lives, top, right, bottom, or left
                 speed: 300,                                        //speed of animation
                 action: 'click',                                   //options: 'click' or 'hover', action to trigger animation
                 topPos: '200px',                                   //position from the top
                 fixedPosition: true                               //options: true makes it stick(fixed position) on scroll
             });
         });

         </script>

        <script>
            history.forward();
            <% request.getSession().setAttribute("USERID", null); %>
        </script>

</head>

<body style="background-color: #fff">
    
    
    <!-- header section -->
    <div id="header" class="tit">
        <div class="container">
            <div class="row">                
                <div class="col-sm-6 col-md-6 col-lg-8">
                    <div class="media">
                        <a href="#" class="pull-left">
                            <img class="image-circle" src="images/sgsits-logo.png" width="95" height="90" alt="logo">
                        </a>
                        <div class="media-body">
                            <h3 id="title">Department Of Computer Engineering</h3>
                            <h5 id="sub-title">Shri Govindram Seksaria Institute of Technology and Science </h5>
                        </div>  
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- navbar section -->
    <nav role="navigation" class="navbar navbar-inverse navbar-static-top" style="font-family:Palatino Linotype">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="#" class="navbar-brand">About</a>
        </div>
        <!-- Collection of nav links, forms, and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">Courses <b class="caret"></b></a>
                    <ul role="menu" class="dropdown-menu">
                        <li><a href="#">B.E.</a>
                        </li>
                        <li><a href="#">M.E.</a>
                        </li>
                        <li><a href="#">Phd</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="#">MCA</a>
                        </li>
                    </ul>
                </li>
                <li><a href="#">Facilities</a>
                </li>
                <li><a href="#">Research</a>
                </li>
                <li><a href="#">News & Events</a>
                </li>
            </ul>
            <!--form role="search" class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" placeholder="Search" class="form-control">
                </div>
            </form-->
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Students</a>
                </li>
                <li><a href="#">Faculties</a>
                </li>
                <li><a href="#">Alumini</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
      </ol>
      <div class="carousel-inner">
        <div class="item active">
          <img src="images/im.jpg" alt="First slide" width="100%">
          <div class="container">
            <div class="carousel-caption">
              <h1>Example headline.</h1>
              <!--p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p-->
            </div>
          </div>
        </div>
        <div class="item">
          <img src="images/im2.jpg" alt="Second slide" width="100%">
          <div class="container">
            <div class="carousel-caption">
              <h1>Another example headline.</h1>
              <!--p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p-->
            </div>
          </div>
        </div>
        <div class="item">
          <img src="images/im3.jpg" alt="Third slide" width="100%">
          <div class="container">
            <div class="carousel-caption">
              <h1>One more for good measure.</h1>
              <!--p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p-->
            </div>
          </div>
        </div>
          
        <div class="item">
          <img src="images/im4.jpg" alt="Third slide" width="100%">
          <div class="container">
            <div class="carousel-caption">
              <h1>One more for good measure.</h1>
              <!--p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p-->
            </div>
          </div>
        </div>
    
          <div class="item">
          <img src="images/im5.jpg" alt="Third slide" width="100%">
          <div class="container">
            <div class="carousel-caption">
              <h1>One more for good measure.</h1>
              <!--p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p-->
            </div>
          </div>
        </div>
    </div>
      <a class="carousel-control left" href="#myCarousel" data-slide="prev"><span class="icon-prev" ></span></a>
      <a class="carousel-control right" href="#myCarousel" data-slide="next"><span class="icon-next"></span></a>
    </div><!-- /.carousel -->


    
    <!-- Site footer -->
    <div class="bottom">
        <div class="container">
            <div class="col-md-3">
                <h3>Footer section 1</h3>
                <p>Content for the first footer section.</p>
            </div>
            <div class="col-md-3">
                <h3>Footer section 2</h3>
                <p>Content for the second footer section.</p>
            </div>
            <div class="col-md-3">
                <h3>Footer section 3</h3>
                <p>Content for the third footer section.</p>
            </div>
            <div class="col-md-3">
                <h3>Footer section 4</h3>
                <p>Content for the fourth footer section.</p>
            </div>

        </div>
    </div>
    <!-- ./Site Footer -->
    
	<div class="slide-out-div" id="blk">
        <a class="handle" href="http://link-for-non-js-users">Content</a>
            <div class="eternity-form ctn dark">
            <div class="login-form-section">
                <div class="login-content ">
                    <form action="login.jsp" method="post">
                        <div class="section-title">
                            <h3>Login to your Account</h3>
                        </div>
                        <div class="textbox-wrap">
                            <div class="input-group">
                                <span class="input-group-addon "><i class="icon-user icon-color"></i></span>
                                <input type="text" name="userid" required="required" class="form-control" placeholder="Username" />
                            </div>
                        </div>
                        <div class="textbox-wrap">
                            <div class="input-group">
                                <span class="input-group-addon "><i class="icon-key icon-color"></i></span>
                                <input type="password" name="password" required="required" class="form-control " placeholder="Password" />
                            </div>
                        </div>
                        <div class="login-form-action clearfix">
                            <div class="checkbox" id="pos">
                                <div class="custom-checkbox">
                                    <input type="checkbox" checked name="iCheck">
                                </div>
                                <span class="checkbox-text">&nbsp;Remember Me</span>
                            </div>
                            <button type="submit" class="btn btn-success pull-right green-btn">LogIn &nbsp; <i class="icon-chevron-right"></i></button>
                        </div>
                    </form>
                </div>
                <div class="login-form-links link1 " data-animation="fadeInRightBig" data-animation-delay=".2s">
                    <h4 class="blue">Don't have an Account?</h4>
                    <span>No worry</span>
                    <a href="#demo5" class="blue">Click Here</a>
                    <span>to Register</span>
                </div>
                <div class="login-form-links link2 " data-animation="fadeInLeftBig" data-animation-delay=".4s">
                    <h4 class="green">Forget your Password?</h4>
                    <span>Dont worry</span>
                    <a href="#demo6" class="green">Click Here</a>
                    <span>to Get New One</span>
                </div>
            </div>    
        </div>
    </div>
</body>

</html>



<!--

<form class="form-horizontal" action="" method="post">
        <fieldset>
            
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon glyphicon glyphicon-user"></span>
                        <input id="textinput" name="textinput" placeholder="Username" class="form-control" type="text">
                    </div>
                </div>
                
                <div class="form-group" style="padding: 0px 15px">
                    <label class="radio-inline" for="radios-0">
                        <input name="radios" id="radios-0" value="1" checked="checked" type="radio">Student
                    </label>
                    <label class="radio-inline" for="radios-1">
                        <input name="radios" id="radios-1" value="2" type="radio">Faculty
                    </label>
                    <label class="radio-inline" for="radios-2">
                        <input name="radios" id="radios-2" value="3" type="radio">Alumini
                    </label>            
                </div>

                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon glyphicon glyphicon-lock"></span>
                        <input id="textinput" name="textinput" placeholder="Password" class="form-control" type="password">
                    </div>
                </div>
            
                <div class="form-group">
                    <a class="pull-left">&nbsp;&nbsp;&nbsp;Forgot Password ?</a>
                    <button id="button1id" name="button1id" class="btn btn-primary pull-right">Login</button>
                </div>
        </fieldset>
    </form>
-->

<!-- Slide Panel 
    <div id="login">
        <div id="showRightPush" onclick="slide()">
            <p>L<br>O<br>G<br>I<br>N</p>
        </div>
    </div>

    <script>
        var showRightPush=document.getElementById('showRightPush' ),
            count=0;        
            showRightPush.onclick = function() {
			    if(count%2==0)
                {
                    showRightPush.setAttribute("style","right:40px; -webkit-transition: all 1s linear; -ms-transition: all 1s linear; -o-transition: all 1s linear; -moz-transition: all 0.2s linear; -webkit-transform: translateX(-200px); -moz-transform: translateX(-200px); -ms-transform: translateX(-200px); -o-transform: translateX(-200px); transform: translateX(-200px);");
                }
                else
                {
                    showRightPush.setAttribute("style","right:40px; -webkit-transition: all 1s linear; -ms-transition: all 1s linear; -o-transition: all 1s linear; -moz-transition: all 0.2s linear; -webkit-transform: translateX(150px); -moz-transform: translateX(150px); -ms-transform: translateX(150px); -o-transform: translateX(150px); transform: translateX(40px);");
                }
                count++;	
			};    
    </script>
            
<!-- /.Slide Panel -->