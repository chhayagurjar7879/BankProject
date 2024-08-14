package com.ram.bean;
public class Transfer1Bean {
     private int  transactionId;
    private String accountNum;
    private String  BAN;
    private String TransactionDate;
    private String TransactionAmount;

    public Transfer1Bean() {
    }

    public Transfer1Bean(int transactionId, String accountNum, String BAN, String TransactionDate, String TransactionAmount) {
        this.transactionId = transactionId;
        this.accountNum = accountNum;
        this.BAN = BAN;
        this.TransactionDate = TransactionDate;
        this.TransactionAmount = TransactionAmount;
    }

    public int getTransactionId() {
        return transactionId;
    }

    public void setTransactionId(int transactionId) {
        this.transactionId = transactionId;
    }

    public String getAccountNum() {
        return accountNum;
    }

    public void setAccountNum(String accountNum) {
        this.accountNum = accountNum;
    }

    public String getBAN() {
        return BAN;
    }

    public void setBAN(String BAN) {
        this.BAN = BAN;
    }

    public String getTransactionDate() {
        return TransactionDate;
    }

    public void setTransactionDate(String TransactionDate) {
        this.TransactionDate = TransactionDate;
    }

    public String getTransactionAmount() {
        return TransactionAmount;
    }

    public void setTransactionAmount(String TransactionAmount) {
        this.TransactionAmount = TransactionAmount;
    }
    
}
