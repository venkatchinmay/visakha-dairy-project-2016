<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.sql.Connection,java.sql.DriverManager" %>
     <%@ page import= "java.sql.PreparedStatement,java.sql.ResultSet" %>
      <%@ page import= "java.sql.SQLException" %>
      <%@ page import= "java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WITH HELP PRICE PROCUREMENT REPORTS GENERATION PANEL</title>
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
String k1="0";
String k2="0";
String k3="0";
String k4="0";
String k5="0";
String k6="0";
String k7="0";
String k8="0";
String k9="0";
String k10="0";
String k11="0";
String k12="0";
String k13="0";
String k14="0";
String k15="0";
float u1 =0;
float u2 =0;
float u3 =0;
float u4 =0;
float u5 =0;
float u6 =0;
float u7 =0;
float u8 =0;
float u9 =0;
float u10 =0;
float u11 =0;
float u12 =0;
float u13 =0;
float u14 =0;
float u15 =0;
float u16 =0;
float u17 =0;
float u18 =0;

ArrayList a1 = new ArrayList();
ArrayList a2 = new ArrayList();
ArrayList a3 = new ArrayList();
ArrayList a4 = new ArrayList();
ArrayList a5 = new ArrayList();
ArrayList a6 = new ArrayList();
ArrayList a7 = new ArrayList();
ArrayList a8 = new ArrayList();
ArrayList a9 = new ArrayList();
ArrayList a10 = new ArrayList();
ArrayList a11 = new ArrayList();
ArrayList a12 = new ArrayList();
ArrayList a13 = new ArrayList();
ArrayList a14 = new ArrayList();
ArrayList a15 = new ArrayList();

%>
<p style="color:black;font-family:calibri;font-weight:bold;">BCC : <%=Y1 %></p>

<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">CENTER WISE ANALYSIS(ANNUM REPORT) OF WITH HELP PRICE DATA</div><br/>
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th rowspan="2">BCC</th>
<th rowspan="2">CENTER CODE</th>
<th rowspan="2">CENTER NAME</th>
<th colspan="6">APRIL TO SEPTEMBER</th>
<th colspan="6">OCTOBER TO MARCH</th>
<th colspan="6">OVERALL YEAR</th>
</tr>
<tr bgcolor="yellow">
<th>TOTAL WHP EXPENDITURE AMOUNT</th>
<th>TOTAL ERUVAKA</th>
<th>TOTAL PNP</th>
<th>TOTAL OTHERS</th>
<th>TOTAL OTHER EXPENDITURE AMOUNT (ERUVAKA + PNP + OTHERS)</th>
<th>TOTAL OF TOTAL WHP EXPENDITURE AMOUNT</th>
<th>TOTAL WHP EXPENDITURE AMOUNT</th>
<th>TOTAL ERUVAKA</th>
<th>TOTAL PNP</th>
<th>TOTAL OTHERS</th>
<th>TOTAL OTHER EXPENDITURE AMOUNT (ERUVAKA + PNP + OTHERS)</th>
<th>TOTAL OF TOTAL WHP EXPENDITURE AMOUNT</th>
<th>ANNUM WHP EXPENDITURE AMOUNT</th>
<th>ANNUM ERUVAKA</th>
<th>ANNUM PNP</th>
<th>ANNUM OTHERS</th>
<th>ANNUM OTHER EXPENDITURE AMOUNT (ERUVAKA + PNP + OTHERS)</th>
<th>ANNUM TOTAL WHP EXPENDITURE AMOUNT</th>
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
			prest = con.prepareStatement("SELECT A.BCC,A.CENTERCODE,A.CENTERNAME FROM a_procuriment A WHERE A.BCC=?");
			prest.setString(1, Y1);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) {
						 k1 = result.getString("BCC");
						  k2 = result.getString("CENTERCODE");
					      k3 = result.getString("CENTERNAME");
					 System.out.println("Username"+k1);
					 System.out.println("password"+k2);
					 System.out.println("Username"+k3);
					 
					 a1.add(k1);
					 a2.add(k2);
					 a3.add(k3);
		%>		
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
			
<%	
try{

		    prest = con.prepareStatement("SELECT A.A_AMOUNT+B.M_AMOUNT+C.JU_AMOUNT+D.JUL_AMOUNT+E.AU_AMOUNT+F.S_AMOUNT TOTALAMOUNTWHP FROM a_withhelppriseexp A,m_withhelppriseexp B,ju_withhelppriseexp C,jul_withhelppriseexp D,au_withhelppriseexp E,s_withhelppriseexp F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_withhelppriseexp WHERE BCC=?)");


			prest.setString(1, Y1);	
			
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k4 = result.getString("TOTALAMOUNTWHP");
		 
		 
		 a4.add(k4);
		 %>			 
		   
		 
<%
}
%>
					
         
<%		 
		    prest = con.prepareStatement("SELECT A.A_ERUVAKA+B.M_ERUVAKA+C.JU_ERUVAKA+D.JUL_ERUVAKA+E.AU_ERUVAKA+F.S_ERUVAKA TOTALERUVAKAWHP FROM a_withhelppriseexp A,m_withhelppriseexp B,ju_withhelppriseexp C,jul_withhelppriseexp D,au_withhelppriseexp E,s_withhelppriseexp F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_withhelppriseexp WHERE BCC=?)");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k5 = result.getString("TOTALERUVAKAWHP");
		 
		 
		 a5.add(k5);
		 %>			 
		   
		 
<%
}
%>

<%		 
		    prest = con.prepareStatement("SELECT A.A_PNP+B.M_PNP+C.JU_PNP+D.JUL_PNP+E.AU_PNP+F.S_PNP TOTALPNPWHP FROM a_withhelppriseexp A,m_withhelppriseexp B,ju_withhelppriseexp C,jul_withhelppriseexp D,au_withhelppriseexp E,s_withhelppriseexp F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_withhelppriseexp WHERE BCC=?)");
			prest.setString(1, Y1);		
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k6 = result.getString("TOTALPNPWHP");
		 a6.add(k6); 
		 %>			 
		  
		 
<%
}
%>

<%		 
		    prest = con.prepareStatement("SELECT A.A_OTHER+B.M_OTHER+C.JU_OTHER+D.JUL_OTHER+E.AU_OTHER+F.S_OTHER TOTALOTHERWHP FROM a_withhelppriseexp A,m_withhelppriseexp B,ju_withhelppriseexp C,jul_withhelppriseexp D,au_withhelppriseexp E,s_withhelppriseexp F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_withhelppriseexp WHERE BCC=?)");
			prest.setString(1, Y1);		
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k7 = result.getString("TOTALOTHERWHP");
		 a7.add(k7); 
		 %>			 
		  
		 
<%
}
%>
					
<%		 
		    prest = con.prepareStatement("SELECT A.A_EXPAMOUNT+B.M_EXPAMOUNT+C.JU_EXPAMOUNT+D.JUL_EXPAMOUNT+E.AU_EXPAMOUNT+F.S_EXPAMOUNT TOTALEXPAMOUNTWHP FROM a_withhelppriseexp A,m_withhelppriseexp B,ju_withhelppriseexp C,jul_withhelppriseexp D,au_withhelppriseexp E,s_withhelppriseexp F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_withhelppriseexp WHERE BCC=?)");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k8 = result.getString("TOTALEXPAMOUNTWHP");
		  
		 a8.add(k8); 
		 
		 %>			 
					  
					 
 <%
	}
		%>
<%		 
		    prest = con.prepareStatement("SELECT A.A_TOTALAMOUNT+B.M_TOTALAMOUNT+C.JU_TOTALAMOUNT+D.JUL_TOTALAMOUNT+E.AU_TOTALAMOUNT+F.S_TOTALAMOUNT TOTALTOTALAMOUNT FROM a_withhelppriseexp A,m_withhelppriseexp B,ju_withhelppriseexp C,jul_withhelppriseexp D,au_withhelppriseexp E,s_withhelppriseexp F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_withhelppriseexp WHERE BCC=?)");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k9 = result.getString("TOTALTOTALAMOUNT");
		 
		 a9.add(k9); 
		 
		 %>			 
		  
		 
<%
}
%>
					
<%		 
		    prest = con.prepareStatement("SELECT G.O_AMOUNT+H.N_AMOUNT+I.D_AMOUNT+J.JAN_AMOUNT+K.F_AMOUNT+L.MAR_AMOUNT TOTALAMOUNTWHP2 FROM o_withhelppriseexp G,n_withhelppriseexp H,d_withhelppriseexp I,jan_withhelppriseexp J,f_withhelppriseexp K,mar_withhelppriseexp L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM o_withhelppriseexp WHERE BCC=?)");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k10 = result.getString("TOTALAMOUNTWHP2");
		     
		     a10.add(k10);
					} 
		 %>	
		 <%		 
		    prest = con.prepareStatement("SELECT G.O_ERUVAKA+H.N_ERUVAKA+I.D_ERUVAKA+J.JAN_ERUVAKA+K.F_ERUVAKA+L.MAR_ERUVAKA TOTALERUVAKAWHP2 FROM o_withhelppriseexp G,n_withhelppriseexp H,d_withhelppriseexp I,jan_withhelppriseexp J,f_withhelppriseexp K,mar_withhelppriseexp L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM o_withhelppriseexp WHERE BCC=?)");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k11 = result.getString("TOTALERUVAKAWHP2");
		 
		 
		 a11.add(k11);
		 %>			 
		   
		 
<%
}
%>
<%		 
		    prest = con.prepareStatement("SELECT G.O_PNP+H.N_PNP+I.D_PNP+J.JAN_PNP+K.F_PNP+L.MAR_PNP TOTALPNPWHP2 FROM o_withhelppriseexp G,n_withhelppriseexp H,d_withhelppriseexp I,jan_withhelppriseexp J,f_withhelppriseexp K,mar_withhelppriseexp L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM o_withhelppriseexp WHERE BCC=?)");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k12 = result.getString("TOTALPNPWHP2");
		 
		 
		 a12.add(k12);
		 %>			 
		   
		 
<%
}
%>
<%		 
		    prest = con.prepareStatement("SELECT G.O_OTHER+H.N_OTHER+I.D_OTHER+J.JAN_OTHER+K.F_OTHER+L.MAR_OTHER TOTALOTHERWHP2 FROM o_withhelppriseexp G,n_withhelppriseexp H,d_withhelppriseexp I,jan_withhelppriseexp J,f_withhelppriseexp K,mar_withhelppriseexp L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM o_withhelppriseexp WHERE BCC=?)");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k13 = result.getString("TOTALOTHERWHP2");
		 
		 
		 a13.add(k13);
		 %>			 
		   
		 
<%
}
%>
<%		 
		    prest = con.prepareStatement("SELECT G.O_EXPAMOUNT+H.N_EXPAMOUNT+I.D_EXPAMOUNT+J.JAN_EXPAMOUNT+K.F_EXPAMOUNT+L.MAR_EXPAMOUNT TOTALEXPAMOUNTWHP2 FROM o_withhelppriseexp G,n_withhelppriseexp H,d_withhelppriseexp I,jan_withhelppriseexp J,f_withhelppriseexp K,mar_withhelppriseexp L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM o_withhelppriseexp WHERE BCC=?)");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k14 = result.getString("TOTALEXPAMOUNTWHP2");
		 
		 
		 a14.add(k14);
		 %>			 
		   
		 
<%
}
%>
<%		 
		    prest = con.prepareStatement("SELECT G.O_TOTALAMOUNT+H.N_TOTALAMOUNT+I.D_TOTALAMOUNT+J.JAN_TOTALAMOUNT+K.F_TOTALAMOUNT+L.MAR_TOTALAMOUNT TOTALTOTALAMOUNTWHP2 FROM o_withhelppriseexp G,n_withhelppriseexp H,d_withhelppriseexp I,jan_withhelppriseexp J,f_withhelppriseexp K,mar_withhelppriseexp L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM o_withhelppriseexp WHERE BCC=?);");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k15 = result.getString("TOTALTOTALAMOUNTWHP2");
		 
		 
		 a15.add(k15);
		 %>			 
		   
		 
<%
}
%>

<% 								 
}catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>		
	

<% 
System.out.println("1"+a1.size());
System.out.println("2"+a2.size());
System.out.println("3"+a3.size());
System.out.println("4"+a4.size());
System.out.println("5"+a5.size());
System.out.println("6"+a6.size());
System.out.println("7"+a7.size());
System.out.println("8"+a8.size());
System.out.println("9"+a9.size());
System.out.println("10"+a10.size());
System.out.println("11"+a11.size());
System.out.println("12"+a12.size());
System.out.println("13"+a13.size());
System.out.println("14"+a14.size());
System.out.println("15"+a15.size());


String [] resulted1 = new String	[a1.size()];
resulted1 = (String[]) a1.toArray(resulted1);
String [] resulted2 = new String	[a2.size()];
resulted2 = (String[]) a2.toArray(resulted2);
String [] resulted3 = new String	[a3.size()];
resulted3 = (String[]) a3.toArray(resulted3);
String [] resulted4 = new String	[a4.size()];
resulted4 = (String[]) a4.toArray(resulted4);
String [] resulted5 = new String	[a5.size()];
resulted5 = (String[]) a5.toArray(resulted5);
String [] resulted6 = new String	[a6.size()];
resulted6 = (String[]) a6.toArray(resulted6);
String [] resulted7 = new String	[a7.size()];
resulted7 = (String[]) a7.toArray(resulted7);
String [] resulted8 = new String	[a8.size()];
resulted8 = (String[]) a8.toArray(resulted8);
String [] resulted9 = new String	[a9.size()];
resulted9 = (String[]) a9.toArray(resulted9);
String [] resulted10 = new String	[a10.size()];
resulted10 = (String[]) a10.toArray(resulted10);
String [] resulted11 = new String	[a11.size()];
resulted11 = (String[]) a11.toArray(resulted11);
String [] resulted12 = new String	[a12.size()];
resulted12 = (String[]) a12.toArray(resulted12);
String [] resulted13 = new String	[a13.size()];
resulted13 = (String[]) a13.toArray(resulted13);
String [] resulted14 = new String	[a14.size()];
resulted14 = (String[]) a14.toArray(resulted14);
String [] resulted15 = new String	[a15.size()];
resulted15 = (String[]) a15.toArray(resulted15);





for (int i = 0; i< resulted1.length;i++ ){
	
	String t1 = resulted1[i];
	String t2 = resulted2[i];
	String t3 = resulted3[i];
	String t4 = resulted4[i];
	String t5 = resulted5[i];
	String t6 = resulted6[i];
	String t7 = resulted7[i];
	String t8 = resulted8[i];
	System.out.println("8"+t8);
	String t9 = resulted9[i];
	String t10 = resulted10[i];
	String t11 = resulted11[i];
	String t12 = resulted12[i];
	String t13 = resulted13[i];
	String t14 = resulted14[i];
	String t15 = resulted15[i];
	      u1= Float.parseFloat(t4);
	      u2 = Float.parseFloat(t5);
          u3 = Float.parseFloat(t6); 
	      u4 = Float.parseFloat(t7);
	      u5 = Float.parseFloat(t8); 
	      u6 = Float.parseFloat(t9);
	      u7= Float.parseFloat(t10);
	      u8 = Float.parseFloat(t11);
          u9 = Float.parseFloat(t12); 
	      u10 = Float.parseFloat(t13);
	      u11 = Float.parseFloat(t14); 
	      u12 = Float.parseFloat(t15);
	      u13 = u1+u7;
		   u14 = u2+u8;
		   u15 = u3+u9;
		   u16 = u4+u10;
		   u17 = u5+u11;
		   u18 = u6+u12;
		   
		   String t16 = String.valueOf(u13);
		   String t17 = String.valueOf(u14);
		   String t18= String.valueOf(u15);
		   String t19 = String.valueOf(u16);
		   String t20 = String.valueOf(u17);
		   String t21= String.valueOf(u18);
	
	
	%>	
	
	<tr>
<th><%=t1 %></th>
<th><%=t2 %></th>
<th><%=t3 %></th>
<th><%=t4 %></th>
<th><%=t5 %></th>
<th><%=t6 %></th>
<th><%=t7 %></th>
<th><%=t8 %></th>
<th><%=t9 %></th>
<th><%=t10 %></th>
<th><%=t11 %></th>
<th><%=t12 %></th>
<th><%=t13 %></th>
<th><%=t14 %></th>
<th><%=t15 %></th>
<th><%=t16 %></th>
<th><%=t17 %></th>
<th><%=t18 %></th>
<th><%=t19 %></th>
<th><%=t20 %></th>
<th><%=t21 %></th>

</tr>
<%
}
%>

</table>	




<hr>
<div align="center" style="color:black;font-size:15pt;font-weight:bold;font-family: calibri">copyright@visakhadairy</div>

<p align="center"><button onclick="window.print()">PrintReceipt</button></p>
</body>
</html>