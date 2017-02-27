package controller;

import database.create_book_record;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class signin extends HttpServlet
{

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
  response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
try
{
   String user = request.getParameter("user_name");
   String pass = request.getParameter("user_pwd");
 create_book_record cbr = new create_book_record();
  String msg = cbr.signin(user);
  HttpSession ss = request.getSession();
  if(msg.equals(pass))
  {
      ss.setAttribute("user",user);
      ss.setAttribute("pass",pass);
      out.print("success");
   //   RequestDispatcher rd = request.getRequestDispatcher("welcomeuser.jsp");
  //    rd.forward(request, response);
  }
  else
  {
      out.print("fail");
  }
   
   
}
catch(Exception e)
{
 e.printStackTrace();   
}

}
}