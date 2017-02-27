package controller;

import database.create_book_record;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class registration extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
 try
 {
String fname = request.getParameter("fname");
String sexr = request.getParameter("sexr");
String dob = request.getParameter("dob");
String addrss = request.getParameter("addrss");
String uname = request.getParameter("uname");
String psswd = request.getParameter("psswd");
String email = request.getParameter("email");
String Mobno = request.getParameter("Mobno");

create_book_record cbr = new create_book_record();
int id  = cbr.getRegisteredUser("signup");
id = id+1;
String msg = cbr.CreateRegistration(id ,fname,sexr,dob,addrss,uname,psswd,email,Mobno);
System.out.println(msg);   
response.sendRedirect("user_payment.jsp?a="+id);
}
catch(Exception e) {
e.printStackTrace();
}
}


}
