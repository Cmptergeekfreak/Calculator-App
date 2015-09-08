<%-- 
    Document   : Lab1_Form
    Created on : Sep 27, 2015
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../css/mystyle.css" rel="stylesheet" type="text/css"> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Lab 3</title>
        
        <style>
                html{
                background:url("images/bg_title.jpg") #333d43;

                }



                body{
                background:url("images/bg_head.jpg") repeat-x top center, url('imges/bg_vert.jpg') repeat-x;
                min-height:500px;
                font:14px/1.3 'Segoe UI',Arial, sans-serif;
                color:#888;
                padding:10px;
                }
            
            
        </style>
        
    </head>
    <body>
        
        
        <h2> Lab 3</h2>
        
        
        
        <form id="rectangleForm" name="rectangleForm" method="POST" action='<%= request.getContextPath() + "/RecCalcControl" %>'>
            <label for="length">Enter a length: </label>
            <input id="length" name="length" type="text" value="" />
            <br />
            <label for="width">Enter a width: </label>
            <input id="width" name="width" type="text" value="" />
            
            <input type="submit" name="submit" id="submit" value="Calculate" />           
        </form>
        <br />
        <br />
        <% 
            Object rectangleArea = request.getAttribute("rectangleArea");
            String rectangleAreaResult = "";            
            
            if (rectangleArea == null) {
                out.println("The rectangle area is null");
            } else {
                rectangleAreaResult = (String)rectangleArea; 
            }
            
            out.println("<br />" + rectangleAreaResult);
            //out.println("<a href='Lab3/Lab3_FormsResults.jsp'>Calculate Again</a>");
        %>
        
        
        <br />
        <br />
        <form id="circleForm" name="circleForm" method="POST" action='<%= request.getContextPath() + "/CircleControl" %>'>
            <label for="radius">Enter the radius: </label>
            <input id="radius" name="radius" type="text" value="" />
            
            <input type="submit" name="submit" id="submit" value="Calculate" />           
        </form>
        <br />
        <br />
        <% 
            Object circleArea = request.getAttribute("circleArea");
            String circleAreaResult = "";            
            
            if (circleArea == null) {
                out.println("The circle area is null");
            } else {
                circleAreaResult = (String)circleArea; 
            }
            
            out.println("Final circle area is : " + circleAreaResult);
            //out.println("<a href='Lab3_FormsResults.jsp'>Calculate Again</a>");
        %>
        
        
        <br />
        <br />
        <form id="triangleForm" name="triangleForm" method="POST" action='<%= request.getContextPath() + "/TriControl" %>'>
            <label for="height">Enter a height: </label>
            <input id="height" name="height" type="text" value="" />
            <br />
            <label for="base">Enter a base: </label>
            <input id="base" name="base" type="text" value="" />
            
            <input type="submit" name="submit" id="submit" value="Calculate" />           
        </form>
        <br />
        <br />
        <% 
            Object triangleArea = request.getAttribute("triangleArea");
            String triangleAreaResult = "";            
            
            if (triangleArea == null) {
                out.println("The triangle area is null");
            } else {
                triangleAreaResult = (String)triangleArea; 
            }
            
            out.println("<br />" + triangleAreaResult);
            //out.println("<a href='Lab3_FormsResults.jsp'>Calculate Again</a>");
        %>
        
    </body>
</html>
