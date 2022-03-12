<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.sql.Connection,java.sql.DriverManager" %>
     <%@ page import= "java.sql.PreparedStatement,java.sql.ResultSet" %>
      <%@ page import= "java.sql.SQLException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WITH HELP PRICE REPORTS GENERATION PANEL</title>
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
<th colspan="6">APRIL</th>
<th colspan="6">MAY</th>
<th colspan="6">JUNE</th>
<th colspan="6">JULY</th>
<th colspan="6">AUGUST</th>
<th colspan="6">SEPTEMBER</th>
</tr>

<tr bgcolor="yellow">
<th>WHP EXPENDITURE AMOUNT</th>
<th>ERUVAKA</th>
<th>PNP</th>
<th>OTHERS</th>
<th>OTHER EXPENDITURE AMOUNT (ERUVAKA + PNP + OTHERS)</th>
<th>TOTAL WHP EXPENDITURE AMOUNT </th>
<th>WHP EXPENDITURE AMOUNT</th>
<th>ERUVAKA</th>
<th>PNP</th>
<th>OTHERS</th>
<th>OTHER EXPENDITURE AMOUNT (ERUVAKA + PNP + OTHERS)</th>
<th>TOTAL WHP EXPENDITURE AMOUNT </th>
<th>WHP EXPENDITURE AMOUNT</th>
<th>ERUVAKA</th>
<th>PNP</th>
<th>OTHERS</th>
<th>OTHER EXPENDITURE AMOUNT (ERUVAKA + PNP + OTHERS)</th>
<th>TOTAL WHP EXPENDITURE AMOUNT </th>
<th>WHP EXPENDITURE AMOUNT</th>
<th>ERUVAKA</th>
<th>PNP</th>
<th>OTHERS</th>
<th>OTHER EXPENDITURE AMOUNT (ERUVAKA + PNP + OTHERS)</th>
<th>TOTAL WHP EXPENDITURE AMOUNT </th>
<th>WHP EXPENDITURE AMOUNT</th>
<th>ERUVAKA</th>
<th>PNP</th>
<th>OTHERS</th>
<th>OTHER EXPENDITURE AMOUNT (ERUVAKA + PNP + OTHERS)</th>
<th>TOTAL WHP EXPENDITURE AMOUNT </th>
<th>WHP EXPENDITURE AMOUNT</th>
<th>ERUVAKA</th>
<th>PNP</th>
<th>OTHERS</th>
<th>OTHER EXPENDITURE AMOUNT (ERUVAKA + PNP + OTHERS)</th>
<th>TOTAL WHP EXPENDITURE AMOUNT </th>
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
			prest = con.prepareStatement("SELECT A.BCC,A.CENTERCODE,A.CENTERNAME,A.A_AMOUNT,A.A_ERUVAKA,A.A_PNP,A.A_OTHER,A.A_EXPAMOUNT,A.A_TOTALAMOUNT,B.M_AMOUNT,B.M_ERUVAKA,B.M_PNP,B.M_OTHER,B.M_EXPAMOUNT,B.M_TOTALAMOUNT,C.JU_AMOUNT,C.JU_ERUVAKA,C.JU_PNP,C.JU_OTHER,C.JU_EXPAMOUNT,C.JU_TOTALAMOUNT,D.JUL_AMOUNT,D.JUL_ERUVAKA,D.JUL_PNP,D.JUL_OTHER,D.JUL_EXPAMOUNT,D.JUL_TOTALAMOUNT,E.AU_AMOUNT,E.AU_ERUVAKA,E.AU_PNP,E.AU_OTHER,E.AU_EXPAMOUNT,E.AU_TOTALAMOUNT,F.S_AMOUNT,F.S_ERUVAKA,F.S_PNP,F.S_OTHER,F.S_EXPAMOUNT,F.S_TOTALAMOUNT FROM a_withhelppriseexp A,m_withhelppriseexp B,ju_withhelppriseexp C,jul_withhelppriseexp D,au_withhelppriseexp E,s_withhelppriseexp F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_withhelppriseexp WHERE BCC=?)");

			prest.setString(1, Y1);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) {
						 String k1 = result.getString("BCC");
						 String k2 = result.getString("CENTERCODE");
						 String k3 = result.getString("CENTERNAME");
						 String k4 = result.getString("A_AMOUNT");
						 String k5 = result.getString("A_ERUVAKA");
						 String k6 = result.getString("A_PNP");
						 String k7 = result.getString("A_OTHER");
						 String k8 = result.getString("A_EXPAMOUNT");
						 String k9 = result.getString("A_TOTALAMOUNT");
						 String k10 = result.getString("M_AMOUNT");
						 String k11 = result.getString("M_ERUVAKA");
						 String k12 = result.getString("M_PNP");
						 String k13 = result.getString("M_OTHER");
						 String k14 = result.getString("M_EXPAMOUNT");
						 String k15 = result.getString("M_TOTALAMOUNT");
						 String k16 = result.getString("JU_AMOUNT");
						 String k17 = result.getString("JU_ERUVAKA");
						 String k18 = result.getString("JU_PNP");
						 String k19 = result.getString("JU_OTHER");
						 String k20 = result.getString("JU_EXPAMOUNT");
						 String k21 = result.getString("JU_TOTALAMOUNT");
						 String k22 = result.getString("JUL_AMOUNT");
						 String k23= result.getString("JUL_ERUVAKA");
						 String k24 = result.getString("JUL_PNP");
						 String k25 = result.getString("JUL_OTHER");
						 String k26= result.getString("JUL_EXPAMOUNT");
						 String k27 = result.getString("JUL_TOTALAMOUNT");
						 String k28 = result.getString("AU_AMOUNT");
						 String k29 = result.getString("AU_ERUVAKA");
						 String k30 = result.getString("AU_PNP");
						 String k31 = result.getString("AU_OTHER");
						 String k32 = result.getString("AU_EXPAMOUNT");
						 String k33 = result.getString("AU_TOTALAMOUNT");
						 String k34 = result.getString("S_AMOUNT");
						 String k35 = result.getString("S_ERUVAKA");
						 String k36 = result.getString("S_PNP");
						 String k37 = result.getString("S_OTHER");
						 String k38 = result.getString("S_EXPAMOUNT");
						 String k39 = result.getString("S_TOTALAMOUNT");						 
						 
						 
						 
					 
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
<th><%= k22 %></th>
<th><%= k23 %></th>
<th><%= k24 %></th>
<th><%= k25 %></th>
<th><%= k26 %></th>
<th><%= k27 %></th>
<th><%= k28 %></th>
<th><%= k29 %></th>
<th><%= k30 %></th>
<th><%= k31 %></th>
<th><%= k32 %></th>
<th><%= k33 %></th>
<th><%= k34 %></th>
<th><%= k35 %></th>
<th><%= k36 %></th>
<th><%= k37 %></th>
<th><%= k38 %></th>
<th><%= k39 %></th>
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