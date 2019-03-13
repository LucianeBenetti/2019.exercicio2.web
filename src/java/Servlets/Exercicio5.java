/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 80130917
 */
public class Exercicio5 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        double A11 = Double.parseDouble(request.getParameter("A11"));
        double A12 = Double.parseDouble(request.getParameter("A12"));
        double A13 = Double.parseDouble(request.getParameter("A13"));
        double B21 = Double.parseDouble(request.getParameter("B21"));
        double B22 = Double.parseDouble(request.getParameter("B22"));
        double B23 = Double.parseDouble(request.getParameter("B23"));
        double C31 = Double.parseDouble(request.getParameter("C31"));
        double C32 = Double.parseDouble(request.getParameter("C32"));
        double C33 = Double.parseDouble(request.getParameter("C33"));   
           
        
        DecimalFormat df = new DecimalFormat("##.00");
        String determinante = df.format(((A11*B22*C33 + A12*B23*C31 + A13*B21*C32) - (C31*B22*A13 + C32*B23*A11 + C33*B21*A12)));
        
        request.setAttribute("determinante", determinante);
               
        request.getRequestDispatcher("exercicio5.jsp").forward(request, response);
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
