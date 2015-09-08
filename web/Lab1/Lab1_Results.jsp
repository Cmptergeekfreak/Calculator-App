<%-- 
    Document   : Lab1_Form
    Created on : Sep 27, 2015
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 1 Result</title>
    </head>
    <body>
        
            
        
        <h1>Lab 1 Result Page</h1>
        
        <% 
            Object area = request.getAttribute("area");
            String areaResult = "";            
            
            if (area == null) {
                out.println("The area is null");
            } else {
                areaResult = (String)area; 
            }
            
            out.println("The area is: " + areaResult);
        %>
    </body>
</html>
