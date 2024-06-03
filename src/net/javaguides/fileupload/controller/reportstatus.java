package net.javaguides.fileupload.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class reportstatus
 */
@WebServlet("/reportstatus")
public class reportstatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reportstatus() {
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
		doGet(request, response);
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        String your_number = request.getParameter("your_number");
        
        String connectionString = "jdbc:mysql://localhost:3306/addcriminal";
        String username = "root";
        String password = "shahnshah@786MD";
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(connectionString, username, password);
            String query = "SELECT * FROM usercase WHERE your_number=?" ;
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, your_number);
                     
            
            ResultSet rs = stmt.executeQuery();
     
            
            if (rs.next()) {
                out.println("<html>");
                out.println("<head>");
                out.println("<title>REPORT STATUS</title>");
                out.println("<link rel='stylesheet' href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css'>");
                out.println("<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>");
                out.println("<style>");
                out.println("  .container { text-align: center; margin-left:90px; }");
                out.println("  .container h1 { text-align: center; color:yellow; }");
                out.println("  body {background-image:url(Baground.jpg);background-size: cover; background-repeat:no-repeat; width: 100%; margin: 0; padding: 0;}");
                out.println("  .navbar {   background-image:linear-gradient(to right, #00bfff, #00ffd5); padding: 10px; width:400%; }");
                out.println("  .navbar ul { list-style: none; margin: 0; padding: 0; }");
                out.println("  .navbar li { display: inline; margin-right: 20px; }");
                out.println("  .navbar a { text-decoration: none; color: black; font-size: 18px; }");
                out.println("  .table-container {text-align: center;margin-left:400px; margin-right:400px; background-color:white;  }");
                out.println("</style>");
                out.println("</head>");
                out.println("<body>");

                // Navbar
                out.println("<div class='navbar'>");
                out.println("<ul>");
                out.println("<li><a href='ReportSatus.jsp'><i class='fa fa-home'></i> Home</a></li>");
                out.println("</ul>");
                out.println("</div>");

                out.println("<div class='container'>");
                out.println("<h1>REPORT STATUS</h1>");
                out.println("</div>");

                // Table container
                out.println("<div class='table-container'>");
                out.println("<table border='1'>");
                out.println("<tr><th>YOUR NAME</th><th>CRIMINAL NAME</th><th>YOUR NUMBER</th><th>STATUS</th></tr>");// Table header row

                do {
                    out.println("<tr>");
                    out.println("<td>" + rs.getString("your_name") + "</td>");
                    out.println("<td>" + rs.getString("criminal_name") + "</td>");
                    out.println("<td>" + rs.getString("your_number") + "</td>");
                  
                    String active = rs.getString("request_wait");
                    String close = rs.getString("request_wait");
                    String process = rs.getString("request_wait");
                    String waiting = rs.getString("request_wait");
                    
                    if ("active".equals(active)) {
                        out.println("<td style='color: green;'>" + active + "</td>");
                    } else if ("close".equals(close)) {
                        out.println("<td style='color: red;'>" + close + "</td>");
                    } else if ("process".equals(process)) {
                        out.println("<td style='color: blue;'>" + process + "</td>");
                    }
                   
                    else if ("waiting".equals(waiting)) {
                        out.println("<td style='color: red;'>" + waiting + "</td>");
                    }


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
