<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "java.sql.Connection,java.sql.DriverManager" %>
     <%@ page import= "java.sql.PreparedStatement,java.sql.ResultSet" %>
      <%@ page import= "java.sql.SQLException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%
String driver = "com.mysql.jdbc.Driver";
String url    = "jdbc:mysql://localhost/visakhadairy";
String username = "root";
String password = "root";
//******************************************************************************************************//
Connection con = null;
PreparedStatement prest = null;

System.out.println("enter in to delete");


//****************STEP:2 DRIVER INSTALLED******************************************//
try{

	Class.forName(driver);
//*******************STEP:3 ESTABLISH CONNECTION TO THE DRIVER*******************************//
	con = DriverManager.getConnection(url,username,password);
	System.out.println("CONNECTION FROM THE DATA BASE IS ESTABLISHED");


prest = con.prepareStatement("DELETE  FROM a_procuriment" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM a_withhelppriseexp" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM au_procuriment" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM au_withhelppriseexp" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM bcc_procuriment" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM cards" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM cattle_i" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM center_details" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM claim_i" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM commitee" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM d_procuriment" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM d_withhelppriseexp" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM directors" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM f_procuriment" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM f_withhelppriseexp" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM jan_procuriment" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM jan_withhelppriseexp" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM ju_procuriment" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM ju_withhelppriseexp" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM jul_procuriment" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM jul_withhelppriseexp" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM m_procuriment" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM m_withhelppriseexp" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM mar_procuriment" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM mar_withhelppriseexp" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM n_procuriment" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM n_withhelppriseexp" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM o_procuriment" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM o_withhelppriseexp" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM s_procuriment" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM s_withhelppriseexp" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM sukhclaim_i" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM withhelp_ter1" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM withhelp_ter2" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM withhelp_ter3" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM withhelp_ter4" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM center_profitdetails" );
prest.executeUpdate();
prest = con.prepareStatement("DELETE  FROM fd_details" );
prest.executeUpdate();

	
	 RequestDispatcher rd2 = request.getRequestDispatcher("Successfuldelete4.jsp");
      rd2.forward(request, response);
	    		   

}catch (ClassNotFoundException e) {
// TODO Auto-generated catch block
e.printStackTrace();
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();

} catch (Exception e) {
// TODO Auto-generated catch block
e.printStackTrace();
}

%>
</body>
</html>