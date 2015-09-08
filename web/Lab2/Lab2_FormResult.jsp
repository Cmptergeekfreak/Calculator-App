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
        <title>Calculator area</title>
    </head>
    <body>
        
        
        
        <h2>Lab 2</h2>
        
        <form id="form1" name="form1" method="POST" action='<%= request.getContextPath() + "/rectangleCalcControl" %>'>
            <label for="length">Enter a length</label>
            <input id="length" name="length" type="text" value="" />
            <br />
            <label for="width">Enter a width</label>
            <input id="width" name="width" type="text" value="" />
            
            <input type="submit" name="submit" id="submit" value="Calculate" />           
        </form>
        <br />
        <br />
        <% 
            Object area = request.getAttribute("area");
            String areaResult = "";            
            
            if (area == null) {
                out.println("The area is null");
            } else {
                areaResult = (String)area; 
            }
            
            out.println("The rectangle area is : " + areaResult);
        %>    
            
    </body>
</html>
