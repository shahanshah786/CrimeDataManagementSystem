package net.javaguides.fileupload.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DataUpdate
 */
@WebServlet("/DataUpdate")
public class DataUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DataUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		 response.setContentType("text/html");
	        PrintWriter out = response.getWriter();

	        String id = request.getParameter("id");
	        String firstname = request.getParameter("firstname");
	        String lastname = request.getParameter("lastname");
	        String phone = request.getParameter("phone");
	        String age = request.getParameter("age");
	        String fir_date = request.getParameter("fir_date");
	        String cases = request.getParameter("cases");
	        String region = request.getParameter("region");
	        String address = request.getParameter("address");
	        
	     
	        
	        // Add other fields you want to update here

	        String connectionString = "jdbc:mysql://localhost:3306/addcriminal";
	        String username = "root";
	        String password = "shahnshah@786MD";

	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection con = DriverManager.getConnection(connectionString, username, password);

	            // Construct the SQL update statement
	            String query = "UPDATE data SET firstname=?, lastname=?,phone=?,age=?,fir_date=?,cases=?,region=?,address=? WHERE id=?";
	            PreparedStatement stmt = con.prepareStatement(query);
	            stmt.setString(1, firstname);
	            stmt.setString(2, lastname);
	            stmt.setString(3, phone);
	            stmt.setString(4, age);
	            stmt.setString(5, fir_date);
	            stmt.setString(6, cases);
	            stmt.setString(7, region);
	            stmt.setString(8, address);
	            stmt.setInt(9, Integer.parseInt(id)); // Assuming ID is an integer

	            int rowsUpdated = stmt.executeUpdate();

	            if (rowsUpdated > 0) {
	              //  out.println("Data updated successfully.");
	            	out.println("<html>");
	                out.println("<head>");
	                out.println("<title>UPDATE SUCCESSFUl</title>");
	                out.println("<link rel='stylesheet' href=https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css>");
	                out.println("<link rel='stylesheet' href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css>");
	                out.println("<style>");
	                out.println("  .container { text-align: center; }");
	                out.println("  .navbar {   background-image:linear-gradient(to right, #00bfff, #00ffd5); padding: 10px; }");
	                out.println("  .navbar ul { list-style: none; margin: 0; padding: 0; }");
	                out.println("  .navbar li { display: inline; margin-right: 20px; }");
	                out.println("  .navbar a { text-decoration: none; color: black; font-size: 18px; }");
	                out.println("  .table-container { margin: 20px; }");
	                out.println("</style>");
	                out.println("</head>");
	                out.println("<body>");

	                // Navbar
	                out.println("<div class='navbar'>");
	                out.println("<ul>");
	                out.println("<li><a href='crimnalsearch.jsp'><i class='fa fa-home'></i> Home</a></li>");
	                out.println("</ul>");
	                out.println("</div>");

	                out.println("<div class='container'>");
	                out.println("<h1>DATA UPDATE SUCCESSFULL</h1>");
	                out.println("</div>");

	                // Table container
	                out.println("<div class='table-container'>");
	                out.println("<table border='1'>");
	                

	            } else {
	                out.println("No records were updated. Check the ID.");
	            }

	            con.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
	    }
	
	}


