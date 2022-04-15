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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
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
            request.getRequestDispatcher("./UserViews/Classes.jsp").forward(request, response);
        }
        
        try { 
            Date date1=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S").parse(date);
            System.out.println(date1);
            
            
        } catch (ParseException ex) {
            Logger.getLogger(RegisterClass.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println(date);
        
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
