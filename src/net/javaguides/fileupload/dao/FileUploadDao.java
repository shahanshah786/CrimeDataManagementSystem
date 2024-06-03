package net.javaguides.fileupload.dao;

import java.sql.*;


public class FileUploadDao {

	  private static final String url = "jdbc:mysql://localhost:3306/addcriminal";
	  private static final String user = "root";
	  private static final String password = "shahnshah@786MD";

	  private static final String sql = "INSERT INTO data(firstname,lastname,fathername,mothername,phone,age,religion,gender,fir_date,cases,region,address,picture) values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
      
    public int uploadFile(String firstname, String lastname, String fathername, String mothername,String phone,String age,String religion,String gender,String fir_date,String cases, String region, String address,String picture) {
        int row = 0;
        try {
        	
			Class.forName("com.mysql.jdbc.Driver");
			
		} catch (ClassNotFoundException e1) {
			
			e1.printStackTrace();
		}

        try (Connection connection = DriverManager
            .getConnection(url, user, password);
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection
            .prepareStatement(sql)) {
        	
        	preparedStatement.setString(1, firstname);
        	preparedStatement.setString(2, lastname);
        	preparedStatement.setString(3, fathername);
        	preparedStatement.setString(4, mothername);
        	preparedStatement.setString(5, phone);
        	preparedStatement.setString(6, age);
        	preparedStatement.setString(7, religion);
        	preparedStatement.setString(8, gender);
        	preparedStatement.setString(9, fir_date);
        	preparedStatement.setString(10, cases);
        	preparedStatement.setString(11, region);
        	preparedStatement.setString(12, address);
        	preparedStatement.setString(13, picture);


     	
            // sends the statement to the database server
            row = preparedStatement.executeUpdate();
            
            
        } catch (SQLException e) {
           
            printSQLException(e);
        }
        return row;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
