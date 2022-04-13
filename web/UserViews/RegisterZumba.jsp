<%-- 
    Document   : RegisterZumba
    Created on : Apr 13, 2022, 12:48:15 AM
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
        <link rel="stylesheet" href="../common/css/Regform.css">
        <script>$('.datepicker').datepicker();</script>
    </head>
    <body>

  <div class="container-fluid px-1 py-5 mx-auto">
    <div class="row d-flex justify-content-center">
        <div class="col-xl-7 col-lg-8 col-md-9 col-11 text-center">
            <h3>Register for Zumba</h3>
            <p class="blue-text">Fill up the following form to register</p>
            <div class="card">
                <h5 class="text-center mb-4">Zumba</h5>
                <form class="form-card" action="../RegisterClass" method="POST">
                    <input type="text" name="userId" id="userId" disabled hidden />
                    <input type="text" name="classId" id="classId" disabled hidden value="3" />
                    <div class="row  ">
                        <div class="form-group col-12 flex-column d-flex"> <label class="form-control-label px-3">Username<span class="text-danger"> *</span></label> <input type="text" id="fname" name="fname" disabled required> </div>
                        
                    </div>
                    <div class="row ">
                        <div class="form-group col-12 flex-column d-flex"> <label class="form-control-label px-3">Email<span class="text-danger"> *</span></label> <input type="text" id="email" name="email" disabled required> </div>
                        
                    </div>
                    <div class="row">
                        <div class="form-group col-6 flex-column d-flex"> <label class="form-control-label px-3">Location<span class="text-danger"> *</span></label> <select name="location" class="form-select" aria-label="Default select example">
  <option value="Etobicoke" selected>Etobicoke</option>
  <option value="Brampton">Brampton</option>
  <option value="Downtown">Downtown</option>
  <option value="Scarborough">Scarborough</option>
</select> </div><div class="form-group col-sm-6 flex-column d-flex"> <label class="form-control-label px-3">Schedule<span class="text-danger"> *</span></label> <input type="date" name="date" id="txtBegin" required/> </div>
                    </div>
                    
                    
                    <div class="row justify-content-end">
                        <div class="d-grid gap-2 col-6 mx-auto">
  <button class="btn btn-primary" type="submit">Register Class</button>

</div>
                    </div>
                </form>
            </div>
        </div>
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
                        console.log(result);
                   document.getElementById("fname").setAttribute('value',result[0].name);
                   document.getElementById("email").setAttribute('value',result[0].email);
                   document.getElementById("userId").setAttribute('value',result[0].id);
                    },
                    error: function (err) {
                        alert("Something went wrong!");
                    },
                })
         </script>
    </body>
</html>
