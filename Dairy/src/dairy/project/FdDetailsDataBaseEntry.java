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
public class FdDetailsDataBaseEntry extends HttpServlet {
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
		
		String driver = "com.mysql.jdbc.Driver";
	    String url    = "jdbc:mysql://localhost/visakhadairy";
	    String username = "root";
	    String password = "root";
//******************************************************************************************************//
	    Connection con = null;
	    PreparedStatement prest = null;
	    ResultSet result = null;
	    Statement st = null;
	    String k1 = "null";
	    String k2 = "null";
	    String k3 = "null";
	    int row = 0;
	    
//****************STEP:2 DRIVER INSTALLED******************************************//
	   try{
	    
			Class.forName(driver);
//*******************STEP:3 ESTABLISH CONNECTION TO THE DRIVER*******************************//
			con = DriverManager.getConnection(url,username,password);
			System.out.println("CONNECTION FROM THE DATA BASE IS ESTABLISHED");
			
			System.out.println(x5);
			
			//************************* entry empty table*************************//
			st = con.createStatement();
			 result = st.executeQuery("select count(*) from fd_details ");
			 while (result.next()) {
				 row = result.getInt(1);
				 }
			 System.out.println(row);
			 System.out.println("row calculated");
			 
			 if(row == 0){
				 
				//************************* entry empty table*************************//
					
						 
	
	    		   prest = con.prepareStatement("insert into fd_details values(?,?,?,?,?,?,?,?)");
	   			prest.setString(1, x1);
	   			prest.setString(2, x2);
	   			prest.setString(3, x3);
	   			prest.setString(4, x4);
	   			prest.setString(5, x5);
	   			prest.setString(6, x6);
	   			prest.setString(7, x7);
	   			prest.setString(8, x8);
	   			
	   			prest.executeUpdate();
	   			System.out.println("data successfully entered");
	   			
	   			// set CENTER NAME TO NEXT SESSION //
	   			HttpSession s1=request.getSession();
	   			s1.setAttribute("cname3",x3);
	   			
	   			// RE DIRECTING THIS PAGE TO Successfulenter.jsp //
	   			
	   			 RequestDispatcher rd2 = request.getRequestDispatcher("Successfulenter.jsp");
	   	          rd2.forward(request, response);
	   	          
					 
					 
					 
	   	          
	   	 } // end of if row
			 
			 else {
			
			//*************************************************VERIFICATION OF CENTER NAME************************************************************************** 
			 prest = con.prepareStatement("select BONDNUMBER  FROM fd_details ");
			 result = prest.executeQuery();
				System.out.println(" Querie Successfully Executed");
				
				ArrayList ar5 = new ArrayList();
				while(result.next()) {
					System.out.println("helloworld");
				 String s1 = result.getString("BONDNUMBER");
				 ar5.add(s1);
				}
				
				ArrayList ar6 = new ArrayList();
				ar6.add(x4);
		
				ar5.retainAll(ar6);
				
				System.out.println(ar5.size());
				
				if(ar5.size()==1){
					System.out.println("GOING TO IF LOOP SUCCESSFULLY");
	    		    System.out.println("ifloop");
			    	   
	    		    RequestDispatcher rd21 = request.getRequestDispatcher("Error14.jsp");
		 	          rd21.forward(request, response);
				}
			    	   
			    	   else {
			    		   
			    	
			prest = con.prepareStatement("insert into fd_details values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			prest.setString(1, x1);
			prest.setString(2, x2);
			prest.setString(3, x3);
			prest.setString(4, x4);
			prest.setString(5, x5);
			prest.setString(6, x6);
			prest.setString(7, x7);
			prest.setString(8, x8);
   			
			
			prest.executeUpdate();
			System.out.println("data successfully entered");
			
			// set CENTER NAME TO NEXT SESSION //
			HttpSession s1=request.getSession();
			s1.setAttribute("cname3",x3);
			
			// RE DIRECTING THIS PAGE TO Successfulenter.jsp //
			
			 RequestDispatcher rd2 = request.getRequestDispatcher("Successfulenter.jsp");
	          rd2.forward(request, response);
							   
				}// end else2
			 }// end of row else
		
	}catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}catch (NullPointerException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();

        RequestDispatcher rd3 = request.getRequestDispatcher("Error14.jsp");
        rd3.forward(request, response);
	
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();

} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

}//P

}// S
