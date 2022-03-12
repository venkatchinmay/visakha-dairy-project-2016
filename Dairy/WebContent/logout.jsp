<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= " java.io.PrintWriter;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGOUT PAGE</title>
</head>
<script type="text/javascript">
function disablebackbutton(){
	window.history.forward();
}
setTimeout("disablebackbutton()", 0);
</script>
<body background="bg5.jpg" onload="disablebackbutton();">
<%

session.invalidate();

%>
<div style=" background-color:#8B4513;color:white;width:100%;height:3cm;margin-top:2cm;margin-bottom:2cm;padding-top:1cm;padding-bottom:1cm;text-align:center;font-size:70pt;text-transform:uppercase;font-weight:bold; "><img src="logo.jpg"alt="source" style="vertical-align:middle;padding-left:12pt;position:absolute;left:120px"/>visakha dairy</div>

<p style="text-align:center"><a href="logout1.jsp"><input type="button" value="LOGOUT FROM ACCOUNT" style="background-color:red;
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

</body>
</html>