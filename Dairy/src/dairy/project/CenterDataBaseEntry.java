package dairy.project;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class CenterDataBaseEntry
 */
public class CenterDataBaseEntry extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// GET CONFORMED PARAMETERS FROM centerentrycheck.jsp //
		
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
		
		// ESTABLISHING CONNECTION TO THE DATABASE //
		
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
			
			//*************************************************************
			
			System.out.println(x13);
			
			st = con.createStatement();
			 result = st.executeQuery("select count(*) from center_details ");
			 while (result.next()) {
				 row = result.getInt(1);
				 }
			 System.out.println(row);
			 System.out.println("row calculated");
			 
			 if(row == 0){
				 
				 String param6 = x1.toUpperCase();
	    		   String param7 = x3.toUpperCase();
	    		   String param79 = x6.toUpperCase();
	    		   String param76 = x8.toUpperCase();
	
	prest = con.prepareStatement("insert into center_details values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
	prest.setString(1, param6);
	prest.setString(2, x2);
	prest.setString(3, param7);
	prest.setString(4, x4);
	prest.setString(5, x5);
	prest.setString(6, param79);
	prest.setString(7, x7);
	prest.setString(8, param76);
	prest.setString(9, x9);
	prest.setString(10, x10);
	prest.setString(11, x11);
	prest.setString(12, x12);
	prest.setString(13, x13);
	prest.executeUpdate();
	System.out.println("data successfully entered");
	
	//***********************************************************************************************************************************************//
	
		String x78 = "0";
		
		//******************************************************************************
		  prest = con.prepareStatement("insert into jan_procuriment  values(?,?,?,?,?,?,?)");
			prest.setString(1, param6);
			prest.setString(2, x2);
			prest.setString(3,  param7);
			prest.setString(4, x78);
			prest.setString(5, x78);
			prest.setString(6, x78);
			prest.setString(7, x78);
			
			prest.executeUpdate();
			System.out.println("data successfully entered in to january procuriment");
			
			prest = con.prepareStatement("insert into f_procuriment  values(?,?,?,?,?,?,?)");
			prest.setString(1, param6);
			prest.setString(2, x2);
			prest.setString(3,  param7);
			prest.setString(4, x78);
			prest.setString(5, x78);
			prest.setString(6, x78);
			prest.setString(7, x78);
			
			prest.executeUpdate();
			System.out.println("data successfully entered in to february procuriment");
			
			prest = con.prepareStatement("insert into mar_procuriment  values(?,?,?,?,?,?,?)");
			prest.setString(1, param6);
			prest.setString(2, x2);
			prest.setString(3,  param7);
			prest.setString(4, x78);
			prest.setString(5, x78);
			prest.setString(6, x78);
			prest.setString(7, x78);
			
			prest.executeUpdate();
			System.out.println("data successfully entered in to march procuriment");
			
			prest = con.prepareStatement("insert into a_procuriment  values(?,?,?,?,?,?,?)");
			prest.setString(1, param6);
			prest.setString(2, x2);
			prest.setString(3,  param7);
			prest.setString(4, x78);
			prest.setString(5, x78);
			prest.setString(6, x78);
			prest.setString(7, x78);
			
			prest.executeUpdate();
			System.out.println("data successfully entered in to aprilprocuriment");
			
			prest = con.prepareStatement("insert into m_procuriment  values(?,?,?,?,?,?,?)");
			prest.setString(1, param6);
			prest.setString(2, x2);
			prest.setString(3,  param7);
			prest.setString(4, x78);
			prest.setString(5, x78);
			prest.setString(6, x78);
			prest.setString(7, x78);
			
			prest.executeUpdate();
			System.out.println("data successfully entered in to may procuriment");
			
			prest = con.prepareStatement("insert into ju_procuriment  values(?,?,?,?,?,?,?)");
			prest.setString(1, param6);
			prest.setString(2, x2);
			prest.setString(3,  param7);
			prest.setString(4, x78);
			prest.setString(5, x78);
			prest.setString(6, x78);
			prest.setString(7, x78);
			
			prest.executeUpdate();
			System.out.println("data successfully entered in to june procuriment");
			
			prest = con.prepareStatement("insert into jul_procuriment  values(?,?,?,?,?,?,?)");
			prest.setString(1, param6);
			prest.setString(2, x2);
			prest.setString(3,  param7);
			prest.setString(4, x78);
			prest.setString(5, x78);
			prest.setString(6, x78);
			prest.setString(7, x78);
			
			prest.executeUpdate();
			System.out.println("data successfully entered in to july procuriment");
			
			prest = con.prepareStatement("insert into au_procuriment  values(?,?,?,?,?,?,?)");
			prest.setString(1, param6);
			prest.setString(2, x2);
			prest.setString(3,  param7);
			prest.setString(4, x78);
			prest.setString(5, x78);
			prest.setString(6, x78);
			prest.setString(7, x78);
			
			prest.executeUpdate();
			System.out.println("data successfully entered in to august procuriment");
			
			prest = con.prepareStatement("insert into s_procuriment  values(?,?,?,?,?,?,?)");
			prest.setString(1, param6);
			prest.setString(2, x2);
			prest.setString(3,  param7);
			prest.setString(4, x78);
			prest.setString(5, x78);
			prest.setString(6, x78);
			prest.setString(7, x78);
			
			prest.executeUpdate();
			System.out.println("data successfully entered in to september procuriment");
			
			prest = con.prepareStatement("insert into o_procuriment  values(?,?,?,?,?,?,?)");
			prest.setString(1, param6);
			prest.setString(2, x2);
			prest.setString(3,  param7);
			prest.setString(4, x78);
			prest.setString(5, x78);
			prest.setString(6, x78);
			prest.setString(7, x78);
			
			prest.executeUpdate();
			System.out.println("data successfully entered in to october procuriment");
			
			prest = con.prepareStatement("insert into n_procuriment  values(?,?,?,?,?,?,?)");
			prest.setString(1, param6);
			prest.setString(2, x2);
			prest.setString(3,  param7);
			prest.setString(4, x78);
			prest.setString(5, x78);
			prest.setString(6, x78);
			prest.setString(7, x78);
			
			prest.executeUpdate();
			System.out.println("data successfully entered in to november procuriment");
			
			prest = con.prepareStatement("insert into d_procuriment  values(?,?,?,?,?,?,?)");
			prest.setString(1, param6);
			prest.setString(2, x2);
			prest.setString(3,  param7);
			prest.setString(4, x78);
			prest.setString(5, x78);
			prest.setString(6, x78);
			prest.setString(7, x78);
			
			prest.executeUpdate();
			System.out.println("data successfully entered in to december procuriment");
			
			                       //************************************************//
			
			 prest = con.prepareStatement("insert into jan_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
			 prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				prest.setString(8, x78);
				prest.setString(9, x78);
				prest.setString(10, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to withhelppriseexp");
				
				prest = con.prepareStatement("insert into f_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				prest.setString(8, x78);
				prest.setString(9, x78);
				prest.setString(10, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to february withhelppriseexp");
				
				prest = con.prepareStatement("insert into mar_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				prest.setString(8, x78);
				prest.setString(9, x78);
				prest.setString(10, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to march withhelppriseexp");
				
				prest = con.prepareStatement("insert into a_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				prest.setString(8, x78);
				prest.setString(9, x78);
				prest.setString(10, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to aprilwithhelppriseexp");
				
				prest = con.prepareStatement("insert into m_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				prest.setString(8, x78);
				prest.setString(9, x78);
				prest.setString(10, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to may withhelppriseexp");
				
				prest = con.prepareStatement("insert into ju_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				prest.setString(8, x78);
				prest.setString(9, x78);
				prest.setString(10, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to june withhelppriseexp");
				
				prest = con.prepareStatement("insert into jul_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				prest.setString(8, x78);
				prest.setString(9, x78);
				prest.setString(10, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to july withhelppriseexp");
				
				prest = con.prepareStatement("insert into au_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				prest.setString(8, x78);
				prest.setString(9, x78);
				prest.setString(10, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to august withhelppriseexp");
				
				prest = con.prepareStatement("insert into s_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				prest.setString(8, x78);
				prest.setString(9, x78);
				prest.setString(10, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to september withhelppriseexp");
				
				prest = con.prepareStatement("insert into o_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				prest.setString(8, x78);
				prest.setString(9, x78);
				prest.setString(10, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to october withhelppriseexp");
				
				prest = con.prepareStatement("insert into n_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				prest.setString(8, x78);
				prest.setString(9, x78);
				prest.setString(10, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to november withhelppriseexp");
				
				prest = con.prepareStatement("insert into d_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				prest.setString(8, x78);
				prest.setString(9, x78);
				prest.setString(10, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to december withhelppriseexp");
				
				    //****************************************************************************//
				
				prest = con.prepareStatement("insert into withhelp_ter1 values(?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
                	prest.executeUpdate();
				System.out.println("data successfully entered in to withhelp_ter1");
				
				prest = con.prepareStatement("insert into withhelp_ter2 values(?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
                	prest.executeUpdate();
				System.out.println("data successfully entered in to withhelp_ter2");
				
				
				prest = con.prepareStatement("insert into withhelp_ter3 values(?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
                	prest.executeUpdate();
				System.out.println("data successfully entered in to withhelp_ter3");
				
				prest = con.prepareStatement("insert into withhelp_ter4  values(?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
                	prest.executeUpdate();
				System.out.println("data successfully entered in to withhelp_ter4");
			
	
	//******************************************************************************************************************************************//
	// set CENTER NAME TO NEXT SESSION //
	HttpSession s1=request.getSession();
	s1.setAttribute("cname3",x3);
	
	// RE DIRECTING THIS PAGE TO Successfulenter.jsp //
	
	 RequestDispatcher rd2 = request.getRequestDispatcher("Successfulenter.jsp");
    rd2.forward(request, response);
				 
				 }// end of if loop
			 
			 else {	
				 String param15 = x3.toUpperCase();
			//****************************************************VERIFICATION OF CENTER NAME**********************************************************************
			 prest = con.prepareStatement("select CENTERNAME FROM center_details ");
			 result = prest.executeQuery();
				System.out.println("Centername Querie Successfully Executed");
				
				//****************
		
				ArrayList ar = new ArrayList();
				while(result.next()) {
					System.out.println("helloworld");
				 String s1 = result.getString("CENTERNAME");
				 ar.add(s1);
				}
				System.out.println(ar.size());
				ArrayList ar1 = new ArrayList();
				ar1.add(param15);
		
				ar.retainAll(ar1);
				
				System.out.println(ar.size());
				
				if(ar.size()==1){
					System.out.println("GOING TO IF LOOP SUCCESSFULLY");
	    		    System.out.println("ifloop");
	    		    System.out.println("centernamecheck");
	    		    
	    		    PrintWriter out = response.getWriter();
	    		    response.sendRedirect("http://localhost:8080/Dairy/error1.jsp");
	    		    out.close();
	    		   
				}
        
	
			//*************************************************VERIFICATION OF CENTER CODE************************************************************************** 
			 prest = con.prepareStatement("select CENTERCODE FROM center_details ");
			 result = prest.executeQuery();
				System.out.println(" Querie Successfully Executed");
				
				ArrayList ar5 = new ArrayList();
				while(result.next()) {
					System.out.println("helloworld");
				 String s1 = result.getString("CENTERCODE");
				 ar5.add(s1);
				}
				System.out.println(ar.size());
				ArrayList ar6 = new ArrayList();
				ar6.add(x2);
		
				ar5.retainAll(ar6);
				
				System.out.println(ar5.size());
				
				if(ar5.size()==1){
					System.out.println("GOING TO IF LOOP SUCCESSFULLY");
	    		    System.out.println("ifloop");
			    	   
			    		   RequestDispatcher rd21 = request.getRequestDispatcher("Error2.jsp");
			 	          rd21.forward(request, response);
			    	   }
			    	   
			    	   else {
			
			    		   String param6 = x1.toUpperCase();
			    		   String param7 = x3.toUpperCase();
			    		   String param76 = x6.toUpperCase();
			    		   String param78 = x8.toUpperCase();
			
			prest = con.prepareStatement("insert into center_details values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			prest.setString(1, param6);
			prest.setString(2, x2);
			prest.setString(3, param7);
			prest.setString(4, x4);
			prest.setString(5, x5);
			prest.setString(6, param76);
			prest.setString(7, x7);
			prest.setString(8, param78);
			prest.setString(9, x9);
			prest.setString(10, x10);
			prest.setString(11, x11);
			prest.setString(12, x12);
			prest.setString(13, x13);
			prest.executeUpdate();
			System.out.println("data successfully entered");
			
			//***********************************************************************************************************************************************//
			
			String x78 = "0";
			
			//******************************************************************************
			  prest = con.prepareStatement("insert into jan_procuriment  values(?,?,?,?,?,?,?)");
			  prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to january procuriment");
				
				prest = con.prepareStatement("insert into f_procuriment  values(?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to february procuriment");
				
				prest = con.prepareStatement("insert into mar_procuriment  values(?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to march procuriment");
				
				prest = con.prepareStatement("insert into a_procuriment  values(?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to aprilprocuriment");
				
				prest = con.prepareStatement("insert into m_procuriment  values(?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to may procuriment");
				
				prest = con.prepareStatement("insert into ju_procuriment  values(?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to june procuriment");
				
				prest = con.prepareStatement("insert into jul_procuriment  values(?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to july procuriment");
				
				prest = con.prepareStatement("insert into au_procuriment  values(?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to august procuriment");
				
				prest = con.prepareStatement("insert into s_procuriment  values(?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to september procuriment");
				
				prest = con.prepareStatement("insert into o_procuriment  values(?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to october procuriment");
				
				prest = con.prepareStatement("insert into n_procuriment  values(?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to november procuriment");
				
				prest = con.prepareStatement("insert into d_procuriment  values(?,?,?,?,?,?,?)");
				prest.setString(1, param6);
				prest.setString(2, x2);
				prest.setString(3,  param7);
				prest.setString(4, x78);
				prest.setString(5, x78);
				prest.setString(6, x78);
				prest.setString(7, x78);
				
				prest.executeUpdate();
				System.out.println("data successfully entered in to december procuriment");
				
				                       //************************************************//
				
				 prest = con.prepareStatement("insert into jan_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
				 prest.setString(1, param6);
					prest.setString(2, x2);
					prest.setString(3,  param7);
					prest.setString(4, x78);
					prest.setString(5, x78);
					prest.setString(6, x78);
					prest.setString(7, x78);
					prest.setString(8, x78);
					prest.setString(9, x78);
					prest.setString(10, x78);
					
					prest.executeUpdate();
					System.out.println("data successfully entered in to withhelppriseexp");
					
					prest = con.prepareStatement("insert into f_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
					prest.setString(1, param6);
					prest.setString(2, x2);
					prest.setString(3,  param7);
					prest.setString(4, x78);
					prest.setString(5, x78);
					prest.setString(6, x78);
					prest.setString(7, x78);
					prest.setString(8, x78);
					prest.setString(9, x78);
					prest.setString(10, x78);
					
					prest.executeUpdate();
					System.out.println("data successfully entered in to february withhelppriseexp");
					
					prest = con.prepareStatement("insert into mar_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
					prest.setString(1, param6);
					prest.setString(2, x2);
					prest.setString(3,  param7);
					prest.setString(4, x78);
					prest.setString(5, x78);
					prest.setString(6, x78);
					prest.setString(7, x78);
					prest.setString(8, x78);
					prest.setString(9, x78);
					prest.setString(10, x78);
					
					prest.executeUpdate();
					System.out.println("data successfully entered in to march withhelppriseexp");
					
					prest = con.prepareStatement("insert into a_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
					prest.setString(1, param6);
					prest.setString(2, x2);
					prest.setString(3,  param7);
					prest.setString(4, x78);
					prest.setString(5, x78);
					prest.setString(6, x78);
					prest.setString(7, x78);
					prest.setString(8, x78);
					prest.setString(9, x78);
					prest.setString(10, x78);
					
					prest.executeUpdate();
					System.out.println("data successfully entered in to aprilwithhelppriseexp");
					
					prest = con.prepareStatement("insert into m_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
					prest.setString(1, param6);
					prest.setString(2, x2);
					prest.setString(3,  param7);
					prest.setString(4, x78);
					prest.setString(5, x78);
					prest.setString(6, x78);
					prest.setString(7, x78);
					prest.setString(8, x78);
					prest.setString(9, x78);
					prest.setString(10, x78);
					
					prest.executeUpdate();
					System.out.println("data successfully entered in to may withhelppriseexp");
					
					prest = con.prepareStatement("insert into ju_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
					prest.setString(1, param6);
					prest.setString(2, x2);
					prest.setString(3,  param7);
					prest.setString(4, x78);
					prest.setString(5, x78);
					prest.setString(6, x78);
					prest.setString(7, x78);
					prest.setString(8, x78);
					prest.setString(9, x78);
					prest.setString(10, x78);
					
					prest.executeUpdate();
					System.out.println("data successfully entered in to june withhelppriseexp");
					
					prest = con.prepareStatement("insert into jul_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
					prest.setString(1, param6);
					prest.setString(2, x2);
					prest.setString(3,  param7);
					prest.setString(4, x78);
					prest.setString(5, x78);
					prest.setString(6, x78);
					prest.setString(7, x78);
					prest.setString(8, x78);
					prest.setString(9, x78);
					prest.setString(10, x78);
					
					prest.executeUpdate();
					System.out.println("data successfully entered in to july withhelppriseexp");
					
					prest = con.prepareStatement("insert into au_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
					prest.setString(1, param6);
					prest.setString(2, x2);
					prest.setString(3,  param7);
					prest.setString(4, x78);
					prest.setString(5, x78);
					prest.setString(6, x78);
					prest.setString(7, x78);
					prest.setString(8, x78);
					prest.setString(9, x78);
					prest.setString(10, x78);
					
					prest.executeUpdate();
					System.out.println("data successfully entered in to august withhelppriseexp");
					
					prest = con.prepareStatement("insert into s_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
					prest.setString(1, param6);
					prest.setString(2, x2);
					prest.setString(3,  param7);
					prest.setString(4, x78);
					prest.setString(5, x78);
					prest.setString(6, x78);
					prest.setString(7, x78);
					prest.setString(8, x78);
					prest.setString(9, x78);
					prest.setString(10, x78);
					
					prest.executeUpdate();
					System.out.println("data successfully entered in to september withhelppriseexp");
					
					prest = con.prepareStatement("insert into o_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
					prest.setString(1, param6);
					prest.setString(2, x2);
					prest.setString(3,  param7);
					prest.setString(4, x78);
					prest.setString(5, x78);
					prest.setString(6, x78);
					prest.setString(7, x78);
					prest.setString(8, x78);
					prest.setString(9, x78);
					prest.setString(10, x78);
					
					prest.executeUpdate();
					System.out.println("data successfully entered in to october withhelppriseexp");
					
					prest = con.prepareStatement("insert into n_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
					prest.setString(1, param6);
					prest.setString(2, x2);
					prest.setString(3,  param7);
					prest.setString(4, x78);
					prest.setString(5, x78);
					prest.setString(6, x78);
					prest.setString(7, x78);
					prest.setString(8, x78);
					prest.setString(9, x78);
					prest.setString(10, x78);
					
					prest.executeUpdate();
					System.out.println("data successfully entered in to november withhelppriseexp");
					
					prest = con.prepareStatement("insert into d_withhelppriseexp  values(?,?,?,?,?,?,?,?,?,?)");
					prest.setString(1, param6);
					prest.setString(2, x2);
					prest.setString(3,  param7);
					prest.setString(4, x78);
					prest.setString(5, x78);
					prest.setString(6, x78);
					prest.setString(7, x78);
					prest.setString(8, x78);
					prest.setString(9, x78);
					prest.setString(10, x78);
					
					prest.executeUpdate();
					System.out.println("data successfully entered in to december withhelppriseexp");
					
					    //****************************************************************************//
					
					prest = con.prepareStatement("insert into withhelp_ter1 values(?,?,?,?,?,?)");
					prest.setString(1, param6);
					prest.setString(2, x2);
					prest.setString(3,  param7);
					prest.setString(4, x78);
					prest.setString(5, x78);
					prest.setString(6, x78);
	                	prest.executeUpdate();
					System.out.println("data successfully entered in to withhelp_ter1");
					
					prest = con.prepareStatement("insert into withhelp_ter2 values(?,?,?,?,?,?)");
					prest.setString(1, param6);
					prest.setString(2, x2);
					prest.setString(3,  param7);
					prest.setString(4, x78);
					prest.setString(5, x78);
					prest.setString(6, x78);
	                	prest.executeUpdate();
					System.out.println("data successfully entered in to withhelp_ter2");
					
					
					prest = con.prepareStatement("insert into withhelp_ter3 values(?,?,?,?,?,?)");
					prest.setString(1, param6);
					prest.setString(2, x2);
					prest.setString(3,  param7);
					prest.setString(4, x78);
					prest.setString(5, x78);
					prest.setString(6, x78);
	                	prest.executeUpdate();
					System.out.println("data successfully entered in to withhelp_ter3");
					
					prest = con.prepareStatement("insert into withhelp_ter4  values(?,?,?,?,?,?)");
					prest.setString(1, param6);
					prest.setString(2, x2);
					prest.setString(3,  param7);
					prest.setString(4, x78);
					prest.setString(5, x78);
					prest.setString(6, x78);
	                	prest.executeUpdate();
					System.out.println("data successfully entered in to withhelp_ter4");
				
		
		//******************************************************************************************************************************************//
			
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
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();

} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	

}
	}
}
