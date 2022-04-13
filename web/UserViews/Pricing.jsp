<%-- 
    Document   : Pricing
    Created on : Apr 13, 2022, 4:07:02 PM
    Author     : Matrix
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <c:if test="${!cookie.containsKey('id')}">
        <%
    String redirectURL = "/CrunchClient/Login.jsp";
    response.sendRedirect(redirectURL);
%>
    </c:if>
    <jsp:include page="/UserViews/navbar.jsp" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <script>

            window.onload = function() {
              
              RenderPricingForm()
            
};


    function RenderPricingForm(){
        
                       const user = location.protocol + '//' + location.host+'/CrunchClient/webresources/generic/getInfo';
                       const id = ${cookie['id'].getValue()};
                            $.ajax({
                    url: user,    //calling the Week route in DBAPIController
                    type: "GET",
                    contentType: "application/json",
                    data:"",                //passing the year as arguement.
                    dataType: "json",
                    success: function (result) {               
                        console.log(result);
                    for (var i = 0; i < result.length; i++) {
                        var txt1 = "<div class='col'>\n\
 <div class='card mb-4 rounded-3 shadow-sm'>\n\
<div class='card-header py-3'>\n\
<h4 class='my-0 fw-normal'>"+result[i].name+"</h4>\n\
</div>\n\
<div class='card-body'>\n\
<h1 class='card-title pricing-card-title'>$"+result[i].charges+"<small class='text-muted fw-light'>/mo</small></h1>\n\
<ul class='list-unstyled mt-3 mb-4'>\n\
<li>&nbsp;</li> \n\
<li>"+result[i].description+"</li>\n\
<li>&nbsp;</li>\n\
</ul>\n\
<form action='../Membership' method='post'>\n\
<input type='text' name='memId' value='"+result[i].id+"' hidden>\n\
\n\<input type='text' name='userId' value='"+id+"' hidden>\n\
<input type='submit' name='submit' value='Get Started' class='w-100 btn btn-lg btn-outline-primary'>\n\
</form>\n\
</div>\n\
</div>";
   $("#pricingClass").append(txt1);
    
                    }
                    },
                    error: function (err) {
                        alert("Something went wrong!");
                    },
                })
        
   
    }



            </script>
        
        
    <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
        <div class="container my-4">
 <h1 class="display-4 fw-normal">Pricing</h1>
      <p class="fs-5 text-muted">Quickly build an effective pricing table for your potential customers with this Bootstrap example. It’s built with default Bootstrap components and utilities with little customization.</p>
        </div>
    </div>
    <div class="container">

     <div class="row row-cols-1 row-cols-md-3 mb-3 text-center" id="pricingClass">

    </div>
</div>
<div class="container" align-items: center>
<p class="display-7">
    Please select a plan to continue...
</p>
</div>
    </body>
</html>
