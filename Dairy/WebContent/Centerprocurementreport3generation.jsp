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
float u1 =0;
float u2 =0;
float u3 =0;
float u4 =0;
float u5 =0;
float u6 =0;
float u7 =0;
float u8 =0;
float u9 =0;

ArrayList a1 = new ArrayList();
ArrayList a2 = new ArrayList();
ArrayList a3 = new ArrayList();
ArrayList a4 = new ArrayList();
ArrayList a5 = new ArrayList();
ArrayList a6 = new ArrayList();
ArrayList a7 = new ArrayList();
ArrayList a8 = new ArrayList();
ArrayList a9 = new ArrayList();

%>
<p style="color:black;font-family:calibri;font-weight:bold;">BCC : <%=Y1 %></p>

<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">CENTER WISE ANALYSIS(ANNUM REPORT) OF CENTER PROCUREMENT</div><br/>
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th rowspan="2">BCC</th>
<th rowspan="2">CENTER CODE</th>
<th rowspan="2">CENTER NAME</th>
<th colspan="3">APRIL TO SEPTEMBER</th>
<th colspan="3">OCTOBER TO MARCH</th>
<th colspan="3">OVERALL YEAR</th>
</tr>
<tr bgcolor="yellow">
<th>TOTAL B.M AVERAGE</th>
<th>TOTAL C.M AVERAGE</th>
<th>TOTAL OF TOTAL AVERAGE</th>
<th>TOTAL B.M AVERAGE</th>
<th>TOTAL C.M AVERAGE</th>
<th>TOTAL OF TOTAL AVERAGE</th>
<th>B.M AVERAGE PER ANNUM</th>
<th>C.M AVERAGE PER ANNUM</th>
<th>TOTAL AVERAGE PER ANNUM</th>
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

		    prest = con.prepareStatement("SELECT A.A_BM_AVERAGE+B.M_BM_AVERAGE+C.JU_BM_AVERAGE+D.JUL_BM_AVERAGE+E.AU_BM_AVERAGE+F.S_BM_AVERAGE TOTALBMAVERAGE FROM a_procuriment A,m_procuriment B,ju_procuriment C,jul_procuriment D,au_procuriment E,s_procuriment F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_procuriment WHERE BCC=?)");

			prest.setString(1, Y1);	
			
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k4 = result.getString("TOTALBMAVERAGE");
		 
		 
		 a4.add(k4);
		 %>			 
		   
		 
<%
}
%>
					
         
<%		 
		    prest = con.prepareStatement("SELECT A.A_CM_AVERAGE+B.M_CM_AVERAGE+C.JU_CM_AVERAGE+D.JUL_CM_AVERAGE+E.AU_CM_AVERAGE+F.S_CM_AVERAGE TOTALCMAVERAGE FROM a_procuriment A,m_procuriment B,ju_procuriment C,jul_procuriment D,au_procuriment E,s_procuriment F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_procuriment WHERE BCC=?)");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k5 = result.getString("TOTALCMAVERAGE");
		 
		 
		 a5.add(k5);
		 %>			 
		   
		 
<%
}
%>

<%		 
		    prest = con.prepareStatement("SELECT A.A_TOTAL_AVERAGE+B.M_TOTAL_AVERAGE+C.JU_TOTAL_AVERAGE+D.JUL_TOTAL_AVERAGE+E.AU_TOTAL_AVERAGE+F.S_TOTAL_AVERAGE TOTALAVERAGE FROM a_procuriment A,m_procuriment B,ju_procuriment C,jul_procuriment D, au_procuriment E,s_procuriment F WHERE A.CENTERNAME= B.CENTERNAME AND B.CENTERNAME= C.CENTERNAME AND C.CENTERNAME= D.CENTERNAME AND D.CENTERNAME= E.CENTERNAME AND E.CENTERNAME= F.CENTERNAME AND F.CENTERNAME = ANY(SELECT CENTERNAME FROM a_procuriment WHERE BCC=?)");
			prest.setString(1, Y1);		
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k6 = result.getString("TOTALAVERAGE");
		 a6.add(k6); 
		 %>			 
		  
		 
<%
}
%>
					
<%		 
		    prest = con.prepareStatement("SELECT G.O_BM_AVERAGE+H.N_BM_AVERAGE+I.D_BM_AVERAGE+J.JAN_BM_AVERAGE+K.F_BM_AVERAGE+L.MAR_BM_AVERAGE TOTALBMAVERAGE2 FROM o_procuriment G,n_procuriment H,d_procuriment I,jan_procuriment J,f_procuriment K,mar_procuriment L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM a_procuriment WHERE BCC=?)");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k7 = result.getString("TOTALBMAVERAGE2");
		  
		 a7.add(k7); 
		 
		 %>			 
					  
					 
 <%
	}
		%>
<%		 
		    prest = con.prepareStatement("SELECT G.O_CM_AVERAGE+H.N_CM_AVERAGE+I.D_CM_AVERAGE+J.JAN_CM_AVERAGE+K.F_CM_AVERAGE+L.MAR_CM_AVERAGE TOTALCMAVERAGE2 FROM o_procuriment G,n_procuriment H,d_procuriment I,jan_procuriment J,f_procuriment K,mar_procuriment L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM a_procuriment WHERE BCC=?)");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k8 = result.getString("TOTALCMAVERAGE2");
		 
		 a8.add(k8); 
		 
		 %>			 
		  
		 
<%
}
%>
					
<%		 
		    prest = con.prepareStatement("SELECT G.O_TOTAL_AVERAGE+H.N_TOTAL_AVERAGE+I.D_TOTAL_AVERAGE+J.JAN_TOTAL_AVERAGE+K.F_TOTAL_AVERAGE+L.MAR_TOTAL_AVERAGE TOTALAVERAGE2 FROM o_procuriment G,n_procuriment H,d_procuriment I,jan_procuriment J,f_procuriment K,mar_procuriment L WHERE G.CENTERNAME= H.CENTERNAME AND H.CENTERNAME= I.CENTERNAME AND I.CENTERNAME= J.CENTERNAME AND J.CENTERNAME= K.CENTERNAME AND K.CENTERNAME= L.CENTERNAME AND L.CENTERNAME = ANY(SELECT CENTERNAME FROM a_procuriment WHERE BCC=?)");
			prest.setString(1, Y1);	
				
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) { 
		 k9 = result.getString("TOTALAVERAGE2");
		 
		  
		       
		   
		      
		     // CONVERT FLOAT VALUE TO STRING 
		     
		    
		     
		     a9.add(k9);
		     
		 %>		
		 
			
			
		 
					<%
}
								 
}catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}%>		
	

<% 
System.out.println("1"+a1.size());
System.out.println("1"+a2.size());
System.out.println("1"+a3.size());
System.out.println("1"+a4.size());
System.out.println("1"+a5.size());
System.out.println("1"+a6.size());
System.out.println("1"+a7.size());
System.out.println("1"+a8.size());
System.out.println("1"+a9.size());

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





for (int i = 0; i< resulted1.length;i++ ){
	
	String t1 = resulted1[i];
	String t2 = resulted2[i];
	String t3 = resulted3[i];
	String t4 = resulted4[i];
	String t5 = resulted5[i];
	String t6 = resulted6[i];
	String t7 = resulted7[i];
	String t8 = resulted8[i];
	String t9 = resulted9[i];
	      u1= Float.parseFloat(t4);
	      u2 = Float.parseFloat(t5);
          u3 = Float.parseFloat(t6); 
	      u4 = Float.parseFloat(t7);
	      u5 = Float.parseFloat(t8); 
	      u6 = Float.parseFloat(t9);
	      u7 = u1+u4;
		   u8 = u2+u5;
		   u9 = u3+u6;
		   String t10 = String.valueOf(u7);
		   String t11 = String.valueOf(u8);
		   String t12= String.valueOf(u9);
	
	
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