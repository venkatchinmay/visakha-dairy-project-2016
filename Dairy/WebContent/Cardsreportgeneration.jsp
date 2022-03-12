<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.sql.Connection,java.sql.DriverManager" %>
     <%@ page import= "java.sql.PreparedStatement,java.sql.ResultSet" %>
      <%@ page import= "java.sql.SQLException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CARDS RECEIPTS GENERATION PANEL</title>
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
String Y1=(String)s1.getAttribute("cname1");

%>
<p style="color:black;font-family:calibri;font-weight:bold;">BCC : <%=Y1 %></p>

<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;"> LIST OF CARDS DETAILS</div><br/>
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th>BCC</th>
<th>CENTERCODE</th>
<th>CENTERNAME</th>
<th>NUMBER OF SB CARDS</th>
<th>SB CARDS AMOUNT</th>
<th>NO.AABY INSURANCE HOLDERS</th>
<th>AABY AMOUNT</th>
<th>TOTAL CARDS(SBCARDS+AABYINSURANCE HOLDERS)</th>
<th>TOTAL AMOUNT(SBCARDS+AABYINSURANCE HOLDERS)</th>
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
			prest = con.prepareStatement("SELECT * FROM cards  WHERE BCC= ? ORDER BY BCC");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) {
					 String k1 = result.getString("BCC");
					 String k2 = result.getString("CENTERCODE");
					 String k3 = result.getString("CENTERNAME");
					 String k4 = result.getString("NUMBER_OF_SB_CARDS");
					 String k5 = result.getString("SB_CARDS_AMOUNT");
					 String k6 = result.getString("AABY_INSURANCE_HOLDERS");
					 String k7 = result.getString("AABY_AMOUNT");
					 String k8 = result.getString("TOTAL_CARDS");
					 String k9 = result.getString("TOTAL_AMOUNT");
					 
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
<p style="color:black;font-family:calibri;font-weight:bold;">BCC : <%=Y1 %></p>

<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">AGGREGATE TOTAL CARDS/INSURANCES OF THE PARTICULAR BCC</div><br/>	
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th>OVERALLBCC</th>
<th>TOTAL SB CARDS </th>
<th>TOTAL AABY INSURANCE HOLDERS </th>
<th>TOTAL (AABY INSURANCE HOLDERS + SB CARDS)</th>
</tr>
<tr>
<th>CARDS</th>		
<%	
try{

		    prest = con.prepareStatement("SELECT SUM(NUMBER_OF_SB_CARDS)TOTAL_CARDS FROM cards  WHERE BCC= ?  ORDER BY BCC");
			prest.setString(1, Y1);	
			
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 String h = result.getString("TOTAL_CARDS");
		 
		
					%>
					
         <th><%= h %></th>
<%
					}
		%>

<%		 
		    prest = con.prepareStatement("SELECT SUM(AABY_INSURANCE_HOLDERS)TOTAL_AABY FROM cards WHERE BCC= ? ORDER BY BCC");
			prest.setString(1, Y1);	
			
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 String h = result.getString("TOTAL_AABY");
		 
		
					%>
					
              <th><%= h %></th>
<%
					}
		%>

<%		 
		    prest = con.prepareStatement("SELECT SUM(TOTAL_CARDS)TOTAL_BOTH FROM cards  WHERE BCC= ? ORDER BY BCC");
			prest.setString(1, Y1);	
			
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 String h = result.getString("TOTAL_BOTH");
		
		
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
</table><br/>

<hr>

<p style="color:black;font-family:calibri;font-weight:bold;">BCC : <%=Y1 %></p>

<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">AGGREGATE TOTAL AMOUNTS (CARDS/INSURANCES) OF THE PARTICULAR BCC</div><br/>	
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th>OVERALLBCC</th>
<th>TOTAL SB CARDS AMOUNT </th>
<th>TOTAL AABY INSURANCE HOLDERS AMOUNT </th>
<th>TOTAL AMOUNT (AABY INSURANCE HOLDERS + SB CARDS)</th>
</tr>
<tr>
<th>AMOUNT</th>		
<%	
try{

		    prest = con.prepareStatement("SELECT SUM(SB_CARDS_AMOUNT)TOTAL_CARDS_AMOUNT FROM cards  WHERE BCC= ? ORDER BY BCC");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 String h = result.getString("TOTAL_CARDS_AMOUNT");
		 
		
					%>
					
         <th><%= h %></th>
<%
					}
		%>

<%		 
		    prest = con.prepareStatement("SELECT SUM(AABY_AMOUNT)TOTAL_AABY_AMOUNT FROM cards WHERE BCC= ? ORDER BY BCC");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 String h = result.getString("TOTAL_AABY_AMOUNT");
		 
		
					%>
					
              <th><%= h %></th>
<%
					}
		%>

<%		 
		    prest = con.prepareStatement("SELECT SUM(TOTAL_AMOUNT)TOTAL_AMOUNT FROM cards WHERE BCC= ? ORDER BY BCC");
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

</table><br/>

<hr>
<div align="center" style="color:black;font-size:15pt;font-weight:bold;font-family: calibri">copyright@visakhadairy</div>

<p align="center"><button onclick="window.print()">PrintReceipt</button></p>
</body>
</html>