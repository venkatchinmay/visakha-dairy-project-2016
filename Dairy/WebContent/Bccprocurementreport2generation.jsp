<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.sql.Connection,java.sql.DriverManager" %>
     <%@ page import= "java.sql.PreparedStatement,java.sql.ResultSet" %>
      <%@ page import= "java.sql.SQLException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BCC PROCURIMENT RECEIPTS GENERATION PANEL</title>
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
String Y2=(String)s1.getAttribute("cname2");
%>
<p style="color:black;font-family:calibri;font-weight:bold;">BCC : <%=Y1 %></p>
<p style="color:black;font-family:calibri;font-weight:bold;">ENTRY MONTH : <%=Y2 %></p>
<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">MONTHLY LIST OF BCC PROCUREMENT DETAILS</div><br/>
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th>BCC</th>
<th>B.M AVERAGE</th>
<th>C.M AVERAGE</th>
<th>TOTAL AVERAGE</th>
<th>MONTH</th>
<th>DATE OF ENTRY</th>
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
			prest = con.prepareStatement("SELECT BCC,BCC_BM_AVERAGE,BCC_CM_AVERAGE,BCC_TOTAL_AVERAGE,BCC_ENTRYMONTH,BCC_ENTRYDATE FROM bcc_procuriment WHERE BCC= ? AND BCC_ENTRYMONTH= ? ORDER BY BCC");
			prest.setString(1, Y1);	
			prest.setString(2, Y2);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) {
					 String k1 = result.getString("BCC");
					 String k2 = result.getString("BCC_BM_AVERAGE");
					 String k3 = result.getString("BCC_CM_AVERAGE");
					 String k4 = result.getString("BCC_TOTAL_AVERAGE");
					 String k5 = result.getString("BCC_ENTRYMONTH");
					 String k6 = result.getString("BCC_ENTRYDATE");
					 
					 
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
<p style="color:black;font-family:calibri;font-weight:bold;">ENTRY MONTH : <%=Y2 %></p>
<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">AGGREGATE TOTALS OF BCC PROCUREMENT DETAILS ON THE PARTICULAR MONTH</div><br/>	
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">

<th>TOTAL B.M AVERAGE </th>
<th>TOTAL C.M AVERAGE </th>
<th>TOTAL OF TOTAL AVERAGE</th>
</tr>
<tr>
		
<%	
try{

		    prest = con.prepareStatement("SELECT SUM(BCC_BM_AVERAGE)TOTAL_BM_AVERAGE FROM bcc_procuriment  WHERE BCC= ? AND BCC_ENTRYMONTH= ? ORDER BY BCC");
			prest.setString(1, Y1);	
			prest.setString(2, Y2);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 String h = result.getString("TOTAL_BM_AVERAGE");
		 
		
					%>
					
         <th><%= h %></th>
<%
					}
		%>

<%		 
		    prest = con.prepareStatement("SELECT SUM(BCC_CM_AVERAGE)TOTAL_CM_AVERAGE FROM bcc_procuriment WHERE BCC= ? AND BCC_ENTRYMONTH= ? ORDER BY BCC");
			prest.setString(1, Y1);	
			prest.setString(2, Y2);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 String h = result.getString("TOTAL_CM_AVERAGE");
		 
		
					%>
					
              <th><%= h %></th>
<%
					}
		%>

<%		 
		    prest = con.prepareStatement("SELECT SUM(BCC_TOTAL_AVERAGE)TOTAL_AVERAGE FROM bcc_procuriment WHERE BCC= ? AND BCC_ENTRYMONTH= ? ORDER BY BCC");
			prest.setString(1, Y1);	
			prest.setString(2, Y2);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 String h = result.getString("TOTAL_AVERAGE");
		
		
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