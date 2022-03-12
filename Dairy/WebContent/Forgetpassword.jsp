<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import= "java.sql.Connection,java.sql.DriverManager" %>
     <%@ page import= "java.sql.PreparedStatement,java.sql.ResultSet" %>
      <%@ page import= "java.sql.SQLException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PASSWORD RECOVERY</title>
<link rel="stylesheet" type="text/css" href="entry.css"/>
</head>
<body background="images123.jpg">
<div id=”header”><img src="logo.jpg"alt="source"/>
<p style="color:yellow;font-size:15pt;font-weight:bold;">VISAKHA DAIRY</p>
</div>
<div id ="navigation"><a href="Developer.html" style="text-decoration:none;color:white">About Developer</a></div>
<div id="body">

<div style="margin-top:20pt;margin-bottom:20pt"><font face="Agency FB" size="+8" 
><u style="color:#006400;position:relative;left:370px;">USER NAME AND PASSWORD RECOVERY</u></font></div>
<div style="color:brown;position:relative;left:570px;font-family:calibri;font-style:italic;text-decoration: underline;">Time of the Account login is</div>
<div  id= "demo" style="color:blue;position:relative;left:470px;font-family:TimesNewRoman;font-style:italic;margin-top:10pt;margin-bottom:10pt">
<script type="text/javascript">document.getElementById("demo").innerHTML=Date();</script>
</div>
<% 
	String driver = "com.mysql.jdbc.Driver";
    String url    = "jdbc:mysql://localhost/visakhadairy";
    String username = "root";
    String password = "root";
//******************************************************************************************************//
         Connection con = null;
	    PreparedStatement prest = null;
	    ResultSet result = null;
	   try{
	    
			Class.forName(driver);
//*******************STEP:3 ESTABLISH CONNECTION TO THE DRIVER*******************************//
			con = DriverManager.getConnection(url,username,password);
			System.out.println("CONNECTION FROM THE DATA BASE IS ESTABLISHED");
			////////////////////////////////////////////////////
			prest = con.prepareStatement("SELECT * from login_details WHERE USERNAME ='ADMINISTRATOR'");
				
				
				result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) {
						String s1 = result.getString("USERNAME");
						 String s2 = result.getString("PASSWORDS");
						
					
					 
					 
					 System.out.println("Username"+s1);
					 System.out.println("password"+s2);
					 
					 
					  %>
<p align = "center" style = "color:#000080"><legend>USERNAME:<b><%= s1 %></b></legend></p>
<p align = "center" style = "color:#A52A2A "><legend>PASSWORD:<b><%= s2 %></b></legend></p>
 <%
					}
					 
	}catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}%>

</div>
<p style="text-align:center"><a href="loginpage.html"><input type="button" value="LOGIN IN TO ACCOUNT" style="background-color:green;
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
	display:inline-block;" /></a></p><br/>
<div id = footer>copyright@visakhaDairy</div>


</body>
</html>