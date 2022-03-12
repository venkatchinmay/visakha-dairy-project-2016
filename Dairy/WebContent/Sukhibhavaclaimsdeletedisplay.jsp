<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.sql.Connection,java.sql.DriverManager" %>
     <%@ page import= "java.sql.PreparedStatement,java.sql.ResultSet" %>
      <%@ page import= "java.sql.SQLException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SUKHIBHAVA CLAIM DELETED PANEL</title>
</head>
<script type="text/javascript">
function call(){
	var person = prompt("PLEASE ENTER GENERAL NUMBER TO DELETE");
	if(person!=null){window.location.replace("sukhibhavaclaimsinnerdeletion.jsp?person="+person);}
}
</script>
<body>
<div id=”header” align="center"><img src="logo.jpg"alt="source"/>
<p style="color:black;font-size:15pt;font-weight:bold;font-family: calibri">VISAKHA DAIRY DELETED PANEL</p>
<p style="color:black;font-family:TimesNewRoman;font-style:italic;font-weight:bold;">TIME AND DATE </p>
<p  id= "demo" style="color:black;font-family:calibri;font-style:italic;"> 
<b><script type="text/javascript">document.getElementById("demo").innerHTML=Date();</script></b></p>
</div>
<hr>
<%HttpSession s1=request.getSession();
String Y1=(String)s1.getAttribute("cname1");
String Y2=(String)s1.getAttribute("cname2");
%>

<div align="center" style="text-decoration:underline;font-size:12pt;font-family:calibri;text-decoration:underline;font-size:12pt;color:black;font-weight:bold;">DAILY LIST OF SUKHIBHAVA CLAIMS DETAILS</div><br/>
<table border="1" bordercolor="black" align="center">
<tr bgcolor="yellow">
<th>BCC</th>
<th>CENTERCODE</th>
<th>CENTERNAME</th>
<th>DEATHMEMBER</th>
<th>GENERALNUMBER</th>
<th>PRODUCERNAME</th>
<th>AMOUNT</th>
<th>DATEOFDEATH</th>
<th>ENTRYMONTH</th>
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
			prest = con.prepareStatement("SELECT * FROM sukhclaim_i WHERE CENTERNAME=? AND SUCL_DATE_OF_ENTRY = ? ORDER BY BCC");
			prest.setString(1, Y1);
            prest.setString(2, Y2);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) {
					 String k1 = result.getString("BCC");
					 String k2 = result.getString("CENTERCODE");
					 String k3 = result.getString("CENTERNAME");
					 String k4 = result.getString("SUCL_DEATHMEMBER");
					 String k5 = result.getString("SUCL_GENERALNUMBER");
					 String k6 = result.getString("SUCL_PRODUCERNAME");
					 String k7 = result.getString("SUCI_AMOUNT");
					 String k8 = result.getString("SUCL_DATEOFDEATH");
					 String k9 = result.getString("SUCL_ENTRYMONTH");
					 String k10 = result.getString("SUCL_DATE_OF_ENTRY");
					 
					 
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
<br/>	
	
<div>
<form name = "myform"  action = "Sukhibhavaclaimsdeletedoperation.jsp" method = "post">

<div><a href="SukhibhavaclaimsDelete.html"><input style="float:left;clear:left;position:relative;left:200px;margin:15px" type="button" value="Modify Center Name"/></a>

<%// TRACK THESE PARAMETERS TO NEXT SESSION

HttpSession s2=request.getSession();
s1.setAttribute("cname1", Y1);
s1.setAttribute("cname2", Y2);

 %>

<input style="float:left;position:relative;left:400px;margin:15px" type="button" onclick="call()" value="DELETE ONLY ONE ROW"/>
<input style="float:left;position:relative;left:500px;margin:15px" type="submit" onclick="return confirm('Make Sure That Above Mentioned Details Are Correct Once you submitted it will NOT BE MODIFIED')" name="pay fee" value="Delete Center Details Successfully" />
</div>
</form>
</div>
</body>
</html>