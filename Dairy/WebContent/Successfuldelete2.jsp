<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>SUCCESSFULLY ENTRY PAGE</title>
<link rel="stylesheet" type="text/css" href="entry.css"/>
</head>
<body background="images123.jpg">
<%
// GET CENTER NAME //
HttpSession s=request.getSession();
String t=(String)s.getAttribute("cname3");
String t1=(String)s.getAttribute("cname4");
String t2=(String)s.getAttribute("cname5");%>

<div id=”header”><img src="logo.jpg"alt="source"/>
<p style="color:yellow;font-size:15pt;font-weight:bold;">VISAKHA DAIRY</p>
</div>
<div id ="navigation"><a href="Developer.html" style="text-decoration:none;color:white">About Developer</a></div>
<div id="body">
<div style=" background-color:#98FB98;color:#228B22;width:100%;height:10cm;margin-top:2cm;margin-bottom:2cm;text-align: center;padding-top:1cm;padding-bottom:1cm;font-size:30pt;text-transform:uppercase;"><p>CENTER NAME :<%= t %></p><p>DATE OF ENTRY :<%= t1 %></p><p> DDNUMBER :<%= t2 %></p><p>SUCCESSFULLY DELETED</p></div>
</div>
<p style="text-align:center"><a href="logout.jsp"><input type="button" value="LOGOUT FROM ACCOUNT" style="background-color:red;
	border:none;
	color:white;
	text-align:center;
	text-decoration:none;
	font-size:16px;
	cursor:pointer;
	border-radius:4px;
	box-sizing:border-box;
	width :27%;
	padding:12px 20px;
	margin:8px 0 ;
	display:inline-block;" onclick="return confirm('ARE YOU SURE YOU WANT TO LOGOUT THE SESSION')"/></a></p><br/>
<div id = footer>copyright@visakhaDairy</div>


</body>
</html>