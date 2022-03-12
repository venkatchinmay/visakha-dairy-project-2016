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
public class CommiteenamesandtermsDatabaseEntry extends HttpServlet {
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
			
			//************************* entry empty table*************************//
			st = con.createStatement();
			 result = st.executeQuery("select count(*) from commitee ");
			 while (result.next()) {
				 row = result.getInt(1);
				 }
			 System.out.println(row);
			 System.out.println("row calculated");
			 
			 if(row == 0){
	
	    	    prest = con.prepareStatement("insert into commitee values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
	   			
	   			prest.executeUpdate();
	   			System.out.println("data successfully entered");
	   			
	   			//**********************************************************//
	   			
	   			prest = con.prepareStatement("insert into directors values(?,?,?,?,?,?)");
	   			
	   			String l1="1";
	   			prest.setString(1, l1);
	   			prest.setString(2, x1);
	   			prest.setString(3, x2);
	   			prest.setString(4, x3);
	   			prest.setString(5, x8);
	   			prest.setString(6, x9);
	   			prest.executeUpdate();
	   			System.out.println("data successfully director1");
	   			
	   			/*******************************************************/
                prest = con.prepareStatement("insert into directors values(?,?,?,?,?,?)");
	   			
	   			String l2="2";
	   			prest.setString(1, l2);
	   			prest.setString(2, x1);
	   			prest.setString(3, x2);
	   			prest.setString(4, x3);
	   			prest.setString(5, x10);
	   			prest.setString(6, x11);
	   			prest.executeUpdate();
	   			System.out.println("data successfully director2");
	   			
	   			/*******************************************************/
	   			
	               prest = con.prepareStatement("insert into directors values(?,?,?,?,?,?)");
		   			
		   			String l3="3";
		   			prest.setString(1, l3);
		   			prest.setString(2, x1);
		   			prest.setString(3, x2);
		   			prest.setString(4, x3);
		   			prest.setString(5, x12);
		   			prest.setString(6, x13);
		   			prest.executeUpdate();
		   			System.out.println("data successfully director3");
		   			
	   			/*******************************************************/
	   			
		               prest = con.prepareStatement("insert into directors values(?,?,?,?,?,?)");
			   			
			   			String l4="4";
			   			prest.setString(1, l4);
			   			prest.setString(2, x1);
			   			prest.setString(3, x2);
			   			prest.setString(4, x3);
			   			prest.setString(5, x14);
			   			prest.setString(6, x15);
			   			prest.executeUpdate();
			   			System.out.println("data successfully director1");
			   			
	   			/*******************************************************/
	   			
			               prest = con.prepareStatement("insert into directors values(?,?,?,?,?,?)");
				   			
				   			String l5="5";
				   			prest.setString(1, l5);
				   			prest.setString(2, x1);
				   			prest.setString(3, x2);
				   			prest.setString(4, x3);
				   			prest.setString(5, x16);
				   			prest.setString(6, x17);
				   			prest.executeUpdate();
				   			System.out.println("data successfully director4");
				   			
	   			/*******************************************************/
	   			
				               prest = con.prepareStatement("insert into directors values(?,?,?,?,?,?)");
					   			
					   			String l6="6";
					   			prest.setString(1, l6);
					   			prest.setString(2, x1);
					   			prest.setString(3, x2);
					   			prest.setString(4, x3);
					   			prest.setString(5, x18);
					   			prest.setString(6, x19);
					   			prest.executeUpdate();
					   			System.out.println("data successfully director5");
					   			
	   			/*******************************************************/
	   			
					               prest = con.prepareStatement("insert into directors values(?,?,?,?,?,?)");
						   			
						   			String l7="7";
						   			prest.setString(1, l7);
						   			prest.setString(2, x1);
						   			prest.setString(3, x2);
						   			prest.setString(4, x3);
						   			prest.setString(5, x20);
						   			prest.setString(6, x21);
						   			prest.executeUpdate();
						   			System.out.println("data successfully director7");
						   			
	   			/*******************************************************/
	   			
						               prest = con.prepareStatement("insert into directors values(?,?,?,?,?,?)");
							   			
							   			String l8="8";
							   			prest.setString(1, l8);
							   			prest.setString(2, x1);
							   			prest.setString(3, x2);
							   			prest.setString(4, x3);
							   			prest.setString(5, x22);
							   			prest.setString(6, x23);
							   			prest.executeUpdate();
							   			System.out.println("data successfully director8");
							   			
	   			/*******************************************************/
	   			
							               prest = con.prepareStatement("insert into directors values(?,?,?,?,?,?)");
								   			
								   			String l9="9";
								   			prest.setString(1, l9);
								   			prest.setString(2, x1);
								   			prest.setString(3, x2);
								   			prest.setString(4, x3);
								   			prest.setString(5, x24);
								   			prest.setString(6, x25);
								   			prest.executeUpdate();
								   			System.out.println("data successfully director9");
								   			
	   			/*******************************************************/
	   			
	   			
	   			// set CENTER NAME TO NEXT SESSION //
	   			HttpSession s1=request.getSession();
	   			s1.setAttribute("cname3",x3);
	   			
	   			// RE DIRECTING THIS PAGE TO Successfulenter.jsp //
	   			
	   			 RequestDispatcher rd2 = request.getRequestDispatcher("Successfulenter.jsp");
	   	          rd2.forward(request, response);
	   	          
	   	 } // end of if row
			 
			 else {
			
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
			    	   
	    		    RequestDispatcher rd21 = request.getRequestDispatcher("error1.jsp");
		 	          rd21.forward(request, response);
				}
			    	   
			    	   else {
			
			    		  
			
			    		   prest = con.prepareStatement("insert into commitee values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
				   			
				   			prest.executeUpdate();
				   			System.out.println("data successfully entered");
				   			
				   			//**********************************************************//
				   		//**********************************************************//
				   			
				   			prest = con.prepareStatement("insert into directors values(?,?,?,?,?,?)");
				   			
				   			String l1="1";
				   			prest.setString(1, l1);
				   			prest.setString(2, x1);
				   			prest.setString(3, x2);
				   			prest.setString(4, x3);
				   			prest.setString(5, x8);
				   			prest.setString(6, x9);
				   			prest.executeUpdate();
				   			System.out.println("data successfully director1");
				   			
				   			/*******************************************************/
			                prest = con.prepareStatement("insert into directors values(?,?,?,?,?,?)");
				   			
				   			String l2="2";
				   			prest.setString(1, l2);
				   			prest.setString(2, x1);
				   			prest.setString(3, x2);
				   			prest.setString(4, x3);
				   			prest.setString(5, x10);
				   			prest.setString(6, x11);
				   			prest.executeUpdate();
				   			System.out.println("data successfully director2");
				   			
				   			/*******************************************************/
				   			
				               prest = con.prepareStatement("insert into directors values(?,?,?,?,?,?)");
					   			
					   			String l3="3";
					   			prest.setString(1, l3);
					   			prest.setString(2, x1);
					   			prest.setString(3, x2);
					   			prest.setString(4, x3);
					   			prest.setString(5, x12);
					   			prest.setString(6, x13);
					   			prest.executeUpdate();
					   			System.out.println("data successfully director3");
					   			
				   			/*******************************************************/
				   			
					               prest = con.prepareStatement("insert into directors values(?,?,?,?,?,?)");
						   			
						   			String l4="4";
						   			prest.setString(1, l4);
						   			prest.setString(2, x1);
						   			prest.setString(3, x2);
						   			prest.setString(4, x3);
						   			prest.setString(5, x14);
						   			prest.setString(6, x15);
						   			prest.executeUpdate();
						   			System.out.println("data successfully director1");
						   			
				   			/*******************************************************/
				   			
						               prest = con.prepareStatement("insert into directors values(?,?,?,?,?,?)");
							   			
							   			String l5="5";
							   			prest.setString(1, l5);
							   			prest.setString(2, x1);
							   			prest.setString(3, x2);
							   			prest.setString(4, x3);
							   			prest.setString(5, x16);
							   			prest.setString(6, x17);
							   			prest.executeUpdate();
							   			System.out.println("data successfully director4");
							   			
				   			/*******************************************************/
				   			
							               prest = con.prepareStatement("insert into directors values(?,?,?,?,?,?)");
								   			
								   			String l6="6";
								   			prest.setString(1, l6);
								   			prest.setString(2, x1);
								   			prest.setString(3, x2);
								   			prest.setString(4, x3);
								   			prest.setString(5, x18);
								   			prest.setString(6, x19);
								   			prest.executeUpdate();
								   			System.out.println("data successfully director5");
								   			
				   			/*******************************************************/
				   			
								               prest = con.prepareStatement("insert into directors values(?,?,?,?,?,?)");
									   			
									   			String l7="7";
									   			prest.setString(1, l7);
									   			prest.setString(2, x1);
									   			prest.setString(3, x2);
									   			prest.setString(4, x3);
									   			prest.setString(5, x20);
									   			prest.setString(6, x21);
									   			prest.executeUpdate();
									   			System.out.println("data successfully director7");
									   			
				   			/*******************************************************/
				   			
									               prest = con.prepareStatement("insert into directors values(?,?,?,?,?,?)");
										   			
										   			String l8="8";
										   			prest.setString(1, l8);
										   			prest.setString(2, x1);
										   			prest.setString(3, x2);
										   			prest.setString(4, x3);
										   			prest.setString(5, x22);
										   			prest.setString(6, x23);
										   			prest.executeUpdate();
										   			System.out.println("data successfully director8");
										   			
				   			/*******************************************************/
				   			
										               prest = con.prepareStatement("insert into directors values(?,?,?,?,?,?)");
											   			
											   			String l9="9";
											   			prest.setString(1, l9);
											   			prest.setString(2, x1);
											   			prest.setString(3, x2);
											   			prest.setString(4, x3);
											   			prest.setString(5, x24);
											   			prest.setString(6, x25);
											   			prest.executeUpdate();
											   			System.out.println("data successfully director9");
											   			
			
			// set CENTER NAME TO NEXT SESSION //
			HttpSession s1=request.getSession();
			s1.setAttribute("cname3",x3);
			
			// RE DIRECTING THIS PAGE TO Successfulenter.jsp //
			
			 RequestDispatcher rd2 = request.getRequestDispatcher("Successfulenter.jsp");
	          rd2.forward(request, response);
			    	   }
				
			 }// end of row else
		
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
