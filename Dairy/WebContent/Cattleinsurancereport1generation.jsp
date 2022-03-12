<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.sql.Connection,java.sql.DriverManager" %>
     <%@ page import= "java.sql.PreparedStatement,java.sql.ResultSet" %>
      <%@ page import= "java.sql.SQLException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CATTLE INSURANCE RECEIPTS GENERATION PANEL</title>
</head>
<body>
<div id=”header” align="center"><img src="logo.jpg"alt="source"/>
<p style="color:black;font-size:15pt;font-weight:bold;font-family: calibri">VISAKHA DAIRY REPORTS GENERATING PANEL</p>
<p style="color:black;font-family:TimesNewRoman;font-style:italic;font-weight:bold;">TIME AND DATE OF GENERATING RECEIPT</p>
<p  id= "demo" style="color:black;font-family:calibri;font-style:italic;"> 
<b><script type="text/javascript">document.getElementById("demo").innerHTML=Date();</script></b></p>
</div>
<hr>
<% HttpSession s1=request.getSession();
String Y1=(String)s1.getAttribute("cname1");%>
<p style="color:black;font-family:calibri;font-weight:bold;">DATE OF ENTRY : <%=Y1 %></p>
<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">DAILY LIST OF CATTLE INSURANCE DETAILS</div><br/>
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th>BCC</th>
<th>CENTERCODE</th>
<th>CENTERNAME</th>
<th>NO.OF BUFFALOS</th>
<th>NO.OF COWS</th>
<th>TOTALPREMIUM</th>
<th>BANKNAME</th>
<th>BANKLOCATION</th>
<th>DDNUMBER</th>
<th>DDAMOUNT</th>
<th>DDDATE</th>
<th>DDMONTH</th>
<th>DATEOFENTRY</th>
</tr>
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
			prest = con.prepareStatement("SELECT * FROM cattle_i WHERE CI_DATE_OF_ENTRY= ? ORDER BY BCC");
			prest.setString(1, Y1);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) {
					 String k1 = result.getString("BCC");
					 String k2 = result.getString("CENTERCODE");
					 String k3 = result.getString("CENTERNAME");
					 String k4 = result.getString("CI_BUFFALOS");
					 String k5 = result.getString("CI_COWS");
					 String k6 = result.getString("CI_TOTALPREMIUM");
					 String k7 = result.getString("CI_BANKNA");
					 String k8 = result.getString("CI_BANKLO");
					 String k9 = result.getString("CI_DDNUMBER");
					 String k10 = result.getString("CI_DDAMOUNT");
					 String k11 = result.getString("CI_DDDATE");
					 String k12 = result.getString("CI_DDMONTH");
					 String k13 = result.getString("CI_DATE_OF_ENTRY");
					 
					 
					 System.out.println("Username"+k1);
					 System.out.println("password"+k2);
					 System.out.println("Username"+k3);
					
					 
					  %>
<tr>
<th><%= k1 %></th>
<th><%= k2 %></th>
<th><%= k3 %></th>
<th><%= k4 %></th>
<th><%= k5 %></th>
<th><%= k6 %></th>
<th><%= k7 %></th>
<th><%= k8 %></th>
<th><%= k9 %></th>
<th><%= k10 %></th>
<th><%= k11 %></th>
<th><%= k12 %></th>
<th><%= k13 %></th>
</tr>

 <%
					}
		%>
		
			<% 
					 
	}catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}%>
	
</table>
<br/>	
<hr>	
<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">AGGREGATE TOTALS OF CATTLE INSURANCE DETAILS ON THE PARTICULAR DAY</div><br/>	
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">

<th>TOTAL NUMBER OF BUFFALOS </th>
<th>TOTAL NUMBER OF COWS </th>
<th>TOTAL PREMIUM</th>
<th>TOTAL DD AMOUNT</th>
</tr>
<tr>
		
<%	
try{

		    prest = con.prepareStatement("SELECT SUM(CI_BUFFALOS)TOTAL_BUFFALOS FROM cattle_i WHERE CI_DATE_OF_ENTRY= ? ORDER BY BCC");
			prest.setString(1, Y1);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 String h = result.getString("TOTAL_BUFFALOS");
		 
		
					%>
					
         <th><%= h %></th>
<%
					}
		%>

<%		 
		    prest = con.prepareStatement("SELECT SUM(CI_COWS)TOTAL_COWS FROM cattle_i WHERE CI_DATE_OF_ENTRY=? ORDER BY BCC");
			prest.setString(1, Y1);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 String h = result.getString("TOTAL_COWS");
		 
		
					%>
					
              <th><%= h %></th>
<%
					}
		%>

<%		 
		    prest = con.prepareStatement("SELECT SUM(CI_TOTALPREMIUM)TOTAL_PREMIUM FROM cattle_i WHERE CI_DATE_OF_ENTRY=? ORDER BY BCC");
			prest.setString(1, Y1);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 String h = result.getString("TOTAL_PREMIUM");
		
		
					%>
					
                      <th><%= h %></th>

<%
					}
		%>
<%		 
		    prest = con.prepareStatement("SELECT SUM(CI_DDAMOUNT)TOTAL_AMOUNT FROM cattle_i WHERE CI_DATE_OF_ENTRY=? ORDER BY BCC");
			prest.setString(1, Y1);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 String h = result.getString("TOTAL_AMOUNT");
		
		
					%>
					
                      <th><%= h %></th>

<%
					}
		%>		
	</tr>		
		<% 
					 
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}%>


</table>

<hr>
<div align="center" style="color:black;font-size:15pt;font-weight:bold;font-family: calibri">copyright@visakhadairy</div>

<p align="center"><button onclick="window.print()">PrintReceipt</button></p>
</body>
</html>