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



out.print("<html><body><div style='background-color:#FFC0CB;color:#FF0000;position:relative;left:0px;width:100%;height:3cm;margin-top:2cm;margin-bottom:2cm;text-align: center;padding-top:1cm;padding-bottom:1cm;font-size:30pt;text-transform:uppercase;'> LOGOUT SUCCESSFULLY </div><div style='background-color:#98FB98;color:#228B22;position:relative;left:0px;width:100%;height:3cm;margin-top:2cm;margin-bottom:2cm;text-align: center;padding-top:1cm;padding-bottom:1cm;font-size:30pt;text-transform:uppercase;'><a href='loginpage.html'style='text-decoration:none;color:#228B22;cursor:pointer;'>CLICK HERE TO LOGIN</a></div></body></html>");
     
  out.close();      
        
%>

</body>
</html>