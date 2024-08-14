package com.ram.utility;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
public class ConnectionPool {
    static Connection conn;//member data static
    public static Connection connectDB(){
        try {
            //step 2 create connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url ="jdbc:mysql://localhost:3306/cybrome15";
            String un ="root";
            String pass = "mysql$12";
            conn = DriverManager.getConnection(url,un,pass);
            System.out.println("Database conectibity success");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConnectionPool.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionPool.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }
    public static void main(String[] args) {
        connectDB();
    }
}
