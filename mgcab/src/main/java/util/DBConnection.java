package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static final String URL = "jdbc:mysql://localhost:3306/feedback";  // Change as per your database URL
    private static final String USER = "root";  // Change as per your database credentials
    private static final String PASSWORD = "123456";  // Change as per your database credentials

    public static Connection getConnection() throws SQLException {
        System.out.println("Attempting to connect to database...");
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
