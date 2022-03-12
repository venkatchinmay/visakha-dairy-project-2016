<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>ERROR ENTRY PAGE</title>
<link rel="stylesheet" type="text/css" href="entry.css"/>
</head>
<body background="images123.jpg">
<%
// GET CENTER NAME //
HttpSession s=request.getSession();
String t=(String)s.getAttribute("cname3"); %>

<div id=”header”><img src="logo.jpg"alt="source"/>
<p style="color:yellow;font-size:15pt;font-weight:bold;">VISAKHA DAIRY</p>
</div>
<div id ="navigation"><a href="Developer.html" style="text-decoration:none;color:white">About Developer</a></div>
<div id="body">
<div style=" background-color:#FFC0CB;color:#FF0000;width:100%;height:3cm;margin-top:2cm;margin-bottom:2cm;text-align: center;padding-top:1cm;padding-bottom:1cm;font-size:30pt;text-transform:uppercase;">YOUR ENTERED CENTER NAME IS NOT IN DATABASE PLEASE CHECK YOUR CENTER NAME</div>
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