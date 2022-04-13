<%-- 
    Document   : Classes
    Created on : Apr 10, 2022, 5:39:36 PM
    Author     : Matrix
--%>
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

    </head>
    <body>
        <div class="bg-primary text-white p-5 text-center">
            <h1>Register for classes</h1>
            <p>We Offer variety of classes, ranging from casual training to high intensive training. Feel free to register for any of them by clicking on any of the desired training card below.</p> 
</div>
        <div class="container p-5">
        <div class="card-group">
  <div onclick="location.href='./RegisterBoxing.jsp';" style="cursor: pointer;" class="card">
    <img src="../common/assets/classes/boxing.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">Boxing</h5>
      <p class="card-text">This is the activity where you will beat the crap out of each other for fun, also a good exercise, but only sometimes.</p>
      <p class="card-text"><small class="text-muted">Click for more info</small></p>
    </div>
  </div>
  <div onclick="location.href='./RegisterYoga.jsp';" style="cursor: pointer;" class="card">
    <img src="../common/assets/classes/yoga.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">Yoga</h5>
      <p class="card-text">You stretch and bend like never before, just to prove a point that you are flexible.</p>
      <p class="card-text"><small class="text-muted">Click for more info</small></p>
    </div>
  </div>
  <div onclick="location.href='./RegisterZumba.jsp';" style="cursor: pointer;" class="card">
    <img src="../common/assets/classes/zumba.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">Zumba</h5>
      <p class="card-text">This is basically a lower version of dancing, where your only goal is to be tired, so it is classified as an exercise.</p>
      <p class="card-text"><small class="text-muted">Click for more info</small></p>
    </div>
  </div>
  <div onclick="location.href='./RegisterHiit.jsp';" style="cursor: pointer;" class="card">
    <img src="../common/assets/classes/hiit.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">HIIT</h5>
      <p class="card-text">You train train and train, and you don't get to take a break in between. This is a just another form of torture, but in a legal way.</p>
      <p class="card-text"><small class="text-muted">Click for more info</small></p>
    </div>
  </div>
</div>
            </div>
    </body>
</html>
