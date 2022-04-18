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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Chaitanya
 */
@WebServlet(name = "Users", urlPatterns = {"/Users"})
public class Users extends HttpServlet {

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
        UsersService usersService = new UsersService();
        IUsers port = usersService.getUsersPort();
        String id = "";
        response.setContentType("text/html;charset=UTF-8");
        try {
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("id")) {
                        id = cookie.getValue();
                    }
                }
            }
            if (!("".equals(id))) {
                List<User> users = port.getAllUsers(Integer.valueOf(id));
                System.out.println(id + " " + users.toString());
                request.setAttribute("users", users);
                request.getRequestDispatcher("./AdminViews/index.jsp").forward(request, response);
            } else {
                request.setAttribute("errorMessage", "Cannot Process Request");
                request.getRequestDispatcher("./common/Error.jsp").forward(request, response);
            }
        } catch (IOException | NumberFormatException | ServletException e) {
            request.setAttribute("errorMessage", "Cannot Process Request");
            System.out.println(e.toString());
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
