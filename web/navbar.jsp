<%-- 
    Document   : navbar
    Created on : Apr 8, 2022, 12:38:45 AM
    Author     : Matrix
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
    <c:if test="${cookie.containsKey('id')}">
        <%
    String redirectURL = "./UserViews/index.jsp";
    response.sendRedirect(redirectURL);
%>
    </c:if>
<html>
  <head>
    <style>
      .navbar-custom {
        background-color: #183c54;
      }
      div.padd {
        padding-left: 20px;
        padding-top: 0px;
      }
    </style>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <nav
      class="navbar navbar-dark navbar-expand-md navbar-custom justify-content-center navbar-corner h-5"
    >
      <div class="padd">

      </div>

      <button
        class="navbar-toggler ml-1"
        type="button"
        data-toggle="collapse"
        data-target="#collapsingNavbar2"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div
        class="navbar-collapse collapse justify-content-between align-items-center w-100"
        id="collapsingNavbar2"
      >
        <ul class="navbar-nav mx-auto text-center">
          <li class="nav-item active">
            <a class="nav-link" href="/CrunchClient/Login.jsp">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/CrunchClient/Register.jsp">Register</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/CrunchClient/index.jsp">About us</a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="/CrunchClient/Pricing.jsp">Pricing</a>
          </li>
        </ul>
        
      </div>
    </nav>
  </body>
</html>

