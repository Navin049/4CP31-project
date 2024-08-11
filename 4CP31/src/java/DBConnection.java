import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    public static Connection initializeDatabase() throws SQLException, ClassNotFoundException {
        String dbDriver = "com.mysql.jdbc.Driver";
        String dbURL = "jdbc:mysql://localhost:3306/";
        String dbName = "4CP31"; // Replace with your database name
        String dbUsername = "root"; // Replace with your MySQL username
        String dbPassword = ""; // Replace with your MySQL password

        Class.forName(dbDriver);
        Connection con = DriverManager.getConnection(dbURL + dbName, dbUsername, dbPassword);
        return con;
    }
}
