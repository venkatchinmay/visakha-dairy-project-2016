<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.sql.Connection,java.sql.DriverManager" %>
     <%@ page import= "java.sql.PreparedStatement,java.sql.ResultSet" %>
      <%@ page import= "java.sql.SQLException,java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SUKHIBHAVA CLAIMS INNER DELETION</title>

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
String x2=(String)R1.getAttribute("cname2");
String p = request.getParameter("person");
System.out.println("PARA"+x1);
System.out.println("PARA"+x2);
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

            prest = con.prepareStatement("select SUCL_DATE_OF_ENTRY FROM sukhclaim_i");
           result = prest.executeQuery();
	System.out.println(" Querie Successfully Executed");
	
	//****************

	
	while(result.next()) {
		System.out.println("helloworld");
	 String s1 = result.getString("SUCL_DATE_OF_ENTRY");
	 a2.add(s1);
	}
	

	//***********************************************************//
	
	 prest = con.prepareStatement("select CENTERNAME FROM sukhclaim_i ");
		
		result = prest.executeQuery();
		System.out.println(" ANNUM Querie Successfully Executed");

		
			while(result.next()) {
				System.out.println("helloworld");
			 String s1 = result.getString("CENTERNAME");
			 a1.add(s1);
			}
			
			 prest = con.prepareStatement("select SUCL_GENERALNUMBER FROM sukhclaim_i ");
				
				result = prest.executeQuery();
				System.out.println(" ANNUM Querie Successfully Executed");
		
				
					while(result.next()) {
						System.out.println("helloworld");
					 String s1 = result.getString("SUCL_GENERALNUMBER");
					 a3.add(s1);
					}	
			System.out.println(a2.size());
			
			String [] resulted1 = new String	[a1.size()];
			resulted1 = (String[]) a1.toArray(resulted1);
			String [] resulted2 = new String	[a2.size()];
			resulted2 = (String[]) a2.toArray(resulted2);
			String [] resulted3 = new String	[a3.size()];
			resulted3 = (String[]) a3.toArray(resulted3);
			
			for(int i=0;i<resulted1.length; i++){
				 
				String k = resulted1[i]+resulted2[i]+resulted3[i];
				
				System.out.println(k);
				 
				a4.add(k);
			}
			
			String l= x1+x2+p;
			a5.add(l);
			
			System.out.println("output"+l);
			
			a4.retainAll(a5);
			
			System.out.println("output"+a4);
			
			System.out.println("h"+a4.size());
			
			if(a4.size()!=0){
				
				prest = con.prepareStatement("DELETE  FROM sukhclaim_i WHERE CENTERNAME=? AND SUCL_DATE_OF_ENTRY = ? AND SUCL_GENERALNUMBER=?");
                prest.setString(1, x1);
                prest.setString(2, x2);
                prest.setString(3, p);
                 prest.executeUpdate();

       System.out.println("data deleted successfully");				   			
				   			
				   			
				   			
			// set CENTER NAME TO NEXT SESSION //
			HttpSession s10=request.getSession();
			s10.setAttribute("cname3",x1);
			s10.setAttribute("cname4",x2);
			s10.setAttribute("cname5",p);
			
			
			
			 RequestDispatcher rd2 = request.getRequestDispatcher("Successfuldelete3.jsp");
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