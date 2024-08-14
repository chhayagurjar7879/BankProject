package com.ram.bean;
public class AccountBean {
  private String acount_num;
  private String customer_name;
  private String  balance;
  private String un;
  private String ps;

    public AccountBean() {
    }

    public AccountBean(String acount_num, String customer_name, String balance, String un, String ps) {
        this.acount_num = acount_num;
        this.customer_name = customer_name;
        this.balance = balance;
        this.un = un;
        this.ps = ps;
    }

    public String getAcount_num() {
        return acount_num;
    }

    public void setAcount_num(String acount_num) {
        this.acount_num = acount_num;
    }

    public String getCustomer_name() {
        return customer_name;
    }

    public void setCustomer_name(String customer_name) {
        this.customer_name = customer_name;
    }

    public String getBalance() {
        return balance;
    }

    public void setBalance(String balance) {
        this.balance = balance;
    }

    public String getUn() {
        return un;
    }

    public void setUn(String un) {
        this.un = un;
    }

    public String getPs() {
        return ps;
    }

    public void setPs(String ps) {
        this.ps = ps;
    }

    public void setBalance(double balance) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
