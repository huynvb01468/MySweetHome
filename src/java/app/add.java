/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app;

import entity.LandLot;
import entity.Post;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DataProcess;

/**
 *
 * @author NguyenVan
 */
public class add extends HttpServlet {

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
        int iduser = Integer.parseInt(request.getParameter("id"));
        if ("addA".equals(action)) {
//            String title = request.getParameter("id");
//            System.out.println(title);
//            response.sendRedirect("success.jsp");
            String title = request.getParameter("txtTitle");
            String image = request.getParameter("txtImage");
            String address = request.getParameter("txtAddress");
            int city = Integer.parseInt(request.getParameter("city"));
            int type_landlot_id = Integer.parseInt(request.getParameter("type_landlot_id"));
            int type_post_id = Integer.parseInt(request.getParameter("type_post_id"));
            float price = Float.parseFloat(request.getParameter("txtPrice"));
            float SqFootage = Float.parseFloat(request.getParameter("txtSqFootage"));
            int type_demand_id = 2;
            int bedroom = Integer.parseInt(request.getParameter("bedroom"));
            int bathroom = Integer.parseInt(request.getParameter("bathroom"));
            String desciption = request.getParameter("desciption");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date date = new Date();
            String time = sdf.format(date);
            LandLot l = new LandLot();
            l.setTitle(title);
            l.setPrice(price);
            l.setSquareFootage(SqFootage);
            l.setCity_id(city);
            l.setAddress(address);
            l.setBedroom(bedroom);
            l.setBathroom(bathroom);
            l.setImage(image);
            l.setStatus("Selling");
            l.setDescription(desciption);
            l.setTypelandlot(type_landlot_id);
            Post p = new Post();
            p.setUser_id(iduser);
            p.setType_post(type_post_id);
            p.setType_demand(type_demand_id);
            int timeout = 3;
            p.setTimeOut(timeout);
            p.setDate(time);
            String statusPost = "Waiting";
            p.setStatusPost(statusPost);
            DataProcess d = new DataProcess();
            d.addLandLotPost(l);
            d.addPost(p, l);
            response.sendRedirect("success.jsp");
        } else if ("addMua".equals(action)) {
            String title = request.getParameter("txtTitle");
            String image = null;
            String address = request.getParameter("txtAddress");
            int city = Integer.parseInt(request.getParameter("city"));
            int type_landlot_id = Integer.parseInt(request.getParameter("type_landlot_id"));
            int type_post_id = 2;
            float price = Float.parseFloat(request.getParameter("txtPrice"));
            float SqFootage = Float.parseFloat(request.getParameter("txtSqFootage"));
            int type_demand_id = 1;
            int bedroom = Integer.parseInt(request.getParameter("bedroom"));
            int bathroom = Integer.parseInt(request.getParameter("bathroom"));
            String desciption = request.getParameter("desciption");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date date = new Date();
            String time = sdf.format(date);
            LandLot l = new LandLot();
            l.setTitle(title);
            l.setPrice(price);
            l.setSquareFootage(SqFootage);
            l.setCity_id(city);
            l.setAddress(address);
            l.setBedroom(bedroom);
            l.setBathroom(bathroom);
            l.setImage(image);
            l.setStatus("Selling");
            l.setDescription(desciption);
            l.setTypelandlot(type_landlot_id);
            Post p = new Post();
            p.setUser_id(iduser);
            p.setType_post(type_post_id);
            p.setType_demand(type_demand_id);
            int timeout = 3;
            p.setTimeOut(timeout);
            p.setDate(time);
            String statusPost = "Waiting";
            p.setStatusPost(statusPost);
            DataProcess d = new DataProcess();
            d.addLandLotPost(l);
            d.addPost(p, l);
            response.sendRedirect("Home.jsp");
        } else {
            response.sendRedirect("Error.jsp");
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
