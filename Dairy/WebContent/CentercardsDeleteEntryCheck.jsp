<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CENTER DETAILS DELETE CHECKING PANEL</title>
<link rel="stylesheet" type="text/css" href="entry.css"/>
</head>
<body background="images123.jpg">
<div id=”header”><img src="logo.jpg"alt="source"/>
<p style="color:yellow;font-size:15pt;font-weight:bold;">VISAKHA DAIRY</p>
</div>
<div id ="navigation"><a href="Developer.html" style="text-decoration:none;color:white">About Developer</a></div>
<div id="body">
<form name = "myform"  action = "CentercardsDeleteDatabaseEntry" method = "post">
<div style="margin-top:20pt;margin-bottom:20pt"><font face="Agency FB" size="+8" 
><u style="color:#006400;position:relative;left:330px;">CENTER DETAILS DELETING PANEL</u></font></div>
<div style="color:brown;position:relative;left:500px;font-family:calibri;font-style:italic;text-decoration: underline;">Time of the Account login is</div>
<div  id= "demo" style="color:blue;position:relative;left:450px;font-family:TimesNewRoman;font-style:italic;margin-top:10pt;margin-bottom:10pt">
<script type="text/javascript">document.getElementById("demo").innerHTML=Date();</script>
</div>
<% 

// GET THOSE TRACKED PARAMETERS FROM CENTERDATACHECK.JAVA FILE //

HttpSession s1=request.getSession();
String Y1=(String)s1.getAttribute("cname1");




%>  
<div class="n" align="center"">
<table align="center" border="0" cellpadding="4" cellspacing="6">
<tr>
<th colspan="3" style="position:relative;left:120px;">DELETE CENTER DATA FROM CARDS</th>
</tr>
<tr>
<th colspan="3" style="position:relative;left:120px;">ENTER CENTER DATA REQUIRED TO DELETE</th>
</tr>

<tr>
<th style="position:relative;left:100px">CENTER NAME </th>
<th  colspan="2" style="position:relative;left:100px;text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y1 %> </th>
</tr>
</table>     
</div>

<div><a href="Cardsdelete.html"><input style="float:left;clear:left;position:relative;left:200px;margin:15px" type="button" value="Modify Center Name"/></a>

<%// TRACK THESE PARAMETERS TO NEXT SESSION

HttpSession s2=request.getSession();
s1.setAttribute("cname1", Y1);

 %>


<input style="float:left;position:relative;left:500px;margin:15px" type="submit" onclick="return confirm('Make Sure That Above Mentioned Details Are Correct Once you submitted it will NOT BE MODIFIED')" name="pay fee" value="Delete Center Details Successfully" />
</div>
</form>
</div>
<div id = footer>copyright@visakhaDairy</div>


</body>
</html>