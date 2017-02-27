package services;

import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;

@WebService
@SOAPBinding(style = SOAPBinding.Style.RPC) 
public interface Payment_Transactio
{
@WebMethod String makePayment(String id , String debit_card_select ,String dcard_number, String dname_on_card ,String dcvv_number,String dexpiry_date_month,String dexpiry_date_year); 
}
