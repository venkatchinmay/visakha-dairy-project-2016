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
 * Servlet implementation class Centerreceipt1maintanence
 */
public class Bccprocurement1maintanence extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String  param1 = request.getParameter("dateofentry");
		
		   //************************************** DATA BASE CENTER NAME CHECK********************************//
        

		// ESTABLISHING CONNECTION TO THE DATABASE //
		
		String driver = "com.mysql.jdbc.Driver";
	    String url    = "jdbc:mysql://localhost/visakhadairy";
	    String username = "root";
	    String password = "root";
//******************************************************************************************************//
	    Connection con = null;
	    PreparedStatement prest = null;
	    ResultSet result = null;
	    String k1 = "null";
	    String k2 = "null";
	    
//****************STEP:2 DRIVER INSTALLED******************************************//
	   try{
	    
			Class.forName(driver);
//*******************STEP:3 ESTABLISH CONNECTION TO THE DRIVER*******************************//
			con = DriverManager.getConnection(url,username,password);
			System.out.println("CONNECTION FROM THE DATA BASE IS ESTABLISHED");
			
			
			//********************************** BCC_ENTRYDATE  CHECK *****************************//
			prest = con.prepareStatement("SELECT STR_TO_DATE(?, '%d/%m/%Y')DATEOFENTRY");
			prest.setString(1, param1);	
			result = prest.executeQuery();
				System.out.println("Querie Successfully Executed");
		//********************************************************************************//
					while(result.next()) {
					  k1 = result.getString("DATEOFENTRY");
					 

					}
					prest = con.prepareStatement("SELECT DATE_FORMAT(?, '%d/%m/%Y')DATEOFENTRY");
					prest.setString(1, k1);	
					result = prest.executeQuery();
						System.out.println("Querie Successfully Executed");
				//********************************************************************************//
							while(result.next()) {
							  k2 = result.getString("DATEOFENTRY");

							}		
			
			 
			 
			 //********************************************************************************
			 prest = con.prepareStatement("select BCC_ENTRYDATE FROM bcc_procuriment ");
			 result = prest.executeQuery();
				System.out.println(" Querie Successfully Executed");
				
				//****************
		
				ArrayList ar5 = new ArrayList();
				while(result.next()) {
					System.out.println("helloworld");
				 String s1 = result.getString("BCC_ENTRYDATE");
				 ar5.add(s1);
				}
				
				ArrayList ar6 = new ArrayList();
				ar6.add(k2);
		
				ar5.retainAll(ar6);
				
				System.out.println(ar5.size());
				
				if(ar5.size()!=0){
					
					 HttpSession s=request.getSession();
						s.setAttribute("cname1", k2); 
						
						 RequestDispatcher rd212 = request.getRequestDispatcher("Bccprocurementreport1generation.jsp");
				          rd212.forward(request, response);	
				}
				
				// GENERATION OF ERROR PAGE IF CENTER NOT YET REGISTERED
		          
		          prest = con.prepareStatement("select BCC_ENTRYDATE FROM bcc_procuriment ");
					
					result = prest.executeQuery();
					System.out.println(" ANNUM Querie Successfully Executed");
			
					ArrayList ar = new ArrayList();
						while(result.next()) {
							System.out.println("helloworld");
						 String s1 = result.getString("BCC_ENTRYDATE");
						 ar.add(s1);
						}
						System.out.println(ar.size());
						ArrayList ar1 = new ArrayList();
						ar1.add(k2);
				
						ar.retainAll(ar1);
						
						System.out.println(ar.size());
						
						if(ar.size()==0){
							
							RequestDispatcher rd1 = request.getRequestDispatcher("Error7.jsp");
					          rd1.forward(request, response);
						}
		        
		     
	 


}catch (ClassNotFoundException e) {
// TODO Auto-generated catch block
e.printStackTrace();
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
				
	}

}
