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
            Object param1 = request.getParameter("param1");
            Object param2 = request.getParameter("param2");
            List<Object> myParams = new ArrayList<Object>();
            myParams.add(param1);
            myParams.add(param2);
            
            for(Object param : myParams) {
                if(param != null) {
                    out.println("<p>Param Value: " + param + "</p>");
                } else {
                    out.println("<p>No param info available</p>");
                }
            }
        %>
        
        <p><a href="index.jsp">Return to Home Page</a></p>
    </body>
</html>
