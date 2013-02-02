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
            
            //System.out.println(area);
            System.out.println(request.getParameter("area"));
            Object x = request.getParameter("x");
            Object y = request.getParameter("y");
            out.println("<p>The value of x is " + x + "</p>");
            out.println("<p>The value of y is " + y + "</p>");
            Object area = request.getParameter("area");
            Object areas= request.getParameter("areas");
            System.out.println(areas.toString());



            out.println("<p>The area is " + area + "</p>");

        %>

        <p><a href="homeEx1.jsp">Return to Example 1 Home</a></p>
    </body>
</html>
