package controller;

import database.create_book_record;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import services.upload;


public class update_books extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter(); 
 try
 {
     upload upld=new upload();
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
            ArrayList al=new ArrayList();
            Calendar currentDate = Calendar.getInstance();
            String img="";
            List list = upload.parseRequest(request);
            Iterator iterator =list.iterator();
            do
            {
                if(!iterator.hasNext())
                    break;
                FileItem fi = (FileItem)iterator.next();
                if(!fi.isFormField() && !fi.getName().trim().equals(""))
                {
                  String upload_path="C:/wamp/www/";         
                    upld.upload_file1(fi,upload_path+"book/"+currentDate.getTimeInMillis());
                    img=currentDate.getTimeInMillis()+""+fi.getName().substring(fi.getName().lastIndexOf("."));
                    
               
                    out.println(img);
                }
                else
                {
                 al.add(fi.getString());
                 out.println(al.size());
                }   
            } while(true);
            out.println(al);
            
create_book_record cbr = new create_book_record();
String msg = cbr.UpdateRecord(Integer.parseInt(al.get(0).toString()),al.get(1).toString(),al.get(2).toString(),Integer.parseInt(al.get(3).toString()),Integer.parseInt(al.get(4).toString()),img);
System.out.println(msg);   
response.sendRedirect("admin_update_book_details.jsp");
 }
catch(Exception e)
{
    System.out.println(e);
}

}
}