package net.javaguides.fileupload.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/DeleteRecordServlet")
public class DelleteRecordServlet extends HttpServlet {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/addcriminal";
    private static final String JDBC_USERNAME = "root";
    private static final String JDBC_PASSWORD = "shahnshah@786MD";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        Connection connection = null;
        PreparedStatement statement = null;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);

            String sql = "DELETE FROM usercase WHERE id = ?";
            statement = connection.prepareStatement(sql);
            statement.setInt(1, Integer.parseInt(id));

            int rowsDeleted = statement.executeUpdate();
            if (rowsDeleted > 0) {
            	out.println("<html>");
                out.println("<head>");
                out.println("<style>");
                out.println("  .container { text-align: center; background-color:yellow }");
                out.println("  body {background-image:url(Baground.jpg);background-size: cover; background-repeat:no-repeat; width: 100%; margin: 0; padding: 0;}");
                out.println("</style>");
                out.println("</head>");
                out.println("<body>");
                out.println("<div class='container'>");
                out.println("<h1>Record Deleted Successfully</h1>");
                out.println("</div>");
                out.println("</body>");
            	out.println("</html>");

                
            } else {
                out.println("<div class='container'>");
                out.println("<h1>No Record Found with ID: " + id + "</h1>");
                out.println("</div>");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            out.println("<div class='container'>");
            out.println("<h1>Error Deleting Record</h1>");
            out.println("<p>" + e.getMessage() + "</p>");
            out.println("</div>");
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
