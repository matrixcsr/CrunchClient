/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.humber.controller;

import com.humber.interfaces.BookingClass;
import com.humber.services.BookingService;
import com.humber.services.IBooking;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Chaitanya
 */
@WebServlet(name = "UserBookings", urlPatterns = {"/UserBookings"})
public class UserBookings extends HttpServlet {

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
        BookingService service = new BookingService();
        IBooking port = service.getBookingPort();
        
        
        String id = null;
        String isAdmin = null;
        isAdmin = request.getParameter("val");
        id = request.getParameter("id");
        
        System.out.println(id);
        System.out.println(isAdmin);
        try {
            if (id != null || !"".equals(id)) {
                List<BookingClass> bookings = port.getUserBookings(Integer.valueOf(id));
                request.setAttribute("bookings", bookings);
                request.getRequestDispatcher("./UserViews/Bookings.jsp").forward(request, response);
            } 
            else if(isAdmin != null || !"".equals(isAdmin)) {
                //Admin retrieves all bookings
                List<BookingClass> bookings = port.getUserBookings(-1);
                request.setAttribute("bookings", bookings);
                request.getRequestDispatcher("./AdminViews/UserBookings.jsp").forward(request, response);
            } 
            else {
                request.setAttribute("errorMessage", "Cannot Process Request");
                request.getRequestDispatcher("./common/Error.jsp").forward(request, response);
            }
        } catch (Exception e) {
            request.setAttribute("errorMessage", e);
            request.getRequestDispatcher("./common/Error.jsp").forward(request, response);
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
        
         BookingService service = new BookingService();
        IBooking port = service.getBookingPort();
        String id = null;
        String isAdmin = null;
        isAdmin = request.getParameter("val");
        id = request.getParameter("id");
        try{
            if (id != null || "".equals(id)) {
                List<BookingClass> bookings = port.getUserBookings(Integer.valueOf(id));
                request.setAttribute("bookings", bookings);
                request.getRequestDispatcher("./UserViews/Bookings.jsp").forward(request, response);
            } 
            else if(isAdmin != null || "".equals(isAdmin)) {
                //Admin retrieves all bookings
                List<BookingClass> bookings = port.getUserBookings(-1);
                request.setAttribute("bookings", bookings);
                request.getRequestDispatcher("./AdminViews/UserBookings.jsp").forward(request, response);
            } 
            else {
                request.setAttribute("errorMessage", "Cannot Process Request");
                request.getRequestDispatcher("./common/Error.jsp").forward(request, response);
            }
        }
        catch (Exception e) {
            request.setAttribute("errorMessage", e);
            request.getRequestDispatcher("./common/Error.jsp").forward(request, response);
        }
                    
        
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
