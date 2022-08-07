package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.QuickyShoppers.Model.Customers;

public class CustomersDAO {

    
    public static int save(Customers c){  
        int status=0;  
        try{  
            Connection con=DBconnection.getConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "insert into customers(userName,gender,preference,location,email) values (?,?,?,?,?)");  
            ps.setString(1,c.getUserName());
            ps.setString(2,c.getGender());
            ps.setString(3,c.getPreference());
            ps.setString(4,c.getLocation());
            ps.setString(5,c.getEmail());

            
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
    }

}
