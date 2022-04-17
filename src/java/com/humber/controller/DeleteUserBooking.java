/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.humber.controller;

import com.humber.services.BookingService;
import com.humber.services.IBooking;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Chaitanya
 */
@WebServlet(name = "DeleteUserBooking", urlPatterns = {"/DeleteUserBooking"})
public class DeleteUserBooking extends HttpServlet {

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

        String bookingID = request.getParameter("booking_id");
        Cookie[] cookies = request.getCookies();
        String isAdmin = "";
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("isAdmin")) {
                    isAdmin = cookie.getValue();
                }
            }
        }
        boolean status;
        if (bookingID != null || !bookingID.isEmpty()) {
            if (!isAdmin.isEmpty()) {
                status = port.deleteBooking(Integer.valueOf(bookingID));
                if (status) {
                   response.sendRedirect(request.getContextPath() + "/AdminViews/UserBookings.jsp");
                }
            } else {
                status = port.deleteBooking(Integer.valueOf(bookingID));
                if (status) {
                   response.sendRedirect(request.getContextPath() + "/UserViews/Bookings.jsp");
                }
            }
        } else {
            request.setAttribute("errorMessage", "Cannot Process Request");
            request.getRequestDispatcher("./common/Error.jsp").forward(request, response);
        }

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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
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
