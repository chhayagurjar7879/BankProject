/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ram.dao;

import com.ram.bean.TransferData;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dell
 */
public class TransferDataDAO {
     private String jdbcURL = "jdbc:mysql://localhost:3306/yourdatabase";
    private String jdbcUsername = "root";
    private String jdbcPassword = "password";
    private static final String SELECT_ALL_TRANSFERS = "SELECT * FROM transfers";

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            System.out.println("Database connected!");
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public List<TransferData> selectAllTransfers() {
        List<TransferData> transfers = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_TRANSFERS)) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int transactionId = rs.getInt("transaction_id");
                String accountNum = rs.getString("account_num");
                String BAN = rs.getString("BAN");
                String transactionDate = rs.getString("transaction_date");
                double transactionAmount = rs.getDouble("transaction_amount");
                TransferData transferData = new TransferData(transactionId, accountNum, BAN, transactionDate, transactionAmount);
                transfers.add(transferData);
                System.out.println("Fetched: " + transferData);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return transfers;
    }
}
