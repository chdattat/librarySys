package database;
import services.insert;
import javax.jws.WebService;
import java.sql.*;
import java.util.Date;

@WebService(endpointInterface = "services.insert")
public class create_book_record implements insert
{
@Override
public int getRecordCount(String table_name)
{ 
int numusers = 0;
try
{
Database_Connection.create_Connection();
String query = "Select count(*) FROM "+table_name;
Statement stmt = Database_Connection.con.createStatement();
ResultSet rs = stmt.executeQuery(query);
while (rs.next()) {
numusers = rs.getInt(1);
} 
Database_Connection.con.close();
} 
catch(Exception e)
{
e.printStackTrace();
}
return numusers;
}
@Override
public String CreateRecord(int id , String category ,String name, int stock ,int issued , String path) 
{
try
{
Database_Connection.create_Connection();
PreparedStatement stmt = Database_Connection.con.prepareStatement("insert into book_record values(?,?,?,?,?,?)");
stmt.setInt(1,id);
stmt.setString(2,category);
stmt.setString(3,name);
stmt.setInt(4,stock);
stmt.setInt(5,issued);
stmt.setString(6,path);
stmt.executeUpdate();
Database_Connection.con.close();
}
catch(Exception e)
{
System.out.println(e);
}
return "record Created Succesfully";
}

    @Override
    public int getRegisteredUser(String table_name)
    {
int numusers = 0;
try
{
Database_Connection.create_Connection();
String query = "Select count(*) FROM "+table_name;
Statement stmt = Database_Connection.con.createStatement();
ResultSet rs = stmt.executeQuery(query);
while (rs.next()) {
numusers = rs.getInt(1);
} 
Database_Connection.con.close();
} 
catch(Exception e)
{
e.printStackTrace();
}
return numusers;
}


@Override
public String CreateRegistration(int id ,String fname ,String sexr,String dob,String addrss,String uname,String psswd,String email,String Mobno) 
{
try
{
    java.util.Date dd = new Date();
Database_Connection.create_Connection();
PreparedStatement stmt = Database_Connection.con.prepareStatement("insert into signup values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
stmt.setInt(1,id);
stmt.setString(2,fname);
stmt.setString(3,sexr);
stmt.setString(4,dob);
stmt.setString(5,addrss);
stmt.setString(6,uname);
stmt.setString(7,psswd);
stmt.setString(8,email);
stmt.setString(9,Mobno);
stmt.setString(10,""+dd);
stmt.setString(11,"");
stmt.setString(12,"");
stmt.setString(13,"");
stmt.setString(14,"");
stmt.setString(15,"");
stmt.setString(16,"");
stmt.setString(17,"1");

stmt.executeUpdate();
Database_Connection.con.close();
}
catch(Exception e)
{
System.out.println(e);
}
return "record Created Succesfully";
}

    @Override
    public String signin(String uname)
    {
String pass="";        
   try
{
Database_Connection.create_Connection();
PreparedStatement stmt = Database_Connection.con.prepareStatement("Select psswd FROM signup where uname=?");
stmt.setString(1,uname);
ResultSet rs = stmt.executeQuery();
while (rs.next()) {
pass = rs.getString(1);
} 
Database_Connection.con.close();
} 
catch(Exception e)
{
e.printStackTrace();
}
return pass;
     
        
    }

    @Override
public String UpdateRecord(int id, String category, String name, int stock, int issued, String path) {
try
{
Database_Connection.create_Connection();
PreparedStatement stmt = Database_Connection.con.prepareStatement("update book_record set book_category=? ,book_name=?,book_stock=?, book_issued=?,book_image=? where book_id=?");

stmt.setString(1,category);
stmt.setString(2,name);
stmt.setInt(3,stock);
stmt.setInt(4,issued);
stmt.setString(5,path);
stmt.setInt(6,id);
stmt.executeUpdate();
Database_Connection.con.close();
}
catch(Exception e)
{
System.out.println(e);
}
return "record Updated Succesfully";
    }
}

