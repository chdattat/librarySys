<%-- 
    Document   : login1
    Created on : Apr 17, 2015, 4:54:18 PM
    Author     : Sahil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% 
        
     String user = request.getParameter("uname");
     String pass = request.getParameter("psswd");   
        System.out.print(user);
        System.out.print(pass);
        
        if(user.equals("admin")&& pass.equals("admin"))
        {
            response.sendRedirect("admin_welcome.jsp");
        }
        
        %>



</html>
