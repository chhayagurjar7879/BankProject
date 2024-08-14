
package com.ram.dao;

import com.ram.bean.AccountBean;
import com.ram.bean.Transfer1Bean;
//import com.ram.bean.TransferBean;
import com.ram.utility.ConnectionPool;
import java.sql.Connection;
//import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Dell
 */
public class BankDao {
  static Connection conn = null;
//   =================================================ValidateAccount====================================
  private Boolean ValidateAccount(String ac) {
        conn = ConnectionPool.connectDB();
        boolean r = false;
        String sql = "select acount_num from ac_tbl where acount_num = '"+ac+"'";
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            if (rs.next()) {
                r = true;
            }
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(BankDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return r;
    }

//  ============================= Find balance========================================
 public double findBalance(String ac){
  double res =0;
   String sql = "select balance from ac_tbl where acount_num='"+ac+"'";
   conn = ConnectionPool.connectDB();
      try {
          Statement stmt  = conn.createStatement();
          ResultSet rs = stmt.executeQuery(sql);
           if (rs.next()) {
                res = rs.getDouble("balance");
            }
           conn.close();
      } catch (SQLException ex) {
          Logger.getLogger(BankDao.class.getName()).log(Level.SEVERE, null, ex);
      }
      return res;
 }
// ============================update balance ==========================================
public boolean updateBalance(String ac, double newbal){ 
 boolean b = false;
 conn = ConnectionPool.connectDB();
 String sql = "update ac_tbl set balance='"+newbal+"' where acount_num='"+ac+"'";
      try {
          Statement stmt = conn.createStatement();
          int r = stmt.executeUpdate(sql);
          if(r>0){
              b= true;
          }
          conn.close();
      } catch (SQLException ex) {
          Logger.getLogger(BankDao.class.getName()).log(Level.SEVERE, null, ex);
      }
      return b;
}
//================================TransferMoney===============================================

public boolean transferMoney(Transfer1Bean tb1) {
//        conn = ConnectionPool.connectDB();
boolean r = false;
int tid = 0;
BankDao vd = new BankDao();
double fromaccount = vd.findBalance(tb1.getAccountNum());
System.out.println("From account balance: " + fromaccount);
double tamount = Double.parseDouble(tb1.getTransactionAmount());
System.out.println("Transfer amount: " + tamount);

// Check if there is enough balance to transfer
if (fromaccount >= tamount) {
    // Update the from account
    vd.updateBalance(tb1.getAccountNum(), fromaccount - tamount);
    // Update the to account
    double toaccount = vd.findBalance(tb1.getBAN());
    vd.updateBalance(tb1.getBAN(), toaccount + tamount);

    // Generate transaction id
    tid = (int) (Math.random() * 1000);
    System.out.println("Generated number " + tid);
    String sql = "insert into tf1_tbl values('"+tb1.getTransactionId()+"','"+tb1.getAccountNum()+"','"+tb1.getBAN()+"','"+tb1.getTransactionDate()+"','"+tb1.getTransactionAmount()+"')";
 int p=0;
         try {
              conn = ConnectionPool.connectDB();
             Statement stmt = conn.createStatement();
              r=stmt.execute(sql);
         } catch (SQLException ex) {
             Logger.getLogger(BankDao.class.getName()).log(Level.SEVERE, null, ex);
         }
    r = true; // Set return value to true indicating success
} else {
    System.out.println("Insufficient funds");
}
    System.out.println(" Customers Account Number: "+tb1.getAccountNum());
        System.out.println(" Banifacery Account Number"+tb1.getBAN());
        System.out.println(" Transation Date of money: "+tb1.getTransactionDate());
        System.out.println(" Total Transaction Amount"+tb1.getTransactionAmount());
        System.out.println(" Transaction Id: "+tb1.getTransactionId());
        return r; 

}
//=================================== find all methode =================================================
public ArrayList<Transfer1Bean> findAll() {
    Connection conn = null;
    ArrayList<Transfer1Bean> al = new ArrayList<>();
    String sql = "SELECT * FROM tf1_tbl";
    
    try {
        conn = ConnectionPool.connectDB(); // Ensure you get a new connection here
        
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        
        while (rs.next()) {
            Transfer1Bean tb = new Transfer1Bean();
            tb.setTransactionId(rs.getInt("transactionId"));
            tb.setAccountNum(rs.getString("accountNum"));
            tb.setBAN(rs.getString("BAN"));
            tb.setTransactionDate(rs.getString("TransactionDate"));
            tb.setTransactionAmount(rs.getString("TransactionAmount"));
            
            al.add(tb); // Add the Transfer1Bean object to the ArrayList
        }
    } catch (SQLException ex) {
        Logger.getLogger(BankDao.class.getName()).log(Level.SEVERE, "Error in findAll method", ex);
    } finally {
        try {
            if (conn != null) {
                conn.close(); // Close the connection in the finally block
            }
        } catch (SQLException ex) {
            Logger.getLogger(BankDao.class.getName()).log(Level.SEVERE, "Error closing connection", ex);
        }
    }
    
    return al;
}




//  ================================== main method=================================================
    public static void main(String[] args) {
     BankDao bd = new BankDao();
//    1.================================validateAccount====================
// boolean b = bd.ValidateAccount("1234567891");
//        if(b) {
//            System.out.println("It is a valid account");
//        } else {
//            System.out.println("Not a valid account");
//        }
// ================================================Findbalance==============
Scanner scn = new Scanner(System.in);
AccountBean ab = new AccountBean();
System.out.println("enter account number");
String accnon = scn.nextLine();
//  e.setEmpno(empno);
ab.setAcount_num(accnon);
System.out.println("Balance"+bd.findBalance("101"));
//================================update balance======================
//Boolean b=bd.updateBalance("123456790",6000);
//System.out.println(""+b);  
       
// ==========================TransferMoney ==========================================================     

//Transfer1Bean tb1 = new Transfer1Bean();
// tb1.setAccountNum("123456789000");
// tb1.setBAN("123456790");
// tb1.setTransactionAmount("1100");
// tb1.setTransactionDate("18-may-2024");
// tb1.setTransactionId(4444);
// boolean b = bd.transferMoney(tb1);
//  System.out.println("Amount Transfer Success: "+b);

//=============== find all methode ===================================================
// ArrayList<Transfer1Bean> transferList = bd.findAll();
//        
//        // Step 3: Process the retrieved data
//        for (Transfer1Bean transfer : transferList) {
//            System.out.println("Transaction ID: " + transfer.getTransactionId());
//            System.out.println("Account Number: " + transfer.getAccountNum());
//            System.out.println("BAN: " + transfer.getBAN());
//            System.out.println("Transaction Date: " + transfer.getTransactionDate());
//            System.out.println("Transaction Amount: " + transfer.getTransactionAmount());
//            System.out.println("-----------------------------------------");
//        }
//        ============================================================================================
        
        // Optionally, further operations with the retrieved data
    }
    }
  

