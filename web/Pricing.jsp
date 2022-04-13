<%-- 
    Document   : Pricing
    Created on : Apr 8, 2022, 2:45:26 AM
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
<section>
  <div class="container py-5">

    <!-- FOR DEMO PURPOSE -->
    <header class="text-center mb-5 text-white">
      <div class="row">
        <div class="col-lg-7 mx-auto">
          <h1>Bootstrap pricing table</h1>
          <p>Easily create a classy pricing table in Bootstrap&nbsp;4.<br> <a href="https://bootstrapious.com/snippets" class="text-reset">Bootstrap snippet by Bootstrapious</a></p>
        </div>
      </div>
    </header>
    <!-- END -->



    <div class="row text-center align-items-end">
      <!-- Pricing Table-->
      <div class="col-lg-4 mb-5 mb-lg-0">
        <div class="bg-white p-5 rounded-lg shadow">
          <h1 class="h6 text-uppercase font-weight-bold mb-4">Basic</h1>
          <h2 class="h1 font-weight-bold">$199<span class="text-small font-weight-normal ml-2">/ month</span></h2>

          <div class="custom-separator my-4 mx-auto bg-primary"></div>

          <ul class="list-unstyled my-5 text-small text-left">
            <li class="mb-3">
              <i class="fa fa-check mr-2 text-primary"></i> Lorem ipsum dolor sit amet</li>
            <li class="mb-3">
              <i class="fa fa-check mr-2 text-primary"></i> Sed ut perspiciatis</li>
            <li class="mb-3">
              <i class="fa fa-check mr-2 text-primary"></i> At vero eos et accusamus</li>
            <li class="mb-3 text-muted">
              <i class="fa fa-times mr-2"></i>
              <del>Nam libero tempore</del>
            </li>
            <li class="mb-3 text-muted">
              <i class="fa fa-times mr-2"></i>
              <del>Sed ut perspiciatis</del>
            </li>
            <li class="mb-3 text-muted">
              <i class="fa fa-times mr-2"></i>
              <del>Sed ut perspiciatis</del>
            </li>
          </ul>
          <a href="#" class="btn btn-primary btn-block p-2 shadow rounded-pill">Subscribe</a>
        </div>
      </div>
      <!-- END -->


      <!-- Pricing Table-->
      <div class="col-lg-4 mb-5 mb-lg-0">
        <div class="bg-white p-5 rounded-lg shadow">
          <h1 class="h6 text-uppercase font-weight-bold mb-4">Pro</h1>
          <h2 class="h1 font-weight-bold">$399<span class="text-small font-weight-normal ml-2">/ month</span></h2>

          <div class="custom-separator my-4 mx-auto bg-primary"></div>

          <ul class="list-unstyled my-5 text-small text-left font-weight-normal">
            <li class="mb-3">
              <i class="fa fa-check mr-2 text-primary"></i> Lorem ipsum dolor sit amet</li>
            <li class="mb-3">
              <i class="fa fa-check mr-2 text-primary"></i> Sed ut perspiciatis</li>
            <li class="mb-3">
              <i class="fa fa-check mr-2 text-primary"></i> At vero eos et accusamus</li>
            <li class="mb-3">
              <i class="fa fa-check mr-2 text-primary"></i> Nam libero tempore</li>
            <li class="mb-3">
              <i class="fa fa-check mr-2 text-primary"></i> Sed ut perspiciatis</li>
            <li class="mb-3 text-muted">
              <i class="fa fa-times mr-2"></i>
              <del>Sed ut perspiciatis</del>
            </li>
          </ul>
          <a href="#" class="btn btn-primary btn-block p-2 shadow rounded-pill">Subscribe</a>
        </div>
      </div>
      <!-- END -->


      <!-- Pricing Table-->
      <div class="col-lg-4">
        <div class="bg-white p-5 rounded-lg shadow">
          <h1 class="h6 text-uppercase font-weight-bold mb-4">Enterprise</h1>
          <h2 class="h1 font-weight-bold">$899<span class="text-small font-weight-normal ml-2">/ month</span></h2>

          <div class="custom-separator my-4 mx-auto bg-primary"></div>

          <ul class="list-unstyled my-5 text-small text-left font-weight-normal">
            <li class="mb-3">
              <i class="fa fa-check mr-2 text-primary"></i> Lorem ipsum dolor sit amet</li>
            <li class="mb-3">
              <i class="fa fa-check mr-2 text-primary"></i> Sed ut perspiciatis</li>
            <li class="mb-3">
              <i class="fa fa-check mr-2 text-primary"></i> At vero eos et accusamus</li>
            <li class="mb-3">
              <i class="fa fa-check mr-2 text-primary"></i> Nam libero tempore</li>
            <li class="mb-3">
              <i class="fa fa-check mr-2 text-primary"></i> Sed ut perspiciatis</li>
            <li class="mb-3">
              <i class="fa fa-check mr-2 text-primary"></i> Sed ut perspiciatis</li>
          </ul>
          <a href="#" class="btn btn-primary btn-block p-2 shadow rounded-pill">Subscribe</a>
        </div>
      </div>
      <!-- END -->

    </div>
  </div>
</section>

