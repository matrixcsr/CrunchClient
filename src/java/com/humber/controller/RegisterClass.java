/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.humber.controller;

import com.humber.services.BookingService;
import com.humber.services.IBooking;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Matrix
 */
public class RegisterClass extends HttpServlet {


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
        
        BookingService service = new BookingService();
        IBooking port = service.getBookingPort();
        
        String id = request.getParameter("userId");
        String class_id = request.getParameter("classId");
        String location  = request.getParameter("location");
        String date  = request.getParameter("date");
        if(id == null || class_id == null || location == null || date == null){
            request.setAttribute("error", "Something went wrong");
            request.getRequestDispatcher("./UserViews/Bookings.jsp").forward(request, response);
            return;
        }
        String status = port.createBooking(Integer.valueOf(id), date, Integer.valueOf(class_id), location);
        if(status.equals("success")) {
            response.sendRedirect(request.getContextPath() + "/UserViews/Bookings.jsp");
        } else {
            request.setAttribute("error", "Booking Cannot be created");
            request.getRequestDispatcher("./UserViews/RegisterBoxing.jsp").forward(request, response);
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
