/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.DataProcess;

/**
 *
 * @author NguyenVan
 */
public class SearchServlet extends HttpServlet {

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
        String priceFrom = request.getParameter("txtPriceFrom");
        String priceTo = request.getParameter("txtPriceTo");
        String cityID = request.getParameter("city");
        String typeLandlotID = request.getParameter("type_landlot_id");
        String typeDemandID = request.getParameter("type_demand");
        String bedroom = request.getParameter("bedroom");
        String bathroom = request.getParameter("bathroom");
        String squareFootage = request.getParameter("squareFootage");
        
        HttpSession session = request.getSession();
        session.setAttribute("priceFrom", priceFrom);
        session.setAttribute("priceTo", priceTo);
        session.setAttribute("cityID", cityID);
        session.setAttribute("typeLandlotID", typeLandlotID);
        session.setAttribute("typeDemandID", typeDemandID);
        session.setAttribute("bedroom", bedroom);
        session.setAttribute("bathroom", bathroom);
        session.setAttribute("squareFootage", squareFootage);
        
//        if("".equals(request.getParameter("txtPriceTo"))){
//            session.setAttribute("priceTo", 999999999);
//        }else{
//            float priceTo = Float.parseFloat(request.getParameter("txtPriceTo"));
//            session.setAttribute("priceTo", priceTo);
//        }
        System.out.println(bedroom);
        System.out.println(bathroom);
        response.sendRedirect("SearchInfo.jsp");
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
