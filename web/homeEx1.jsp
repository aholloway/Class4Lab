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
        <h1>Example 1 Home</h1>
        <h2>Choose a form!</h2>
        <hr>
        </br>
        <img border="0" src="images/rectangle.jpg" alt="Rectangle" width="304" height="228">
        
        <p>Enter x and y to get the area!</p>
        
        <form action="RectangleAreaCalculatorServlet" method="POST">
            x: <input type="text" name="x" size="20"><br />
            y: <input type="text" name="y" size="20">
            <br />
            <br />
            <input type="submit" value="Submit">
        </form>
        
        </br>
        
        <img border="0" src="images/circle.jpg" alt="Circle" width="228" height="228">
        
        <form action="CircleAreaCalculatorServlet" method="POST">
            r: <input type="text" name="r" size="20"><br />
            <br />
            <br />
            <input type="submit" value="Submit">
        </form>
        
        </br>
        
        <img border="0" src="images/Rt Triangle.PNG" alt="Rt Triangle" width="304" height="228">
        
        <form action="RtAngleSideCalculatorServlet" method="POST">
            x: <input type="text" name="firstName" size="20"><br />
            y: <input type="text" name="lastName" size="20">
            <br />
            <br />
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
