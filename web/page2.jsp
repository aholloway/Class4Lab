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
        <title>JSP Page as Destination for RedirectController</title>
    </head>
    <body>
        <h1>The Servlet Redirected You Here!</h1>
        <p>Notice the parameters DID NOT come along for the ride!</p>
        <%
            Object x = request.getParameter("x");
            Object y = request.getParameter("y");
            List<Object> myParams = new ArrayList<Object>();
            myParams.add(x);
            myParams.add(y);
            
            for(Object param : myParams) {
                if(param != null) {
                    out.println("<p>Param Value: " + param + "</p>");
                } else {
                    out.println("<p>No param info available</p>");
                }
            }
        %>
        
        <p><a href="homeEx1.jsp">Return to Example 1 Home</a></p>
    </body>
</html>
