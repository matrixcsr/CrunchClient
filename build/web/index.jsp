<%-- 
    Document   : index
    Created on : Apr 8, 2022, 12:39:05 AM
    Author     : Matrix
--%>
<jsp:include page="/navbar.jsp" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
    <c:if test="${cookie.containsKey('id')}">
        <%
    String redirectURL = "./UserViews/index.jsp";
    response.sendRedirect(redirectURL);
%>
    </c:if>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>GymFreaks</title>
  </head>
  <body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<div class="container-fluid px-0">
<div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel"> <!-- Carousel with automatic panning with fade effect -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://source.unsplash.com/1900x800/?Fitness" class="d-block w-100" alt="..."> <!-- Using Unplash api for getting images -->
    </div>
    <div class="carousel-item">
      <img src="https://source.unsplash.com/1900x800/?Dance" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://source.unsplash.com/1900x800/?Fitness,atheletics" class="d-block w-100" alt="...">
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
<div class="bg-primary text-white p-5 text-center">
  <h1>A little description about ourself :)</h1>
  <p> We are a privately owned company by two awesome individuals who goes by the name Chaitanya and Rahul. Our subscription service is aimed to offer a package of service depending
  on the subscription purchased, the overall idea is to bring down your total spending and also providing you the maximum services at affordable rates. Trusted by over a 100K subscribers,
  We are here to provide you industry breaking service and competitive prices.</p> 
</div>
<div class="container my-4">
    

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <div class="col">                                             <!-- Displaying cards for gym information -->
          <div class="card shadow-sm">        
          <img src="./common/assets/1.jpg" class="d-block w-100" alt="img1">  

            <div class="card-body">
              <p class="card-text">Our Service provides you shared access to partnered GYMs</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">

                </div>
               
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
          <img src="./common/assets/2.jpg" class="d-block w-100" alt="img1">
            <div class="card-body">
              <p class="card-text">Providing the best equipment for your optimum performance.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">

                </div>

              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
          <img src="./common/assets/3.jpg" class="d-block w-100" alt="img1">

            <div class="card-body">
              <p class="card-text">Certified trainers to assist you for your workout.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">

                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card shadow-sm">
          <img src="./common/assets/4.jpg" class="d-block w-100" alt="img1">            <div class="card-body">
              <p class="card-text">We have a dedicated 24/7 hotline for our members.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">

                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
          <img src="./common/assets/5.jpg" class="d-block w-100" alt="img1">

            <div class="card-body">
              <p class="card-text">Trust by over 100K loyal subscriber</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">

                </div>
               
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
          <img src="./common/assets/6.jpg" class="d-block w-100" alt="img1">

            <div class="card-body">
              <p class="card-text">Online contact less lessons also available.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">

                </div>
               
              </div>
            </div>
          </div>
        </div>
        </div>
      </div>
    </div>
<div class="container">

</div>

  </body>
</html>
