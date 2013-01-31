<%-- 
    Document   : homeEx1
    Created on : Jan 30, 2013, 5:50:27 PM
    Author     : Drew
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example 1</title>
    </head>
    <body>
        <h1>Choose a form!</h1>
        <img border="0" src="images/rectangle.jpg" alt="Rectangle" width="304" height="228">
        <p>Enter x and y to get the area!</p>
        <form action="CalculatorServlet" method="POST">
            x: <input type="text" name="firstName" size="20"><br />
            y: <input type="text" name="lastName" size="20">
            <br /><br />
            <input type="submit" value="Submit">
        </form>
        
        <form></form>
        <form></form>
    </body>
</html>
