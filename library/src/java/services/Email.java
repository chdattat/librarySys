package services;

import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.jws.soap.SOAPBinding.Style;


@WebService
@SOAPBinding(style = Style.RPC) 
public interface Email
{
@WebMethod String sendEmail(String email1 , String sub , String msg1);
}
