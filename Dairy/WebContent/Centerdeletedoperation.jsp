<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.sql.Connection,java.sql.DriverManager" %>
     <%@ page import= "java.sql.PreparedStatement,java.sql.ResultSet" %>
      <%@ page import= "java.sql.SQLException,javax.servlet.RequestDispatcher" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>

<% 
HttpSession s=request.getSession();
String x1=(String)s.getAttribute("cname1");


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
			
			  prest = con.prepareStatement("DELETE  FROM center_details WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM a_procuriment WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM m_procuriment WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM ju_procuriment WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM jul_procuriment WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM au_procuriment WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM s_procuriment WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM o_procuriment WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM n_procuriment WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM jan_procuriment WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM f_procuriment WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM mar_procuriment WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM d_procuriment WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM a_withhelppriseexp WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM m_withhelppriseexp WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM ju_withhelppriseexp WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM jul_withhelppriseexp WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM au_withhelppriseexp WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM s_withhelppriseexp WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM o_withhelppriseexp WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM n_withhelppriseexp WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM jan_withhelppriseexp WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM f_withhelppriseexp WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM mar_withhelppriseexp WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM d_withhelppriseexp WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM withhelp_ter1 WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM withhelp_ter2 WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM withhelp_ter3 WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM withhelp_ter4 WHERE CENTERNAME=?");
prest.setString(1, x1);
prest.executeUpdate();
System.out.println("data deleted successfully");				   			
				   			
				   			
				   			
			// set CENTER NAME TO NEXT SESSION //
			HttpSession s1=request.getSession();
			s1.setAttribute("cname3",x1);
			
			// RE DIRECTING THIS PAGE TO Successfulenter2.jsp //
			
			 RequestDispatcher rd2 = request.getRequestDispatcher("Successfuldelete1.jsp");
	          rd2.forward(request, response);
			    		   
	          
			
					  %>

		
			<% 
					 
	}catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}%>
	


</body>
</html>