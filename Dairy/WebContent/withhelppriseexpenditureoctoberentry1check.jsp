<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WITH HELP PRICE EXPENDITURE PANEL CHECK</title>
<link rel="stylesheet" type="text/css" href="entry.css"/>
</head>
<body background="images123.jpg">
<div id=”header”><img src="logo.jpg"alt="source"/>
<p style="color:yellow;font-size:15pt;font-weight:bold;">VISAKHA DAIRY</p>
</div>
<div id ="navigation"><a href="Developer.html" style="text-decoration:none;color:white">About Developer</a></div>
<div id="body">
<form name = "myform"  action = "WithhelppriseexpenditureoctoberDataBaseentry1" method = "post">
<div style="margin-top:20pt;margin-bottom:20pt"><font face="Agency FB" size="+8" 
><u style="color:#006400;position:relative;left:310px;">WITH HELP PRICE EXPENDITURE ENTRY(MONTH WISE)</u></font></div>
<div style="color:brown;position:relative;left:500px;font-family:calibri;font-style:italic;text-decoration: underline;">Time of the Account login is</div>
<div  id= "demo" style="color:blue;position:relative;left:450px;font-family:TimesNewRoman;font-style:italic;margin-top:10pt;margin-bottom:10pt">
<script type="text/javascript">document.getElementById("demo").innerHTML=Date();</script>
</div>
<% 

// GET THOSE TRACKED PARAMETERS FROM CENTERDATACHECK.JAVA FILE //

HttpSession s1=request.getSession();
String Y1=(String)s1.getAttribute("cname1");
String Y2=(String)s1.getAttribute("cname2");
String Y3=(String)s1.getAttribute("cname3");
String Y4=(String)s1.getAttribute("cname4");
String Y5=(String)s1.getAttribute("cname5");
String Y6=(String)s1.getAttribute("cname6");
String Y7=(String)s1.getAttribute("cname7");
String Y8=(String)s1.getAttribute("cname8");
String Y9=(String)s1.getAttribute("cname9");
String Y10=(String)s1.getAttribute("cname10");


%>  
<div style="position:relative;left:50px">
<table width="60%" border="0" cellpadding="4" cellspacing="6">
<tr>
<th colspan="2" class="h">WITH HELP PRISE EXPENDITURE OCTOBER ENTRY </th>
</tr>
<tr>
<th class="n">BULK COOLING CENTER </th>
<th style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y1 %> </th>
</tr>
<tr>
<th class="n">CENTER CODE </th>
<th style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y2 %> </th>
</tr>
<tr>
<th class="n">CENTER NAME </th>
<th style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y3 %> </th>
</tr>
<tr>
<th class="n"> MONTH </th>
<th style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y4 %> </th>
</tr>
<tr>
<th class="n"> AMOUNT </th>
<th style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y5 %> </th>
</tr>
<tr>
<th class="n"> EXTRA EXPENDITURE </th>
</tr>
<tr>
<th class="n">ERUVAKA </th>
<th style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y6 %> </th>
</tr>
<tr>
<th class="n">PNP</th>
<th style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y7 %> </th>
</tr>
<tr>
<th class="n">OTHER</th>
<th style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y8 %> </th>
</tr>
<tr>
<th class="n">EXTRA EXPENDITURE TOTAL</th>
<th style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y9 %> </th>
</tr><tr>
<tr>
<th class="n">TOTAL AMOUNT</th>
<th style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y10 %> </th>
</tr>
</table>     
</div>

<div><a href="withhelppriseexpenditureoctoberentry1.html"><input style="float:left;clear:left;position:relative;left:200px;margin:15px" type="button" value="Modify WITHHELPPRISE Details"/></a>

<%// TRACK THESE PARAMETERS TO NEXT SESSION

HttpSession s2=request.getSession();
s1.setAttribute("cname1", Y1);
s1.setAttribute("cname2", Y2);
s1.setAttribute("cname3",Y3);
s1.setAttribute("cname4",Y4);
s1.setAttribute("cname5", Y5);
s1.setAttribute("cname6", Y6);
s1.setAttribute("cname7", Y7);
s1.setAttribute("cname8", Y8);
s1.setAttribute("cname9", Y9);
s1.setAttribute("cname10", Y10);
 %>


<input style="float:left;position:relative;left:500px;margin:15px" type="submit" onclick="return confirm('Make Sure That Above Mentioned Details Are Correct Once you submitted it will NOT BE MODIFIED')" name="pay fee" value="Enter withhelpprise Details Successfully" />
</div>
</form>
</div>
<div id = footer>copyright@visakhaDairy</div>


</body>
</html>