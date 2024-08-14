/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ram.controller;

import com.ram.bean.Transfer1Bean;
import com.ram.dao.BankDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
public class NewServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<style>");
            out.println("body { background-color: #003153; color: white; font-family: Arial, sans-serif; }");
            out.println("table { width: 80%; margin: auto; border-collapse: collapse; }");
            out.println("th, td { padding: 10px; border: 1px solid white; text-align: center; }");
            out.println("th { background-color: #005f87; }");
            out.println("tr:nth-child(even) { background-color: #004d73; }");
            out.println("tr:nth-child(odd) { background-color: #003153; }");
            out.println("h1 { text-align: center; }");
            out.println("</style>");
            
            out.println("<title>Servlet NewServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>All History of Transaction.....</h1>");
            out.println("<table align='center' border='1'>");
            out.println("<tr>");
            out.println("<th>TRANSACTION ID</th>");
            out.println("<th>ACCOUNT NUMBER</th>");
            out.println("<th>BENIFICARY ACCOUNT</th>");
            out.println("<th>TRASACTION-DATE</th>");
            out.println("<th> TRANSACTION AMMOUNT</th>");
            
            
            out.println("</tr>");
           BankDao bd = new BankDao();
            ArrayList<Transfer1Bean> al = bd.findAll();
            for (Transfer1Bean tb : al) {
                out.println("<tr>");
                out.println("<td>" + tb.getTransactionId() + "</td>");
                out.println("<td>" + tb.getAccountNum() + "</td>");
                out.println("<td>" + tb.getBAN() + "</td>");
                out.println("<td>" + tb.getTransactionDate() + "</td>");
                out.println("<td>" + tb.getTransactionAmount() + "</td>");
//                out.println("<td><a href='UpdateEmp?empno="+eb.getEmpno()+"'>EDIT</a></td>");
                out.println("</tr>");
            }
            out.println("</table>");
            out.println("<h1>Servlet NewServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
