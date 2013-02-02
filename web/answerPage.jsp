<%-- 
    Document   : answerPage
    Created on : 2/2/2013
    Author     : aholloway
--%>

<%@page import="example1.CalculationType"%>
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
        <hr>
        <%
            CalculationType calculationType = 
                    (CalculationType)request.getAttribute("calculationType");
            
            switch (calculationType){
                case RECTANGLE_AREA:
                    out.println("<h2>Rectangle Area Calculation</h2>");
                    Object x = request.getParameter("x");
                    Object y = request.getParameter("y");

                    Object rectangleArea = request.getAttribute("rectangleArea");

                    out.println("<p>A rectangle with length " + x + " and width " + y + 
                            " will have an area of " + rectangleArea + "</p>");
                    
                break;
                case CIRCLE_AREA:
                    out.println("<h2>Circle Area Calculation</h2>");
                    Object r = request.getParameter("r");
                    Object circleArea = request.getAttribute("circleArea");
                    out.println("<p>A circle with radius " + r + 
                            " will have an area of " + circleArea + "</p>");
                break;
                case RT_ANGLE_SIDE:
                     out.println("<h2>Right Angle Side Calculation</h2>");
                     Object sideLength = request.getAttribute("sideLength");
                     if (sideLength ==null){
                         out.println("<p>Please select only two sides and I "
                            + "will solve for the thrid</p>");
                     } else {
                         out.println("<p>The length of the third side is "+
                                 sideLength +"</p>");
                     }
                     
                break;
                
            }
            

            /*Object x = request.getParameter("x");
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
            */
        %>

        <p><a href="homeEx1.jsp">Return to Example 1 Home</a></p>
    </body>
</html>
