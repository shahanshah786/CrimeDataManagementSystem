package net.javaguides.fileupload.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NewCaseUpdateStatus
 */
@WebServlet("/newcaseupdatestatus")
public class NewCaseUpdateStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewCaseUpdateStatus() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
        String request_wait = request.getParameter("request_wait");
        
        
        
        
        String connectionString = "jdbc:mysql://localhost:3306/addcriminal";
        String username = "root";
        String password = "shahnshah@786MD";
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(connectionString, username, password);

            // Construct the SQL update statement
            String query = "UPDATE usercase SET request_wait=? WHERE id=?";
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, request_wait);
            stmt.setInt(2, Integer.parseInt(id)); 
            
            int rowsUpdated = stmt.executeUpdate();

            if (rowsUpdated > 0) {
              //  out.println("Data updated successfully.");
            	out.println("<html>");
                out.println("<head>");
                out.println("<title>UPDATE SUCCESSFUl</title>");
                out.println("<link rel='stylesheet' href=https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css>");
                out.println("<link rel='stylesheet' href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css>");
                out.println("<style>");
                out.println("  .container { text-align: center; background-color:yellow }");
                out.println("  body {background-image:url(Baground.jpg);background-size: cover; background-repeat:no-repeat; }");
             
                out.println("</style>");
                out.println("</head>");
                out.println("<body>");

               

                out.println("<div class='container'>");
                out.println("<h1>DATA UPDATE SUCCESSFULL</h1>");
                out.println("</div>");

            } else {
                out.println("No records were updated. Check the ID.");
            }

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
	}

}
