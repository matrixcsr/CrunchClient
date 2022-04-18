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

            td,th {
                text-align: center;
            }
        </style>

    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

        <div id="c2">
            <jsp:include page="/AdminViews/navbar.jsp" />

        </div>
        <div class="container">

            <table class="table table-hover">
                <thead class="table-dark">
                    <tr>
                        <th>Booking Id</th>
                        <th>Class Name</th>
                        <th>Location</th>
                        <th>Scheduled date</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <c:forEach items="${bookings}" var="booking">
                    <tr>
                        <td><c:out value="${booking.id}" /></td>
                        <td><c:out value="${booking.className}" /></td>
                        <td><c:out value="${booking.location}" /></td>
                        <td><c:out value="${booking.scheduledDate}" /></td>
                        <td><a href="/CrunchClient/DeleteUserBooking?booking_id=${booking.id}">Delete Booking</a> </td>

                    </tr>
                </c:forEach>
            </table>


        </div>
    </body>
</html>
