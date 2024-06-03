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
 * Servlet implementation class newcasebyuser
 */
@WebServlet("/newcasebyuser")
public class newcasebyuser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public newcasebyuser() {
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

        String connectionString = "jdbc:mysql://localhost:3306/addcriminal";
        String username = "root";
        String password = "shahnshah@786MD";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(connectionString, username, password);
            String query = "SELECT * FROM usercase" ;
            PreparedStatement stmt = con.prepareStatement(query);
          
           
            
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                out.println("<html>");
                out.println("<head>");
                out.println("<title>RECORDS</title>");
                out.println("<link rel='stylesheet' href=https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css>");
                out.println("<link rel='stylesheet' href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css>");
                out.println("<style>");
                out.println("  body {background-image:url(Baground.jpg);background-size: cover; background-repeat:no-repeat; width: 100%; margin: 0; padding: 0;}");
                out.println(".navbar {background-image: linear-gradient(to right, #00bfff, #00ffd5); padding: 10px; width: 100%; position: fixed; top: 0; z-index: 1000; box-shadow: 0 2px 4px rgba(0,0,0,0.1);}");
                out.println(".navbar ul {list-style: none; margin: 0; padding: 0; display: flex; justify-content: center;}");
                out.println(".navbar li {display: inline; padding: 0 20px;}");
                out.println(".navbar a {text-decoration: none; color: black; font-size: 18px;}");
                out.println(".navbar a:hover {color: white;}");
                out.println(".container {text-align: center; color: yellow; margin: 100px auto 20px auto; border-radius: 10px; width: 80%; box-shadow: 0 0 10px rgba(0,0,0,0.1);}");
                out.println(".table-container {background-color: white; margin: 0 auto; padding: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0,0,0,0.1); width: 90%; overflow-x: auto;}");
                out.println("</style>");
                
                out.println("</head>");
                
                out.println("<body>");
                out.println("<div class='navbar'>");
                out.println("<ul>");
                out.println("<li><a href='findcrimnal.jsp'><i class='fa fa-home'></i> Home</a></li>");
                out.println("</ul>");
                out.println("</div>");

                out.println("<div class='container'>");
                out.println("<h1>USER FIR</h1>");
                out.println("</div>");

                // Table container
                out.println("<div class='table-container'>");
                out.println("<table border='1'>");
                out.println("<tr><th>CRIMINAL ID</th><th>YOUR NAME</th><th>CRIMINAL NAME</th><th>C_FATHER NAME</th><th>C_MOTHER NAME</th><th>YOUR NUMBER</th><th>CRIMINAL AGE</th><th>CRIMINAL RELIGION</th><th>CRIMINAL GENDER</th><th>FIR DATE</th><th>CASE TYPE</th><th>CASE REGION</th><th>YOUR ADDRESS</th><th>CRIMINAL ADDRESS</th><th>STATUS</th></tr>");// Table header row

                do {
                	out.println("<tr>");
                    out.println("<td>" + rs.getInt("id") + "</td>");
                    out.println("<td>" + rs.getString("your_name") + "</td>");
                    out.println("<td>" + rs.getString("criminal_name") + "</td>");
                    out.println("<td>" + rs.getString("cfather_name") + "</td>");
                    out.println("<td>" + rs.getString("cmother_name") + "</td>");
                    out.println("<td>" + rs.getString("your_number") + "</td>");
                    out.println("<td>" + rs.getString("criminal_dob") + "</td>");
                    out.println("<td>" + rs.getString("criminal_religion") + "</td>");
                    out.println("<td>" + rs.getString("criminal_gender") + "</td>");
                    out.println("<td>" + rs.getString("fir_date") + "</td>");
                    out.println("<td>" + rs.getString("case_type") + "</td>");
                    out.println("<td>" + rs.getString("case_region") + "</td>");
                    out.println("<td>" + rs.getString("your_address") + "</td>");
                    out.println("<td>" + rs.getString("criminal_address") + "</td>");

                    String active = rs.getString("request_wait");
                    String waiting = rs.getString("request_wait");  
                    String process = rs.getString("request_wait");
                   

                    if ("active".equals(active)) {
                        out.println("<td style='color: green;'>" + active + "</td>");
                    }else if ("waiting".equals(waiting)) {
                        out.println("<td style='color: yellow;'>" + waiting + "</td>");
                    } else if ("process".equals(process)) {
                        out.println("<td style='color: blue;'>" + process + "</td>");
                    };
                    
                    out.println("</tr>");
                    
                    
                    
                } while (rs.next());

                out.println("</table>"); // Closing table tag
                out.println("</div>");
              
                
                out.println("<title>Update Status</title>");
                out.println("<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'>");
                out.println("<style>");
                out.println(".container1 { max-width: 400px; margin: 0 auto; padding: 40px; border-radius: 5px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);margin-left:-2px; border-redius:10% }");
                out.println("header { text-align: center; margin-bottom: 30px; }");
                out.println("header h1 { color: green; margin-top: 5px; }");
                out.println("label { font-weight: bold; margin-bottom: 8px; color: yellow; }");
                out.println("input[type='text'], select { padding: 10px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 3px; width: 100%; }");
                out.println("button { background-color: #007bff; color: #fff; padding: 10px; border: none; border-radius: 5px; cursor: pointer; margin-top: 8px; width: 100%; }");
                out.println("button:hover { background-color: #a8e618; }");
                out.println(".container1 form {align-items: left; }");
                out.println("</style>");
                out.println("</div>");
                out.println("<div class='container1'>");
                out.println("<header>");
                out.println("<h1><b>UPDATE FIR STATUS</b></h1>");
                out.println("</header>");
                
                out.println("<form action='newcaseupdatestatus' method='post'>");
                out.println("<label for='id'>ID:</label>");
                out.println("<input type='text' name='id' id='id' required>");
                out.println("<label for='status'>STATUS:</label>");
                out.println("<select id='status' name='request_wait'>");
                out.println("<option value='active'>active</option>");
                out.println("<option value='process'>process</option>");
                out.println("</select>");
                out.println("<button type='submit'>UPDATE</button>");
                
                out.println("</form>");
                out.println("</div>");
                
                
                
                //delete record
                
                out.println("<title>Delete Record</title>");
                out.println("<link rel='stylesheet' href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css'>");
                out.println("<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>");
                out.println("<style>");
                out.println(".container2 { max-width: 400px; margin: 0 auto; padding: 40px; border-radius: 5px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.2); margin-right:-2px; margin-top:-420px; border-redius:10% }");
                out.println("form { display: flex; flex-direction: column; align-items: left; }");
                out.println("label, input, button { margin: 10px 0; }");
                out.println("input[type='text'] { padding: 10px; width: 300px; border: 1px solid #ccc; border-radius: 3px; }");
                out.println("button { background-color: #007bff; color: #fff; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer; }");
                out.println("button:hover { background-color: #a8e618; }");
                out.println(".h1 {color:green; }");
                out.println("</style>");
                out.println("</head>");
                out.println("<body>");
         
                out.println("<div class='container2'>");
                out.println("<h1 class='h1'>Delete Record</h1>");
                out.println("<form action='DeleteRecordServlet' method='post'>");
                out.println("<label for='id'>Enter Your ID:</label>");
                out.println("<input type='text' name='id' id='id' required>");
                out.println("<button type='submit'>Delete</button>");
                out.println("</form>");
                out.println("</div>");
                

                out.println("</body>");
                out.println("</html>");
            } else {
            	 out.println("<html>");
                 out.println("<head>");
                 out.println("<title>Delete Record</title>");
                 out.println("</head>");
                 
                 out.println("<body>");
                 
                 out.println("<style>");
                 out.println("  body {background-image:url(Baground.jpg);background-size: cover; background-repeat:no-repeat; width: 100%; margin: 0; padding: 0;}");
                 out.println(".container3 {text-align:center; color:yellow; margin-top:100px;}");

                 out.println("</style>");



                 out.println("<div class='container3'>");
                out.println("DATA NOT FOUND");
                out.println("</div>");

                

                out.println("</body>");
                out.println("</html>");
            }


            con.close();
            
        } catch (Exception ex)
        {
            ex.printStackTrace();
        }
	}

}
