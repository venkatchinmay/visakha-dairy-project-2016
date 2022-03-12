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

import com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException;

/**
 * Servlet implementation class AprilProcurimentDatabaseEntry
 */
public class CommiteenamesandtermsUpdateDatabaseEntry extends HttpServlet {
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
		String x10=(String)s.getAttribute("cname10");
		String x11=(String)s.getAttribute("cname11");
		String x12=(String)s.getAttribute("cname12");
		String x13=(String)s.getAttribute("cname13");
		String x14=(String)s.getAttribute("cname14");
		String x15=(String)s.getAttribute("cname15");
		String x16=(String)s.getAttribute("cname16");
		String x17=(String)s.getAttribute("cname17");
		String x18=(String)s.getAttribute("cname18");
		String x19=(String)s.getAttribute("cname19");
		String x20=(String)s.getAttribute("cname20");
		String x21=(String)s.getAttribute("cname21");
		String x22=(String)s.getAttribute("cname22");
		String x23=(String)s.getAttribute("cname23");
		String x24=(String)s.getAttribute("cname24");
		String x25=(String)s.getAttribute("cname25");
		
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
			 prest = con.prepareStatement("select CENTERNAME FROM commitee ");
			 result = prest.executeQuery();
				System.out.println(" Querie Successfully Executed");
				
				ArrayList ar5 = new ArrayList();
				while(result.next()) {
					System.out.println("helloworld");
				 String s1 = result.getString("CENTERNAME");
				 ar5.add(s1);
				}
				
				ArrayList ar6 = new ArrayList();
				ar6.add(x3);
		
				ar5.retainAll(ar6);
				
				System.out.println(ar5.size());
				
				if(ar5.size()==1){
					System.out.println("GOING TO IF LOOP SUCCESSFULLY");
	    		    System.out.println("ifloop");
			    	  
			    		   System.out.println("enter in to if loop");
			    		   
			    		   prest = con.prepareStatement("UPDATE  commitee SET  BCC = ?, CENTERCODE = ?, CENTERNAME = ?,  MPI_MPAC = ?, PRESIDENT_GROUPMEMBER = ?, PRESIDENT_NAME = ?,  PRESIDENT_TERM  = ?, DIRECTORNAME_1 = ?, DIRECTORTERM_1  = ?,DIRECTORNAME_2 = ?, DIRECTORTERM_2  = ?,DIRECTORNAME_3 = ?, DIRECTORTERM_3  = ?,DIRECTORNAME_4 = ?, DIRECTORTERM_4  = ?,DIRECTORNAME_5 = ?, DIRECTORTERM_5  = ?,DIRECTORNAME_6 = ?, DIRECTORTERM_6  = ?,DIRECTORNAME_7 = ?, DIRECTORTERM_7  = ?,DIRECTORNAME_8 = ?, DIRECTORTERM_8  = ?,DIRECTORNAME_9 = ?, DIRECTORTERM_9  = ? WHERE CENTERNAME = ?");
				   			prest.setString(1, x1);
				   			prest.setString(2, x2);
				   			prest.setString(3, x3);
				   			prest.setString(4, x4);
				   			prest.setString(5, x5);
				   			prest.setString(6, x6);
				   			prest.setString(7, x7);
				   			prest.setString(8, x8);
				   			prest.setString(9, x9);
				   			prest.setString(10, x10);
				   			prest.setString(11, x11);
				   			prest.setString(12, x12);
				   			prest.setString(13, x13);
				   			prest.setString(14, x14);
				   			prest.setString(15, x15);
				   			prest.setString(16, x16);
				   			prest.setString(17, x17);
				   			prest.setString(18, x18);
				   			prest.setString(19, x19);
				   			prest.setString(20, x20);
				   			prest.setString(21, x21);
				   			prest.setString(22, x22);
				   			prest.setString(23, x23);
				   			prest.setString(24, x24);
				   			prest.setString(25, x25);
				   			prest.setString(26, x3);
				   			
				   			prest.executeUpdate();
				   			System.out.println("data successfully UPDATED");
				   			
				   			//**********************************************************//
				   		//**********************************************************//
				   			
				   			prest = con.prepareStatement("UPDATE directors SET DIRECTOR_NAMES= ?,DIRECTOR_TERMS= ? WHERE CENTERNAME= ? AND NUMBER= ?");
				   			
				   			String l1="1";
				   			prest.setString(1, x8);
				   			prest.setString(2, x9);
				   			prest.setString(3, x3);
				   			prest.setString(4, l1);
				   			prest.executeUpdate();
				   			System.out.println("data successfully director1");
				   			
				   			/*******************************************************/
			                prest = con.prepareStatement("UPDATE directors SET DIRECTOR_NAMES= ?,DIRECTOR_TERMS= ? WHERE CENTERNAME= ? AND NUMBER= ?");
				   			
				   			String l2="2";
				   			prest.setString(1, x10);
				   			prest.setString(2, x11);
				   			prest.setString(3, x3);
				   			prest.setString(4, l2);
				   			prest.executeUpdate();
				   			System.out.println("data successfully director2");
				   			
				   			/*******************************************************/
				   			
				               prest = con.prepareStatement("UPDATE directors SET DIRECTOR_NAMES= ?,DIRECTOR_TERMS= ? WHERE CENTERNAME= ? AND NUMBER= ?");
					   			
					   			String l3="3";
					   			prest.setString(1, x12);
					   			prest.setString(2, x13);
					   			prest.setString(3, x3);
					   			prest.setString(4, l3);
					   			prest.executeUpdate();
					   			System.out.println("data successfully director3");
					   			
				   			/*******************************************************/
				   			
					               prest = con.prepareStatement("UPDATE directors SET DIRECTOR_NAMES= ?,DIRECTOR_TERMS= ? WHERE CENTERNAME= ? AND NUMBER= ?");
						   			
						   			String l4="4";
						   			prest.setString(1, x14);
						   			prest.setString(2, x15);
						   			prest.setString(3, x3);
						   			prest.setString(4, l4);
						   			prest.executeUpdate();
						   			System.out.println("data successfully director1");
						   			
				   			/*******************************************************/
				   			
						               prest = con.prepareStatement("UPDATE directors SET DIRECTOR_NAMES= ?,DIRECTOR_TERMS= ? WHERE CENTERNAME= ? AND NUMBER= ?");
							   			
							   			String l5="5";
							   			prest.setString(1, x16);
							   			prest.setString(2, x17);
							   			prest.setString(3, x3);
							   			prest.setString(4, l5);
							   			prest.executeUpdate();
							   			System.out.println("data successfully director4");
							   			
				   			/*******************************************************/
				   			
							               prest = con.prepareStatement("UPDATE directors SET DIRECTOR_NAMES= ?,DIRECTOR_TERMS= ? WHERE CENTERNAME= ? AND NUMBER= ?");
								   			
								   			String l6="6";
								   			prest.setString(1, x18);
								   			prest.setString(2, x19);
								   			prest.setString(3, x3);
								   			prest.setString(4, l6);
								   			prest.executeUpdate();
								   			System.out.println("data successfully director5");
								   			
				   			/*******************************************************/
				   			
								               prest = con.prepareStatement("UPDATE directors SET DIRECTOR_NAMES= ?,DIRECTOR_TERMS= ? WHERE CENTERNAME= ? AND NUMBER= ?");
									   			
									   			String l7="7";
									   			prest.setString(1, x20);
									   			prest.setString(2, x21);
									   			prest.setString(3, x3);
									   			prest.setString(4, l7);
									   			prest.executeUpdate();
									   			System.out.println("data successfully director7");
									   			
				   			/*******************************************************/
				   			
									               prest = con.prepareStatement("UPDATE directors SET DIRECTOR_NAMES= ?,DIRECTOR_TERMS= ? WHERE CENTERNAME= ? AND NUMBER= ?");
										   			
										   			String l8="8";
										   			prest.setString(1, x22);
										   			prest.setString(2, x23);
										   			prest.setString(3, x3);
										   			prest.setString(4, l8);
										   			prest.executeUpdate();
										   			System.out.println("data successfully director8");
										   			
				   			/*******************************************************/
				   			
										               prest = con.prepareStatement("UPDATE directors SET DIRECTOR_NAMES= ?,DIRECTOR_TERMS= ? WHERE CENTERNAME= ? AND NUMBER= ?");
											   			
											   			String l9="9";
											   			prest.setString(1, x24);
											   			prest.setString(2, x25);
											   			prest.setString(3, x3);
											   			prest.setString(4, l9);
											   			prest.executeUpdate();
											   			System.out.println("data successfully director9");
											   			
			
			// set CENTER NAME TO NEXT SESSION //
			HttpSession s1=request.getSession();
			s1.setAttribute("cname3",x3);
			
			// RE DIRECTING THIS PAGE TO Successfulenter2.jsp //
			
			 RequestDispatcher rd2 = request.getRequestDispatcher("Successfulenter2.jsp");
	          rd2.forward(request, response);
			    		   
			    		   
			    		   //****************************************************************************//
			    		 
			    	   }//if
			    	   
				
			    	   
			    	   
				// GENERATION OF ERROR PAGE IF CENTER NOT YET REGISTERED in commitee
		          
		          prest = con.prepareStatement("select CENTERNAME FROM commitee ");
					
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
						ar1.add(x3);
				
						ar.retainAll(ar1);
						
						System.out.println(ar.size());
						
						if(ar.size()==0){
							
							RequestDispatcher rd1 = request.getRequestDispatcher("Error4.jsp");
					          rd1.forward(request, response);
						}
		        
		
	}catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}catch (MySQLIntegrityConstraintViolationException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();

        RequestDispatcher rd3 = request.getRequestDispatcher("Error15.jsp");
        rd3.forward(request, response);
	
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();

} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

}//P

}// S
