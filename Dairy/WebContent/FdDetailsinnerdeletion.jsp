<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.sql.Connection,java.sql.DriverManager" %>
     <%@ page import= "java.sql.PreparedStatement,java.sql.ResultSet" %>
      <%@ page import= "java.sql.SQLException,java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FD DETAILS INNER DELETION</title>

</head>
<body>

<%
ArrayList a1 = new ArrayList();
ArrayList a2 = new ArrayList();
ArrayList a3 = new ArrayList();
ArrayList a5 = new ArrayList();
ArrayList a4 = new ArrayList();


HttpSession R1=request.getSession();
String x1=(String)R1.getAttribute("cname1");

String p = request.getParameter("person");
System.out.println("PARA"+x1);

System.out.println("PARA"+p);

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

            prest = con.prepareStatement("select BONDNUMBER FROM fd_details");
           result = prest.executeQuery();
	System.out.println(" Querie Successfully Executed");
	
	//****************

	
	while(result.next()) {
		System.out.println("helloworld");
	 String s1 = result.getString("BONDNUMBER");
	 a2.add(s1);
	}
	

	//***********************************************************//
	
	 prest = con.prepareStatement("select CENTERNAME FROM fd_details ");
		
		result = prest.executeQuery();
		System.out.println(" ANNUM Querie Successfully Executed");

		
			while(result.next()) {
				System.out.println("helloworld");
			 String s1 = result.getString("CENTERNAME");
			 a1.add(s1);
			}
			
			
			
			String [] resulted1 = new String	[a1.size()];
			resulted1 = (String[]) a1.toArray(resulted1);
			String [] resulted2 = new String	[a2.size()];
			resulted2 = (String[]) a2.toArray(resulted2);
			
			
			for(int i=0;i<resulted1.length; i++){
				 
				String k = resulted1[i]+resulted2[i];
				
				System.out.println(k);
				 
				a3.add(k);
			}
			
			String l= x1+p;
			a4.add(l);
			
			System.out.println("output"+l);
			
			a3.retainAll(a4);
			
			System.out.println("output"+a3);
			
			System.out.println("h"+a3.size());
			
			if(a3.size()!=0){
				
				prest = con.prepareStatement("DELETE  FROM fd_details WHERE CENTERNAME=? AND BONDNUMBER = ? ");
                prest.setString(1, x1);
             
                prest.setString(2, p);
                 prest.executeUpdate();

       System.out.println("data deleted successfully");				   			
				   			
				   			
				   			
			// set CENTER NAME TO NEXT SESSION //
			HttpSession s10=request.getSession();
			s10.setAttribute("cname3",x1);
			s10.setAttribute("cname5",p);
			
			
			
			 RequestDispatcher rd2 = request.getRequestDispatcher("Successfuldelete5.jsp");
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