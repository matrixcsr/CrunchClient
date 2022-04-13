/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.humber.controller;

import com.humber.interfaces.User;
import com.humber.services.ILogin;
import com.humber.services.LoginService;
import com.mysql.cj.xdevapi.JsonParser;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Scanner;
import javax.json.JsonObject;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdk.nashorn.internal.parser.JSONParser;


/**
 *
 * @author Matrix
 */
public class Authenticate extends HttpServlet {

        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        Cookie[] cookies = request.getCookies();
    if (cookies != null){
        for (Cookie cookie : cookies) {
            System.out.println("Reading cookies");
            cookie.setValue("");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
    }
        request.getRequestDispatcher("./Login.jsp").forward(request, response);
    }
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        LoginService service = new LoginService();
        ILogin port = service.getLoginPort();
        
        String input = request.getParameter("action");
        PrintWriter out = response.getWriter();
        if("Register".equals(input)){
           String email = request.getParameter("email");
           String username = request.getParameter("username");
           String password = request.getParameter("password");
           
           if(email == null || username == null || password==null){
               request.setAttribute("error", "Please fill all the information!");
               request.getRequestDispatcher("/Register.jsp").forward(request, response);
           }
           else if("".equals(email) || "".equals(username) || "".equals(password)){
               request.setAttribute("error", "Please fill all the information!");
               request.getRequestDispatcher("/Register.jsp").forward(request, response);
           }
           else{
                        port.registerUser(username, email, password);
                        out.println("done");  
                        request.setAttribute("generalmsg", "Please Login to continue");
                        request.getRequestDispatcher("/Login.jsp").forward(request, response);
           } 
        }
        
        if("Login".equals(input)){
           String email = request.getParameter("email");
           String password = request.getParameter("password");
           
            User validation = port.authenticate(email, password);
            System.out.println(validation.getName());
            if(validation.getName() != null){
                
                if(validation.isIsAdmin() == true){
                
                Cookie c2=new Cookie("isAdmin","Test");
                c2.setSecure(true);
                c2.setHttpOnly(true);
                c2.setMaxAge(1800);     
                response.addCookie(c2);     
                
                }
                Cookie c1=new Cookie("id",String.valueOf(validation.getId()));
                c1.setSecure(true);
                c1.setHttpOnly(true);
                c1.setMaxAge(1800);
                response.addCookie(c1);
                request.getRequestDispatcher("./UserViews/index.jsp").forward(request, response);
                
                
            }
            else{
                request.setAttribute("error", "Invalid Credentials");
                request.getRequestDispatcher("/Login.jsp").forward(request, response);
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
