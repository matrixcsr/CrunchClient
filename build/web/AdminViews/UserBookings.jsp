<%-- 
    Document   : UserBookings
    Created on : Apr 13, 2022, 2:47:30 PM
    Author     : Matrix
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
    <c:if test="${!cookie.containsKey('isAdmin')}">
        <%
    response.sendRedirect("/CrunchClient/UserViews/index.jsp");
%>
    </c:if>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <style>
                    #c2 {
            background: whitesmoke;
            width: 15%;
            float: right;
        }
        #c1{
            background: black;
            float: left;
            height: 100vh;
            width: 100%;
        }
        #center {
            margin: auto;
            width: 80%;
            padding: 60% 0;
        }
    </style>
    </head>
    <body>
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <div id="c2">
    <jsp:include page="/AdminViews/navbar.jsp" />
    
</div>
      <div class="container">
          
          List all User bookings in here
          
          
          </div>
    </body>
</html>
