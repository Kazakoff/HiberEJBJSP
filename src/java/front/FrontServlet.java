/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package front;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pagectrl.vCustI;


/**
 *
 * @author kazakoff
 */
public class FrontServlet extends HttpServlet {
/*    @EJB
     vCustI vc;
 */   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
             /* TODO output your page here. You may use following sample code. */
    }

   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
       //  request.getRequestDispatcher("/test.jsp").forward(request, response);
       
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        request.getRequestDispatcher("BeanList.jsp").forward(request, response);
        
   /*     try (PrintWriter out = response.getWriter()) {

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FrontServlet</title>");            
            out.println("</head>");
            out.println("<body>");
           
            out.println("<ul>"); 

            
            vc.getPage(response);
           
           out.println("</body>");
           out.println("</html>");
        
    }
        catch (Exception e)
        {
            int f = 5;
       }
*/    
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
