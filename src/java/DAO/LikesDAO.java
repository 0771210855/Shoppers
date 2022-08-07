package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.QuickyShoppers.Model.Likes;

public class LikesDAO {

    public static int save(Likes l){  
        int status=0;  
        try{  
            Connection con = DBconnection.getConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "insert into likes(productId) values (?)");  
            ps.setInt(1,l.getProductId());
    
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
    }
	

}
