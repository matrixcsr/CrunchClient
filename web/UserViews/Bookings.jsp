<%-- 
    Document   : Bookings
    Created on : Apr 10, 2022, 5:45:33 PM
    Author     : Matrix
--%>
<%@page import="com.humber.interfaces.BookingClass"%>
<%@page import="java.util.ArrayList"%>
<jsp:include page="/UserViews/navbar.jsp" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
    <c:if test="${!cookie.containsKey('id')}">
        <%
    String redirectURL = "/CrunchClient/Login.jsp";
    response.sendRedirect(redirectURL);
%>
    </c:if>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            td,th {
  text-align: center;
}
            </style>
    </head>
    <body>
<div class="container my-4">
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
      <td><a href="/CrunchClient/DeleteUserBooking?booking_id=${booking.id}">Delete Booking</a></td>
      
    </tr>
  </c:forEach>
</table>

    </body>
</html>
