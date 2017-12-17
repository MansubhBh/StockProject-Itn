<%-- 
    Document   : accessDenied
    Created on : Dec 13, 2017, 7:39:35 PM
    Author     : Mansubh Bhandari
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h3>Access Denied Page</h3>
        <h4>You are not allowed to access this page</h4>
        
        <a href="<c:url value = "/logout" />">Logout</a>
    </body>
</html>
