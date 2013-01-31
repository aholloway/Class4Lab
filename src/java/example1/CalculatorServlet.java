/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package example1;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Drew
 */
@WebServlet(name = "CalculatorServlet", urlPatterns = {"/CalculatorServlet"})
public class CalculatorServlet extends HttpServlet {
    private static final String destination = "example1/page2.jsp";

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String strX = request.getParameter("x").toString();
        String strY = request.getParameter("y").toString();
        
        
        try {
            // We can retrieve these from named form elements or as QueryString parameters (in URL)
            String x = request.getParameter("x");
            // But we can store them in the request object as "attributes"
            request.setAttribute("x", x);
            String y = request.getParameter("y");
            request.setAttribute("y", y);   

            // Now can forward the request and response objects to the destination page,
            // so long as it's a JSP or Servlet
            RequestDispatcher dispatcher =
                        getServletContext().getRequestDispatcher(destination);
                    dispatcher.forward(request, response);
            /* TODO output your page here. You may use following sample code. */
            /*out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CalculatorServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet GreetingServlet at " + request.getContextPath() + "</h1>");
            out.println("<h1>Your answer is  " + Integer.parseInt(strX) * Integer.parseInt(strY) + "</h1>");
            out.println("</body>");
            out.println("</html>");*/
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
