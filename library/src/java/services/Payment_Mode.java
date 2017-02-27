package services;

import database.Database_Connection;
import java.sql.PreparedStatement;
import javax.jws.WebService;

@WebService(endpointInterface = "service.Payment_Transactio")

public class Payment_Mode implements Payment_Transactio
{
@Override    
public String makePayment(String id , String debit_card_select ,String dcard_number, String dname_on_card ,String dcvv_number,String dexpiry_date_month,String dexpiry_date_year) 
{
try
{
Database_Connection.create_Connection();
PreparedStatement stmt = Database_Connection.con.prepareStatement("update signup set debit_card_select=? ,dcard_number=?,dname_on_card=?, dcvv_number=?,dexpiry_date_month=?,dexpiry_date_year=?,status=? where s_no=?");
stmt.setString(1,debit_card_select);
stmt.setString(2,dcard_number);
stmt.setString(3,dname_on_card);
stmt.setString(4,dcvv_number);
stmt.setString(5,dexpiry_date_month);
stmt.setString(6,dexpiry_date_year);
stmt.setString(7,"0");
stmt.setInt(8,Integer.parseInt(id));
stmt.executeUpdate();
}
catch(Exception e)
{
System.out.println(e);
}
return "record Created Succesfully";
}
    
}
