package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.QuickyShoppers.Model.Staffs;

public class StaffDAO {
    public static int save(Staffs s){  
        int status=0;  
        try{  
            Connection con=DBconnection.getConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "insert into staffallocations(longTerm,midTerm,shortTerm,created_at,updated_at) values (?,?,?,?,?)");  
            ps.setInt(1,s.getLongterm());
            ps.setInt(2,s.getMidterm());
            ps.setInt(3,s.getShorterm());
            ps.setString(4,s.getCreated_at());
            ps.setString(5,s.getUpdated_at());

            
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
    }

}
