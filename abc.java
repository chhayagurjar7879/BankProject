package com.ram.controller;

import com.ram.bean.Transfer1Bean;
import com.ram.dao.BankDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class abc extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String acno = request.getParameter("accountNumber");
            String tacno = request.getParameter("toaccountNumber");
            String tdate = request.getParameter("transactiondate");
            String tamount = request.getParameter("transactionamount");
            
            Transfer1Bean tb = new Transfer1Bean();
            tb.setAccountNum(acno);
            tb.setBAN(tacno);
            tb.setTransactionDate(tdate);
            tb.setTransactionAmount(tamount);
            
            BankDao vd = new BankDao();
            boolean c = vd.transferMoney(tb);
            
            if(c) {
                System.out.println("Transfer success");
                out.println("<h1>Transfer Successful</h1>");
            } else {
                System.out.println("Transfer failed");
                out.println("<h1>Transfer Failed</h1>");
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}

