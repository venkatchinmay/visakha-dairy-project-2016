<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FD DETAILS ENTRY</title>
<link rel="stylesheet" type="text/css" href="entry.css"/>
</head>
<body background="images123.jpg">
<div id=”header”><img src="logo.jpg"alt="source"/>
<p style="color:yellow;font-size:15pt;font-weight:bold;">VISAKHA DAIRY</p>
</div>
<div id ="navigation"><a href="Developer.html" style="text-decoration:none;color:white">About Developer</a></div>
<div id="body">
<form name = "myform"  action = "FdDetailsDataBaseEntry" method = "post">
<div style="margin-top:20pt;margin-bottom:20pt"><font face="Agency FB" size="+8" 
><u style="color:#006400;position:relative;left:600px;">FD DETAILS ENTRY</u></font></div>
<div style="color:brown;position:relative;left:650px;font-family:calibri;font-style:italic;text-decoration: underline;">Time of the Account login is</div>
<div  id= "demo" style="color:blue;position:relative;left:600px;font-family:TimesNewRoman;font-style:italic;margin-top:10pt;margin-bottom:10pt">
<script type="text/javascript">document.getElementById("demo").innerHTML=Date();</script>
</div>
<% 

// GET THOSE TRACKED PARAMETERS FROM CENTERDATACHECK.JAVA FILE //

HttpSession s=request.getSession();
String x1=(String)s.getAttribute("cname1");
String x2=(String)s.getAttribute("cname2");
String x3=(String)s.getAttribute("cname3");
String x4=(String)s.getAttribute("cname4");
String x5=(String)s.getAttribute("cname5");
String x6=(String)s.getAttribute("cname6");
String x7=(String)s.getAttribute("cname7");
String x8=(String)s.getAttribute("cname8");

%>  
<div>
<table border="0" width="60%" align="center" cellpadding="4" cellspacing="6">

<tr>
<th style="text-transform: uppercase;color:#000080;font-family:times new roman;">BULK COOLING CENTER </th>
<th style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  x1 %> </th>
</tr>
<tr>
<th style="text-transform: uppercase;color:#000080;font-family:times new roman;">CENTER CODE </th>
<th style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  x2 %> </th>
</tr>
<tr>
<th style="text-transform: uppercase;color:#000080;font-family:times new roman;">CENTER NAME </th>
<th style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  x3 %> </th>
</tr>
<tr>
<th style="text-transform: uppercase;color:#000080;font-family:times new roman;">BOND NUMBER </th>
<th style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  x4 %> </th>
</tr>
<tr>
<th style="text-transform: uppercase;color:#000080;font-family:times new roman;">BOND VALUE </th>
<th style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  x5 %> </th>
</tr>

<tr>
<th style="text-transform: uppercase;color:#000080;font-family:times new roman;">BOND DATE </th>
<th style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  x6 %> </th>
</tr>
<tr>
<th style="text-transform: uppercase;color:#000080;font-family:times new roman;">MATURE VALUE</th>
<th style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  x7 %> </th>
</tr>
<tr>
<th style="text-transform: uppercase;color:#000080;font-family:times new roman;">MATURE DATE</th>
<th style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  x8 %> </th>
</tr>

</table>     
</div>

<div><a href="FdDetailsEntry.html"><input style="float:left;clear:left;position:relative;left:400px;margin:15px" type="button" value="Modify Center Details"/></a>

<%// TRACK THESE PARAMETERS TO NEXT SESSION

HttpSession s1=request.getSession();
s1.setAttribute("cname1", x1);
s1.setAttribute("cname2", x2);
s1.setAttribute("cname3",x3);
s1.setAttribute("cname4",x4);
s1.setAttribute("cname5", x5);
s1.setAttribute("cname6", x6);
s1.setAttribute("cname7", x7);
s1.setAttribute("cname8", x8);

 %>


<input style="float:left;position:relative;left:700px;margin:15px" type="submit" onclick="return confirm('Make Sure That Above Mentioned Details Are Correct Once you submitted it will NOT BE MODIFIED')" name="pay fee" value="Enter Center Details Successfully" />
</div>
</form>
</div>
<div id = footer>copyright@visakhaDairy</div>


</body>
</html>