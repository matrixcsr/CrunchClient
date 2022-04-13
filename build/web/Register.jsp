<%-- 
    Document   : Register
    Created on : Apr 7, 2022, 11:09:56 PM
    Author     : Matrix
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="/navbar.jsp" />
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
    <c:if test="${cookie.containsKey('id')}">
        <%
    String redirectURL = "./UserViews/index.jsp";
    response.sendRedirect(redirectURL);
%>
    </c:if>
<!DOCTYPE html>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  <title>Register</title>
  <style>
    #c2 {
      background: #FF0266;
      width: 25%;
      height: 100vh;
      float: right;
    }

    #c1 {
      background: black;
      float: left;
      height: 100vh;
      width: 75%;
    }

    #center {
      margin: auto;
      width: 80%;
      padding: 60% 0;
    }
  </style>
</head>

<body>

  <div id="c1">
    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
      <!-- Carousel with automatic panning with fade effect -->
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="https://source.unsplash.com/1600x1100/?Fitness" class="d-block w-100" alt="bruh"> <!-- Using Unplash api for getting images -->
        </div>
        <div class="carousel-item">
          <img src="https://source.unsplash.com/1600x1100/?Dance,health" class="d-block w-100" alt="bruh">
        </div>
        <div class="carousel-item">
          <img src="https://source.unsplash.com/1600x1100/?Yoga,atheletics" class="d-block w-100" alt="bruh">
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
  </div>
  <div id="c2">
    <div id="center">
      <form method="post" action="Authenticate">
          <h2><label for="inputEmail4" class="form-label">Register</label></h2>
        <div class="mb-3">
          <label for="exampleInputEmail1" class="form-label">Email address</label> <!-- Form that collects register info -->
          <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
          <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
        </div>
        <div class="mb-3">
          <label for="username" class="form-label" >username</label>
          <input type="text" class="form-control" name="username" id="exampleInputPassword1" >
        </div>
        <div class="mb-3">
          <label for="exampleInputPassword1" class="form-label" >Password</label>
          <input type="password" name="password" class="form-control" id="exampleInputPassword1" >
        </div>
        <button type="submit" value="Register" name="action" class="btn btn-primary" >Register</button>
      </form>
        ${error}
        <c:remove var = "error"/>
    </div>
   
  </div>

</body>

</html>