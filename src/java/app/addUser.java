/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package app;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DataProcess;

/**
 *
 * @author NguyenVan
 */
public class addUser extends HttpServlet {

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
        String action = request.getParameter("action");
        if ("add".equals(action)) {
            String uName = request.getParameter("txtUsername");
            String uPass = request.getParameter("txtPassword");
            String uEmail = request.getParameter("txtEmail");
            String uBirth = request.getParameter("txtBirthday");
            String uFullname = request.getParameter("txtFullname");
            String uAddress = request.getParameter("txtAddress"); 
            String uGender = request.getParameter("gender"); 
            int type = Integer.parseInt(request.getParameter("type"));
            float money = 0;
            DataProcess db = new DataProcess();
            if (db.checkUser(uName) == false) {
                if (db.addUser(uName, uPass, type, uFullname, uBirth, uGender , uEmail, money, uAddress )) {
                    
                    response.sendRedirect("Home.jsp");
                } else {
                    response.sendRedirect("Error.jsp?code=1");
                }
            } else {
                response.sendRedirect("Error.jsp?code=2");
            }
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
