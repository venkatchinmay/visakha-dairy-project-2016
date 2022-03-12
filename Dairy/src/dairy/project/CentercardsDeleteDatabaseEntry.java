package dairy.project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.SQLException;
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
public class CentercardsDeleteDatabaseEntry extends HttpServlet {
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
		
		
		String driver = "com.mysql.jdbc.Driver";
	    String url    = "jdbc:mysql://localhost/visakhadairy";
	    String username = "root";
	    String password = "root";
//******************************************************************************************************//
	    Connection con = null;
	    PreparedStatement prest = null;
	    ResultSet result = null;
	   
	    
//****************STEP:2 DRIVER INSTALLED******************************************//
	   try{
	    
			Class.forName(driver);
//*******************STEP:3 ESTABLISH CONNECTION TO THE DRIVER*******************************//
			con = DriverManager.getConnection(url,username,password);
			System.out.println("CONNECTION FROM THE DATA BASE IS ESTABLISHED");
			prest = con.prepareStatement("select CENTERNAME FROM cards ");
			  result = prest.executeQuery();
				System.out.println(" Querie Successfully Executed");
				
				ArrayList ar5 = new ArrayList();
				while(result.next()) {
					System.out.println("helloworld");
				 String s1 = result.getString("CENTERNAME");
				 ar5.add(s1);
				}
				
				ArrayList ar6 = new ArrayList();
				ar6.add(x1);
		
				ar5.retainAll(ar6);
				
				System.out.println(ar5.size());
				
				if(ar5.size()==1){

					HttpSession s2=request.getSession();
					s2.setAttribute("cname1", x1);
					

					RequestDispatcher rd1 = request.getRequestDispatcher("Cardsdeletedisplay.jsp");
			          rd1.forward(request, response);
				}
				
				// GENERATION OF ERROR PAGE IF CENTER NOT YET REGISTERED in commitee
		          
		          prest = con.prepareStatement("select CENTERNAME FROM cards ");
					
					result = prest.executeQuery();
					System.out.println(" ANNUM Querie Successfully Executed");
			
					ArrayList ar = new ArrayList();
						while(result.next()) {
							System.out.println("helloworld");
						 String s1 = result.getString("CENTERNAME");
						 ar.add(s1);
						}
						System.out.println(ar.size());
						ArrayList ar1 = new ArrayList();
						ar1.add(x1);
				
						ar.retainAll(ar1);
						
						System.out.println(ar.size());
						
						if(ar.size()==0){
							
							RequestDispatcher rd1 = request.getRequestDispatcher("Error10.jsp");
					          rd1.forward(request, response);
						}
		
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
