import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/website_db";
        String user = "root";
        String password = "your_password"; // Replace with your DB password
        return DriverManager.getConnection(url, user, password);
    }
}
