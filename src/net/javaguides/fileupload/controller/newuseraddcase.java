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
@WebServlet("/newuseraddcase")
public class newuseraddcase extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	 response.setContentType("text/html");
         PrintWriter out = response.getWriter();
        // Retrieve form data
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("name");
        String fatherName = request.getParameter("fathername");
        String motherName = request.getParameter("mothername");
        String phoneNumber = request.getParameter("phone");
        String dob = request.getParameter("age");
        String religion = request.getParameter("religion");
        String gender = request.getParameter("gender");
        String firDate = request.getParameter("fir_date");
        String caseType = request.getParameter("cases");
        String caseRegion = request.getParameter("region");
        String yourAddress = request.getParameter("Youraddress");
        String criminalAddress = request.getParameter("Crimnaladdress");
        String requestWait = request.getParameter("request_wait");
        
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/addcriminal", "root", "shahnshah@786MD");

            String query = "INSERT INTO usercase(your_name, criminal_name, cfather_name, cmother_name, your_number,criminal_dob,criminal_religion,criminal_gender,fir_date,case_type,case_region,your_address,criminal_address,request_wait) VALUES (?, ?, ?, ?, ?,?,?,?,?,?,?,?,?,?)";
            stmt = conn.prepareStatement(query);
            
            stmt.setString(1, firstName);
            stmt.setString(2, lastName);
            stmt.setString(3, fatherName);
            stmt.setString(4, motherName);
            stmt.setString(5, phoneNumber);
            stmt.setString(6, dob);
            stmt.setString(7, religion);
            stmt.setString(8, gender);
            stmt.setString(9, firDate);
            stmt.setString(10, caseType);
            stmt.setString(11, caseRegion);
            stmt.setString(12, yourAddress);
            stmt.setString(13, criminalAddress);
            stmt.setString(14, requestWait);
            
           
            
            
            
            stmt.executeUpdate();

            out.println("<h2>SUCCESSFULL DATA!</h2>");
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
