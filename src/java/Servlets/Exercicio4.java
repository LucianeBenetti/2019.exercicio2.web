
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
public class Exercicio4 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         
        
        double n1 = Integer.parseInt(request.getParameter("nota1"));
        double n2 = Integer.parseInt(request.getParameter("nota2"));
        double n3 = Integer.parseInt(request.getParameter("nota3"));
        double p1 = Integer.parseInt(request.getParameter("peso1"));
        double p2 = Integer.parseInt(request.getParameter("peso2"));
        double p3 = Integer.parseInt(request.getParameter("peso3"));
        double media = 0;
        double pesos = p1+p2+p3;
      
       media = ((n1*p1) +(n2*p2) +(n3*p3))/pesos;
       
          
        request.setAttribute("media", new Double (media));
        request.getRequestDispatcher("exercicio4.jsp").forward(request, response);
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
