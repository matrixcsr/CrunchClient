<%-- 
    Document   : Errror
    Created on : 17-Apr-2022, 11:13:35 AM
    Author     : Chaitanya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <h1>An Error Occurred...</h1>

    <p>



        ${requestScope.errorMessage}<br><br>

        ${requestScope.errorCause}<br><br>

        ${requestScope.errorLocation}

    </p>

</body>
</html>
