<%-- 
    Document   : navbar
    Created on : Apr 8, 2022, 12:38:45 AM
    Author     : Matrix
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
    <c:if test="${!cookie.containsKey('id')}">
        <%
    String redirectURL = "/CrunchClient/Login.jsp";
    response.sendRedirect(redirectURL);
%>
    </c:if>
<html>
  <head>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
  </head>
  <body>
   <div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark" style="width: 280px;">
    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
      <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
      <span class="fs-4">Admin Panel</span>
    </a>
    <hr>
    <ul class="nav nav-pills flex-column mb-auto">
      <li class="nav-item">
        <a href="<%= request.getContextPath() %>/Users" class="nav-link " aria-current="page">
          <svg class="bi me-2" width="16" height="16"><use xlink:href="#home"></use></svg>
          List Users
        </a>
      </li>
      <li>
        <a href="<%= request.getContextPath() %>/UserBookings?val=${cookie.isAdmin.value}" class="nav-link text-white">
          <svg class="bi me-2" width="16" height="16"><use xlink:href="#speedometer2"></use></svg>
          Get All User Bookings
        </a>
      </li>
    </ul>
    <hr>
    <div class="dropdown">
      <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
        <img src="../common/assets/Matrix.jpg" alt="" width="32" height="32" class="rounded-circle me-2">
        <strong id="adminName">Admin</strong>
      </a>
      <ul class="dropdown-menu dropdown-menu-dark text-small shadow" aria-labelledby="dropdownUser1" style="">
        <li><a class="dropdown-item" href="https://github.com/chaitanyak59">Chaitanya</a></li>
        <li><a class="dropdown-item" href="https://github.com/matrixcsr">Rahul</a></li>
        <li><hr class="dropdown-divider"></li>
        <li><a class="nav-link" href="<%= request.getContextPath() %>/Authenticate">Logout</a> <!--Redundant--></li>
      </ul>
    </div>
  </div>
           <script>
            const user = location.protocol + '//' + location.host+'/CrunchClient/webresources/generic/getuser/'+ ${cookie['id'].getValue()};
            
                            $.ajax({
                    url: user,    //calling the Week route in DBAPIController
                    type: "GET",
                    contentType: "application/json",
                    data:"",                //passing the year as arguement.
                    dataType: "json",
                    success: function (result) {                    
                   document.getElementById("adminName").textContent = result[0].name;
                    },
                    error: function (err) {
                        alert("REST service error");
                    },
                })
         </script>
  </body>
</html>

