<%@page contentType="text/html"%>


<!-- Include in page all the necessary libraries for extracting XML data from feed -->
<%@page import="java.net.URL"%>
<%@page import="javax.xml.parsers.DocumentBuilder"%>
<%@page import="javax.xml.parsers.DocumentBuilderFactory"%>
<%@page import="org.w3c.dom.CharacterData"%>
<%@page import="org.w3c.dom.Document"%>
<%@page import="org.w3c.dom.Element"%>
<%@page import="org.w3c.dom.Node"%>
<%@page import="org.w3c.dom.NodeList"%>
<%@page import="java.lang.*"%>

<html>

<head>

<title>RSS JSP </title>
<style>
    #feedControl {

       width : 580px;

       height : 220px;

       padding: 8px 10px;

}

.gfg-title {

       font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;

       font-size: 1.7em;

       color:#666;

       margin: -5px;

}

.gf-title {

       font-family:"Courier New", Courier, monospace;

       font-size: 1em;

       font-weight: 500;

       color: #900;

}

.gf-list {

       font-family: Verdana, Geneva, sans-serif;

       font-size: .85em;

       margin-top: 5px;

       color: #555;

       margin-bottom: 6px;

}

.gf-relativePublishedDate {

       font-weight:bold;

}

.gf-snippet {

       font-family: Verdana, Geneva, sans-serif;

       margin-bottom: 15px;

       color: #555;

       font-size: 1em;

       line-height: 1.3em;

}
</style>


<script src="http://www.google.com/jsapi" type="text/javascript"></script>

<script src="http://www.google.com/uds/solutions/dynamicfeed/gfdynamicfeedcontrol.js" type="text/javascript"></script>

</head>

<body>
    <div id="feedControl"><p>Loading...</p></div>
    <div id="feedControlTwo"><p>Loading...</p></div>
    <script type="text/javascript">

  function loadFeedControl() {

    var feed1  = "http://www.npr.org/rss/rss.php?id=1004",
        feed2  = "http://news.google.com/news?pz=1&cf=all&ned=uk&hl=en&q=iPhone5&cf=all&output=rss";

        
    var fg = new GFdynamicFeedControl(feed1, "feedControl");
    var fg = new GFdynamicFeedControl(feed2, "feedControlTwo");

  }

  /**

   * Use google.load() to load the AJAX Feeds API

   * Use google.setOnLoadCallback() to call loadFeedControl once the page loads

   */

  google.load("feeds", "1");

  google.setOnLoadCallback(loadFeedControl);

</script>
</body>
</html>