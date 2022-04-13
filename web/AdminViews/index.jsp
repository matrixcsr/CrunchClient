<%-- 
    Document   : index
    Created on : Apr 13, 2022, 1:31:14 PM
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

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>${generalmsg}</title>
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
       
<div class="container my-4">
    
List the users and do crud like delete them or change their member ship status

     
</div>
  </body>
</html>

