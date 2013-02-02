<%-- 
    Document   : page2
    Created on : Sep 15, 2011, 10:09:05 AM
    Author     : jlombardo
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Answer Page</title>
    </head>
    <body>
        <h1>Answer Page</h1>
        <br>
        <%
            Object area = request.getParameter("area");

            out.println("<p>The area is " + area + "</p>");

        %>

        <p><a href="homeEx1.jsp">Return to Example 1 Home</a></p>
    </body>
</html>
