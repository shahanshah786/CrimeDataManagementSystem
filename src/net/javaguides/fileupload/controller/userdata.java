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

/**
 * Servlet implementation class userdata
 */
@SuppressWarnings("serial")
@WebServlet("/userdata")
public class userdata extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String phone = request.getParameter("phone");
        String usr = request.getParameter("usr");
        String pws = request.getParameter("pws");

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/addcriminal", "root", "shahnshah@786MD");

            String query = "INSERT INTO user(firstname, lastname, phone, usr, pws) VALUES (?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(query);
            
            stmt.setString(1, firstname);
            stmt.setString(2, lastname);
            stmt.setString(3, phone);
            stmt.setString(4, usr);
            stmt.setString(5, pws);
            stmt.executeUpdate();

            out.println("<h2>Sign up successful!</h2>");
        } catch (Exception e) {
            out.println("<h2>Error: " + e.getMessage() + "</h2>");
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                out.println("<h2>Error closing resources: " + e.getMessage() + "</h2>");
            }
        }
    }
}