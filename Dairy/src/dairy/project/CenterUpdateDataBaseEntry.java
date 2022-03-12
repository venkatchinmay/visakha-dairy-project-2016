package dairy.project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AprilProcurimentDatabaseEntry
 */
public class CenterUpdateDataBaseEntry extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
// GET CONFORMED PARAMETERS FROM Aprilprocuriment1check.jsp //
		
		HttpSession s=request.getSession();
		String x1=(String)s.getAttribute("cname1");
		String x2=(String)s.getAttribute("cname2");
		String x3=(String)s.getAttribute("cname3");
		String x4=(String)s.getAttribute("cname4");
		String x5=(String)s.getAttribute("cname5");
		String x6=(String)s.getAttribute("cname6");
		String x7=(String)s.getAttribute("cname7");
		String x8=(String)s.getAttribute("cname8");
		String x9=(String)s.getAttribute("cname9");
		
		
		String driver = "com.mysql.jdbc.Driver";
	    String url    = "jdbc:mysql://localhost/visakhadairy";
	    String username = "root";
	    String password = "root";
//******************************************************************************************************//
	    Connection con = null;
	    PreparedStatement prest = null;
	    ResultSet result = null;
	    Statement st = null;
	    int row = 0;
	    
//****************STEP:2 DRIVER INSTALLED******************************************//
	   try{
	    
			Class.forName(driver);
//*******************STEP:3 ESTABLISH CONNECTION TO THE DRIVER*******************************//
			con = DriverManager.getConnection(url,username,password);
			System.out.println("CONNECTION FROM THE DATA BASE IS ESTABLISHED");
			
			System.out.println(x5);
			
			
			
			//*************************************************VERIFICATION OF CENTER NAME************************************************************************** 
			
			    		   
			    		   prest = con.prepareStatement("UPDATE  center_details SET CENTERNAME = ?, BANKNAME = ?, JOINTACCOUNTNUMBER = ?,BANKLOCATION =?,PS = ?,HELPER1 = ?,HELPER2 = ?,HELPER3 = ?,EQUIPMENTDETAILS = ? WHERE CENTERNAME = ?");
				   			prest.setString(1, x1);
				   			prest.setString(2, x2);
				   			prest.setString(3, x3);
				   			prest.setString(4, x4);
				   			prest.setString(5, x5);
				   			prest.setString(6, x6);
				   			prest.setString(7, x7);
				   			prest.setString(8, x8);
				   			prest.setString(9, x9);
				   			prest.setString(10, x1);
				   			
				   			
				   			prest.executeUpdate();
				   			System.out.println("data successfully UPDATED");
				   			
				   			//**********************************************************//
				   		//**********************************************************//
				   			
				   			
											   			
			
			// set CENTER NAME TO NEXT SESSION //
			HttpSession s1=request.getSession();
			s1.setAttribute("cname3",x1);
			
			// RE DIRECTING THIS PAGE TO Successfulenter2.jsp //
			
			 RequestDispatcher rd2 = request.getRequestDispatcher("Successfulenter3.jsp");
	          rd2.forward(request, response);
			    		   
			    		   
			    		   //****************************************************************************//
			    		 
			    	  
			    	   
				
			    	   
			    	   
				// GENERATION OF ERROR PAGE IF CENTER NOT YET REGISTERED in commitee
		          
		         
		
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

}//P

}// S
