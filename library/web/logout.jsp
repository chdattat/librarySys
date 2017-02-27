<%-- 
    Document   : logout
    Created on : Apr 18, 2015, 9:18:29 PM
    Author     : Sahil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
         session.invalidate();
         response.sendRedirect("visitor_home.jsp");
            
            %>
    </body>
</html>
