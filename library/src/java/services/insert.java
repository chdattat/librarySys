package services;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.soap.SOAPBinding;
import javax.jws.soap.SOAPBinding.Style;

@WebService
@SOAPBinding(style = Style.RPC) 
public interface insert {

 @WebMethod int getRecordCount(String table_name);
 @WebMethod String CreateRecord(int id , String category ,String name, int stock ,int issued , String path);
 @WebMethod String UpdateRecord(int id , String category ,String name, int stock ,int issued , String path);
 @WebMethod int getRegisteredUser(String table_name);
 @WebMethod String CreateRegistration(int id ,String fname ,String sexr,String dob,String addrss,String uname,String psswd,String email,String Mobno); 
 @WebMethod String signin(String uname); 
  
}