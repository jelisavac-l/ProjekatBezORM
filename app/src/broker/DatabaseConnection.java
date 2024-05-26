package broker;

import java.sql.*;

public class DatabaseConnection {

    private static DatabaseConnection instance = null;
    private Connection conn = null;

    private DatabaseConnection() {}

    private void init() throws SQLException {
        final String DB_URL = "jdbc:mysql://localhost:3306/ProjTest1";
        final String USER = "root";
        final String PASS = "";
        
        conn = DriverManager.getConnection(DB_URL, USER, PASS);

    }

    public Connection getConnection() {
        return conn;
    }

    public static Connection getInstance() throws SQLException {
        if (instance != null && !instance.getConnection().isClosed()) {
            return instance.getConnection();
        } else {
            instance = new DatabaseConnection();
            instance.init();
            return instance.getConnection();
        }
    }
}
