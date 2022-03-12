<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CENTER COMMITTE DETAILS UPDATE CHECKING PANEL</title>
<link rel="stylesheet" type="text/css" href="entry.css"/>
</head>
<body background="images123.jpg">
<div id=”header”><img src="logo.jpg"alt="source"/>
<p style="color:yellow;font-size:15pt;font-weight:bold;">VISAKHA DAIRY</p>
</div>
<div id ="navigation"><a href="Developer.html" style="text-decoration:none;color:white">About Developer</a></div>
<div id="body">
<form name = "myform"  action = "CommiteenamesandtermsUpdateDatabaseEntry" method = "post">
<div style="margin-top:20pt;margin-bottom:20pt"><font face="Agency FB" size="+8" 
><u style="color:#006400;position:relative;left:350px;">CENTER COMMITTE DETAILS UPDATE</u></font></div>
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
String Y11=(String)s1.getAttribute("cname11");
String Y12=(String)s1.getAttribute("cname12");
String Y13=(String)s1.getAttribute("cname13");
String Y14=(String)s1.getAttribute("cname14");
String Y15=(String)s1.getAttribute("cname15");
String Y16=(String)s1.getAttribute("cname16");
String Y17=(String)s1.getAttribute("cname17");
String Y18=(String)s1.getAttribute("cname18");
String Y19=(String)s1.getAttribute("cname19");
String Y20=(String)s1.getAttribute("cname20");
String Y21=(String)s1.getAttribute("cname21");
String Y22=(String)s1.getAttribute("cname22");
String Y23=(String)s1.getAttribute("cname23");
String Y24=(String)s1.getAttribute("cname24");
String Y25=(String)s1.getAttribute("cname25");



%>  
<div class="n" align="center"">
<table  border="0" cellpadding="4" cellspacing="6">
<tr>
<th colspan="3">CENTERDETAILS</th>
</tr>
<tr>
<th>BULK COOLING CENTER </th>
<th colspan="2" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y1 %> </th>
</tr>
<tr>
<th>CENTER CODE </th>
<th colspan="2" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y2 %> </th>
</tr>
<tr>
<th>CENTER NAME </th>
<th  colspan="2" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y3 %> </th>
</tr>
<tr>
<th>MPI/MPAC </th>
<th   colspan="2" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y4 %> </th>
</tr>
<tr>
<th colspan="3">COMMITEEDETAILS</th>
</tr>
<tr>
<th>PRESIDENT/GROUPMEMBER </th>
<th colspan="2" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y5 %> </th>
</tr>
<tr style="background-color:yellow">
<th>MEMBER</th>
<th>NAME</th>
<th>DATE OF ENDING TERM</th>
</tr>
<tr>
<th>PRESIDENT/GROUPMEMBER</th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y6 %> </th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y7 %> </th>
</tr>
<tr style="background-color:#00FF7F">
<td colspan="3" align="center">DIRECTORS</td>
</tr>
<tr>
<th>DIRECTOR 1</th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y8 %> </th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y9 %> </th>
</tr>
<tr>
<th>DIRECTOR 2</th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y10 %> </th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y11 %> </th>
</tr>
<tr>
<th>DIRECTOR 3</th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y12 %> </th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y13 %> </th>
</tr>
<tr>
<th>DIRECTOR 4</th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y14 %> </th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y15 %> </th>
</tr>
<tr>
<th>DIRECTOR 5</th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y16 %> </th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y17 %> </th>
</tr>
<tr>
<th>DIRECTOR 6</th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y18 %> </th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y19 %> </th>
</tr>
<tr>
<th>DIRECTOR 7</th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y20 %> </th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y21 %> </th>
</tr>
<tr>
<th>DIRECTOR 8</th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y22 %> </th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y23 %> </th>
</tr>
<tr>
<th>DIRECTOR 9</th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y24 %> </th>
<th align="center" style="text-transform: uppercase;color:black;font-family:times new roman;"><%=  Y25 %> </th>
</tr>

</table>     
</div>

<div><a href="Comittenamesandterms.html"><input style="float:left;clear:left;position:relative;left:200px;margin:15px" type="button" value="Modify COMMITEE Details"/></a>

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
s1.setAttribute("cname10",Y10);
s1.setAttribute("cname11",Y11);
s1.setAttribute("cname12", Y12);
s1.setAttribute("cname13", Y13);
s1.setAttribute("cname14", Y14);
s1.setAttribute("cname15", Y15);
s1.setAttribute("cname16", Y16);
s1.setAttribute("cname17",Y17);
s1.setAttribute("cname18",Y18);
s1.setAttribute("cname19", Y19);
s1.setAttribute("cname20", Y20);
s1.setAttribute("cname21", Y21);
s1.setAttribute("cname22", Y22);
s1.setAttribute("cname23", Y23);
s1.setAttribute("cname24",Y24);
s1.setAttribute("cname25",Y25);

 %>


<input style="float:left;position:relative;left:500px;margin:15px" type="submit" onclick="return confirm('Make Sure That Above Mentioned Details Are Correct Once you submitted it will NOT BE MODIFIED')" name="pay fee" value="UPDATE COMMITEE Details Successfully" />
</div>
</form>
</div>
<div id = footer>copyright@visakhaDairy</div>


</body>
</html>