package net.javaguides.fileupload.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class facedetect
 */

@MultipartConfig(maxFileSize = 16177215) // upload file's size up to 16MB
@WebServlet("/facedetect")
public class facedetect extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public facedetect() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @param picture 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		doGet(request, response);
		
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();

    	System.out.println("In do post method of Add Image servlet.");
		Part file=request.getPart("picture");	
		String picture=file.getSubmittedFileName();    

        String connectionString = "jdbc:mysql://localhost:3306/addcriminal";
        String username = "root";
        String password = "Shahnshah@123md#";

        try {
        	
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(connectionString, username, password);
            String query = "SELECT * FROM form WHERE picture=?" ;
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, picture);       
            
            ResultSet rs = stmt.executeQuery();

		if (rs.next()) {
            out.println("<html>");
            out.println("<head>");
            out.println("<title>CRIMINAL DETAILS</title>");
            out.println("<link rel='stylesheet' href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css'>");
            out.println("<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>");
            out.println("<style>");
            out.println("  .container { text-align: center; }");
            out.println("  .navbar { background-color: yellow; padding: 10px; widht:400%; }");
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
            out.println("<h1>CRIMINAL DETAILS</h1>");
            out.println("</div>");

            // Table container
            out.println("<div class='table-container'>");
            out.println("<table border='1'>");
            out.println("<tr><th>CRIMINAL ID</th><th>First Name</th><th>Last Name</th><th>Father Name</th><th>Mother Name</th><th>PHONE</th><th>Age</th><th>Religion</th><th>Gender</th><th>FIR</th><th>CASE</th><th>Region</th><th>Address</th><th>Picture</th></tr>");// Table header row

            do {
                out.println("<tr>");
                out.println("<td>" + rs.getInt("id") + "</td>");
                out.println("<td>" + rs.getString("firstname") + "</td>");
                out.println("<td>" + rs.getString("lastname") + "</td>");
                out.println("<td>" + rs.getString("fathername") + "</td>");
                out.println("<td>" + rs.getString("mothername") + "</td>");
                out.println("<td>" + rs.getString("phone") + "</td>");
                out.println("<td>" + rs.getString("age") + "</td>");
                out.println("<td>" + rs.getString("religion") + "</td>");
                out.println("<td>" + rs.getString("gender") + "</td>");
                out.println("<td>" + rs.getString("fir_date") + "</td>");

                String active = rs.getString("cases");
                String close = rs.getString("cases");
                String pending = rs.getString("cases");
                if ("active".equals(active)) {
                    out.println("<td style='color: green;'>" + active + "</td>");
                } else if ("close".equals(close)) {
                    out.println("<td style='color: red;'>" + close + "</td>");
                } else if ("pending".equals(pending)) {
                    out.println("<td style='color: blue;'>" + pending + "</td>");
                }

                out.println("<td>" + rs.getString("region") + "</td>");
                
                out.println("<td>" + rs.getString("address") + "</td>");
                
                
                String imageFileName=rs.getString("picture");
                out.println("<td><img src='image/" + imageFileName + "' alt='Criminal Picture' style='max-width: 150px; max-height: 150px;'></td>");         
                out.println("</tr>");

            } while (rs.next());

            out.println("</table>"); // Closing table tag
            out.println("</div>");

            out.println("</body>");
            out.println("</html>");
        } else {
            out.println("<p style='color: yellow;'>DATA NOT FOUND</p>");
        }


        con.close();
        
    } catch (Exception ex)
    {
        ex.printStackTrace();
    }
 }


}
