/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.humber.controller;

import com.humber.interfaces.User;
import com.humber.services.IUsers;
import com.humber.services.UsersService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Matrix
 */
public class Membership extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        UsersService usersService = new UsersService();
        IUsers port = usersService.getUsersPort();

        String id = request.getParameter("userId");
        String memId = request.getParameter("memId");
        if (id == null || memId == null || id.isEmpty() || memId.isEmpty()) {
            request.setAttribute("errorMessage", "Cannot Process Request");
            request.getRequestDispatcher("./common/Error.jsp").forward(request, response);
        } else {
            boolean status = port.addMembership(Integer.valueOf(id), Integer.valueOf(memId));
            if (status) {
                response.sendRedirect(request.getContextPath() + "/UserViews/UserProfile.jsp");
            } else {
                response.sendRedirect(request.getContextPath() + "/common/Error.jsp");
            }
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
