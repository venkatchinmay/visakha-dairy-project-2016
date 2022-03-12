package dairy.project;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ChangePasswordManagement
 */
public class ChangepasswordMaintanence extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String  param11  = request.getParameter("username");// HTML PARAMETERS
         String  param12 = request.getParameter("oldpassword");
         String  param13  = request.getParameter("newpassword");
			String  param14 = request.getParameter("conformpassword");
//********************************************************************************************************//
			        String url = "jdbc:mysql://localhost/visakhadairy";
     			String driver = "com.mysql.jdbc.Driver";
     			String username = "root";
     			String password = "root";
     
     			Connection connect = null;
     			PreparedStatement prest = null;
     			ResultSet result = null;
     		
     			
     		//********STEP:2 iNITIALISE THE DRIVER ************************//
     			try {
     				           Class.forName(driver);
     		//**************** STEP:3 GET CONNECTION FOR THE DRIVER*************//
     				          connect = DriverManager.getConnection(url,username,password);
     				           System.out.println("DATABASE CONNECTED");
     		//***************************************************************************
     				           prest = connect.prepareStatement("SELECT * from login_details  WHERE USERNAME = ?");
     				          prest.setString(1, param11);
     							
     						result = prest.executeQuery();
     						
     			
     							while(result.next()) {
     							 String s1 = result.getString("USERNAME");
     	                          String s4 = result.getString("PASSWORDS");
     							 
     							System.out.println("Password"+s4);
  if(param12.equals(s4))
     {
     	 if(param13.equals(param14))
     	 {
     		try{
     		
     	
     		 prest = connect.prepareStatement("UPDATE login_details set PASSWORDS = ? where USERNAME = ? ");
     							prest.setString(1, param13);
     							prest.setString(2, param11);
     							prest.executeUpdate();
     							System.out.println("password successfully updated");
     							RequestDispatcher rd1 = request.getRequestDispatcher("Conformationpassword.jsp");
     					          rd1.forward(request, response);
     					      } catch (SQLException e) {
					
					e.printStackTrace();
				}
     	 }
     	 else 
     	 {
     		 PrintWriter out = response.getWriter();
			      out.print("<html><body><div style='background-color:#FFC0CB;color:#FF0000;position:relative;left:0px;width:100%;height:3cm;margin-top:2cm;margin-bottom:2cm;text-align: center;padding-top:1cm;padding-bottom:1cm;font-size:30pt;text-transform:uppercase;'> YOUR NEW PASSWORD AND CONFORMATION PASSWORD MUST BE SAME </div></body></html>");
				       RequestDispatcher rd1 = request.getRequestDispatcher("Changepassword.html");
				          rd1.include(request, response);
     	 }
}
     else 
     {
     	PrintWriter out = response.getWriter();
		      out.print("<html><body><div style='background-color:#FFC0CB;color:#FF0000;position:relative;left:0px;width:100%;height:3cm;margin-top:2cm;margin-bottom:2cm;text-align: center;padding-top:1cm;padding-bottom:1cm;font-size:30pt;text-transform:uppercase;'> PLEASE ENTER OLD PASSWORD CORRECTLY</div></body></html>");
			       RequestDispatcher rd2 = request.getRequestDispatcher("Changepassword.html");
			          rd2.include(request, response);
     }
}	
     						
     							} catch (ClassNotFoundException e) {
     								// TODO Auto-generated catch block
     								e.printStackTrace();
     							} catch (SQLException e) {
     								// TODO Auto-generated catch block
     								e.printStackTrace();
     							} finally{
     								try {
     									prest.close();
     								} catch (SQLException e) {
     									// TODO Auto-generated catch block
     									e.printStackTrace();
     								}
     								try {
     									connect.close();
     								} catch (SQLException e) {
     									// TODO Auto-generated catch block
     									e.printStackTrace();
     								}
     							}
	}

}
