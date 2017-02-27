package controller;

import database.Database_Connection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import services.Payment_Mode;
import services.SmtpMail;

public class Payment_Details extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter(); 
try
{
String id = request.getParameter("id");    
String debit_card_select = request.getParameter("debit_card_select");
String dcard_number = request.getParameter("dcard_number");
String dname_on_card = request.getParameter("dname_on_card");
String dcvv_number = request.getParameter("dcvv_number");
String dexpiry_date_month = request.getParameter("dexpiry_date_month");
String dexpiry_date_year = request.getParameter("dexpiry_date_year");

Payment_Mode pm = new Payment_Mode();
pm.makePayment(id ,debit_card_select ,dcard_number,dname_on_card ,dcvv_number,dexpiry_date_month,dexpiry_date_year);

PreparedStatement stmt1 = Database_Connection.con.prepareStatement("select * from signup where s_no=?");
stmt1.setInt(1,Integer.parseInt(id));
ResultSet rs = stmt1.executeQuery();
if(rs.next())
{
    String uname = rs.getString(6);
    String pwd = rs.getString(7);
    String email = rs.getString(8);
    String ur = "YOUR Username = "+uname+"and Password = "+pwd;
    SmtpMail sm = new SmtpMail();
    sm.sendEmail(email,"Account Details",ur);   
}


Database_Connection.con.close();

response.sendRedirect("user_payment_response.jsp");
}
catch(Exception e)
{
System.out.println(e);
}
}
}
