<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.sql.Connection,java.sql.DriverManager" %>
     <%@ page import= "java.sql.PreparedStatement,java.sql.ResultSet" %>
      <%@ page import= "java.sql.SQLException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CENTER PROCUREMENT REPORTS GENERATION PANEL</title>
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
<p style="color:black;font-family:calibri;font-weight:bold;">BCC : <%=Y1 %></p>
<p style="color:black;font-family:calibri;font-weight:bold;">APRIL TO SEPTEMBER ANALYSIS</p>
<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">REPORT OF CENTER PROCUREMENT LIST IN BCC</div><br/>
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th rowspan="2">BCC</th>
<th rowspan="2">CENTER CODE</th>
<th rowspan="2">CENTER NAME</th>
<th colspan="3">APRIL</th>
<th colspan="3">MAY</th>
<th colspan="3">JUNE</th>
<th colspan="3">JULY</th>
<th colspan="3">AUGUST</th>
<th colspan="3">SEPTEMBER</th>
</tr>

<tr bgcolor="yellow">
<th>B.M AVERAGE</th>
<th>C.M AVERAGE</th>
<th>TOTAL AVERAGE</th>
<th>B.M AVERAGE</th>
<th>C.M AVERAGE</th>
<th>TOTAL AVERAGE</th>
<th>B.M AVERAGE</th>
<th>C.M AVERAGE</th>
<th>TOTAL AVERAGE</th>
<th>B.M AVERAGE</th>
<th>C.M AVERAGE</th>
<th>TOTAL AVERAGE</th>
<th>B.M AVERAGE</th>
<th>C.M AVERAGE</th>
<th>TOTAL AVERAGE</th>
<th>B.M AVERAGE</th>
<th>C.M AVERAGE</th>
<th>TOTAL AVERAGE</th>
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
			prest = con.prepareStatement("SELECT A.BCC,A.CENTERCODE,A.CENTERNAME,A.A_BM_AVERAGE,A.A_CM_AVERAGE,A.A_TOTAL_AVERAGE,B.M_BM_AVERAGE,B.M_CM_AVERAGE,B.M_TOTAL_AVERAGE,C.JU_BM_AVERAGE,C.JU_CM_AVERAGE,C.JU_TOTAL_AVERAGE,D.JUL_BM_AVERAGE,D.JUL_CM_AVERAGE,D.JUL_TOTAL_AVERAGE,E.AU_BM_AVERAGE,E.AU_CM_AVERAGE,E.AU_TOTAL_AVERAGE,F.S_BM_AVERAGE,F.S_CM_AVERAGE,F.S_TOTAL_AVERAGE FROM a_procuriment A,m_procuriment B,ju_procuriment C,jul_procuriment D,au_procuriment E,s_procuriment F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_procuriment WHERE BCC= ?)");

			prest.setString(1, Y1);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) {
						String k1 = result.getString("BCC");
						 String k2 = result.getString("CENTERCODE");
						 String k3 = result.getString("CENTERNAME");
						 String k4 = result.getString("A_BM_AVERAGE");
						 String k5 = result.getString("A_CM_AVERAGE");
						 String k6 = result.getString("A_TOTAL_AVERAGE");
						 String k7 = result.getString("M_BM_AVERAGE");
						 String k8 = result.getString("M_CM_AVERAGE");
						 String k9 = result.getString("M_TOTAL_AVERAGE");
						 String k10 = result.getString("JU_BM_AVERAGE");
						 String k11 = result.getString("JU_CM_AVERAGE");
						 String k12 = result.getString("JU_TOTAL_AVERAGE");
						 String k13 = result.getString("JUL_BM_AVERAGE");
						 String k14 = result.getString("JUL_CM_AVERAGE");
						 String k15 = result.getString("JUL_TOTAL_AVERAGE");
						 String k16 = result.getString("AU_BM_AVERAGE");
						 String k17 = result.getString("AU_CM_AVERAGE");
						 String k18 = result.getString("AU_TOTAL_AVERAGE");
						 String k19 = result.getString("S_BM_AVERAGE");
						 String k20 = result.getString("S_CM_AVERAGE");
						 String k21 = result.getString("S_TOTAL_AVERAGE");
						 
					 
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
<th><%= k14 %></th>
<th><%= k15 %></th>
<th><%= k16 %></th>
<th><%= k17 %></th>
<th><%= k18 %></th>
<th><%= k19 %></th>
<th><%= k20 %></th>
<th><%= k21 %></th>
</tr>					  

 <%
					}
					 
	}catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
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