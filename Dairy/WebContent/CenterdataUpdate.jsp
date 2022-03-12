<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.sql.Connection,java.sql.DriverManager" %>
     <%@ page import= "java.sql.PreparedStatement,java.sql.ResultSet" %>
      <%@ page import= "java.sql.SQLException,java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CENTER DATA UPDATE2</title>

</head>
<body>

<%
ArrayList a1 = new ArrayList();
ArrayList a2 = new ArrayList();
ArrayList a3 = new ArrayList();
ArrayList a4 = new ArrayList();

String  param12  = request.getParameter("bulkcoolingcenter");
String  param2 = request.getParameter("centercode");
String  param3 = request.getParameter("centername");
String  param4  = request.getParameter("mpimpac");
String  param5  =  request.getParameter("lfno");

String param6 = param3.toUpperCase();
String param1 = param12.toUpperCase();

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


	
	 prest = con.prepareStatement("select CENTERNAME FROM center_details ");
		
		result = prest.executeQuery();
		System.out.println(" ANNUM Querie Successfully Executed");

		
			while(result.next()) {
				System.out.println("helloworld");
			 String s1 = result.getString("CENTERNAME");
			 a1.add(s1);
			}
			
			
			a2.add(param6);
			
			System.out.println("output"+param6);
			
			a1.retainAll(a2);
			
			System.out.println("output"+a1);
			
			System.out.println("h"+a1.size());
			
			if(a1.size()!=0){
				
				prest = con.prepareStatement("UPDATE  center_details SET BCC = ?, CENTERCODE = ?, CENTERNAME = ?,MPIORMPAC =?,LFNUMBER = ? WHERE CENTERNAME = ?");
                prest.setString(1,  param1);
                prest.setString(2,  param2);
                prest.setString(3,  param6);
                prest.setString(4,  param4);
                prest.setString(5,  param5);
                prest.setString(6,  param6);
                 prest.executeUpdate();

       System.out.println("data updated successfully");				   			 
				   			
prest = con.prepareStatement("UPDATE  center_details SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");	

prest = con.prepareStatement("UPDATE  a_procuriment SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");	

prest = con.prepareStatement("UPDATE  m_procuriment SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");	

prest = con.prepareStatement("UPDATE  ju_procuriment SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");	

prest = con.prepareStatement("UPDATE  jul_procuriment SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");	

prest = con.prepareStatement("UPDATE  au_procuriment SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");	

prest = con.prepareStatement("UPDATE  s_procuriment SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");	

prest = con.prepareStatement("UPDATE  o_procuriment SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");	

prest = con.prepareStatement("UPDATE  n_procuriment SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");	

prest = con.prepareStatement("UPDATE  d_procuriment SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");	

prest = con.prepareStatement("UPDATE  jan_procuriment SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");	

prest = con.prepareStatement("UPDATE  f_procuriment SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");

prest = con.prepareStatement("UPDATE  mar_procuriment SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");

prest = con.prepareStatement("UPDATE  a_withhelppriseexp SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");	

prest = con.prepareStatement("UPDATE  m_withhelppriseexp SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");	

prest = con.prepareStatement("UPDATE  ju_withhelppriseexp SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");	

prest = con.prepareStatement("UPDATE  jul_withhelppriseexp SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");	

prest = con.prepareStatement("UPDATE  au_withhelppriseexp SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");	

prest = con.prepareStatement("UPDATE  s_withhelppriseexp SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");	

prest = con.prepareStatement("UPDATE  o_withhelppriseexp SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");	

prest = con.prepareStatement("UPDATE  n_withhelppriseexp SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");	

prest = con.prepareStatement("UPDATE  d_withhelppriseexp SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");	

prest = con.prepareStatement("UPDATE  jan_withhelppriseexp SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");	

prest = con.prepareStatement("UPDATE  f_withhelppriseexp SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");

prest = con.prepareStatement("UPDATE  mar_withhelppriseexp SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");

prest = con.prepareStatement("UPDATE  withhelp_ter1 SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");

prest = con.prepareStatement("UPDATE  withhelp_ter2 SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");

prest = con.prepareStatement("UPDATE  withhelp_ter3 SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");

prest = con.prepareStatement("UPDATE  withhelp_ter4 SET BCC = ?, CENTERCODE = ?, CENTERNAME = ? WHERE CENTERNAME = ?");
prest.setString(1,  param1);
prest.setString(2,  param2);
prest.setString(3,  param6);
prest.setString(4,  param6);
prest.executeUpdate();
System.out.println("data updated successfully");
				   			
			// set CENTER NAME TO NEXT SESSION //
			HttpSession s10=request.getSession();
			s10.setAttribute("cname3",param6);
			
			
			
			 RequestDispatcher rd2 = request.getRequestDispatcher("Successfulenter3.jsp");
	          rd2.forward(request, response);
	          
			
					  %>

		
			<% 
			}
			
			else {
				RequestDispatcher rd1 = request.getRequestDispatcher("Error10.jsp");
		          rd1.forward(request, response);
			}
					 
	}catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}%>
	
				
			
			
   



</body>
</html>