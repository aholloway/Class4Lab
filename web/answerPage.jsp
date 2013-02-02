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
            

            Object x = request.getParameter("x");
            Object r = request.getParameter("r");
            if(x==null){
                Object area = request.getAttribute("area");
                out.println("<p>A circle with radius " + r + 
                        " will have an area of " + area + "</p>");
            }else{
            
            Object y = request.getParameter("y");

            Object area = request.getAttribute("area");
            
            out.println("<p>A rectangle with length " + x + " and width " + y + 
                    " will have an area of " + area + "</p>");
                       }
        %>

        <p><a href="homeEx1.jsp">Return to Example 1 Home</a></p>
    </body>
</html>
