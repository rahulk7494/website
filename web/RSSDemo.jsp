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

<title>RSS JSP Example</title>
</head>

<body>
<b>This RSS feed is the www.bbc.co.uk/technology RRS feed. The JSP returns only those items that contain the keyword 'hacker'<br>
<b> or 'malicious' as an example of how we can build an RSS reader that targets specific subjects.</b?><br><br>
    <%
    // declare strings to hold XML description field string to be searched by
    // the subject strings given here as an example e.g 'hacker' and 'malicious'
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

                    out.println("<b>Title: </b>" + getElementValue(element,"title")+ "<br>");
                    out.println("<b>Link: </b><a href='" + getElementValue(element,"link")+ "'>View Page</a><br>");
                    //out.println("<b>Link: </b><a href='" + getElementValue(element,"link")+ "'>"+getElementValue(element,"title")+"</a><br>");
                    out.println("<b>Publish Date: </b>" + getElementValue(element,"pubDate")+ "<br>");
                    //out.println("<b>author: </b>" + getElementValue(element,"dc:creator")+ "<br>");
                    //out.println("<b>comments: </b>" + getElementValue(element,"wfw:comment")+ "<br>");

                    out.println("<b>description: </b>" + desc+ "<br>");
                    out.println("<b>----------------------------------------------------------------------------------------</b>"+ "<br>");
                } //if
                }
            }
        }//for
    }//try
    catch(Exception ex) {
        ex.printStackTrace();
    }
    %>


    <!-- The main code here uses two java functions to break each node into child fields -->
    <%!
    // give this function a parent element (node) and it will break it down into child fields by calling...
    public String getElementValue(Element parent,String label) {
        return getCharacterDataFromElement((Element)parent.getElementsByTagName(label).item(0));
    }
    
    public String addURL() {
        return "";
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