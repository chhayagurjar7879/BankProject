package com.ram.dao;
import com.ram.bean.AccountBean;
import com.ram.utility.ConnectionPool;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AccountDao {
  
    static Connection conn;

    public boolean createNewAccount(AccountBean ac){
        conn = ConnectionPool.connectDB();
        boolean b =  false;
        int r=0;
        String sql ="insert into ac_tbl values('"+ac.getAcount_num()+"','"+ac.getCustomer_name()+"','"+ac.getBalance()+"','"+ac.getUn()+"','"+ac.getPs()+"')";
        try {
            Statement stmt = conn.createStatement();
            r = stmt.executeUpdate(sql);
            if(r>0){
                b = true;
            }
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return b;
    }
//    ==============================================login check=============================================
  public AccountBean loginCheck(String username, String password){
      conn= ConnectionPool.connectDB();
      AccountBean x = new AccountBean();
      String sql = "select * from ac_tbl where un ='"+username+"' and ps ='"+password+"' ";
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            if(rs.next()){
                x.setAcount_num(rs.getString("acount_num"));
                x.setCustomer_name(rs.getString("customer_name"));
                x.setBalance(rs.getString("balance"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return x;
  }
//================================== main class =================================================
    public static void main(String[] args) {
        Scanner scn = new Scanner(System.in);

        AccountDao ad = new AccountDao();
        AccountBean x = new AccountBean();

        System.out.println("Enter username:");
        String userName = scn.nextLine();

        System.out.println("Enter password:");
        String password = scn.nextLine();

       AccountBean a = ad.loginCheck(userName, password);

        if (a != null) {
            System.out.println("Login successful");
            System.out.println("Acount Number: " + a.getAcount_num());
            System.out.println("Customer Name: " + a.getCustomer_name());
            System.out.println("Balance: " + a.getBalance());
        } else {
            System.out.println("Login failed");
        }
    }
    
}
