package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.QuickyShoppers.Model.Sales;

public class SalesDAO {

	public static int save(Sales s){  
        int status=0;  
        try{  
            Connection con=DBconnection.getConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "insert into sales(customerId,productId,created_at,updated_at) values (?,?,?,?)");  
            ps.setInt(1,s.getProductId());
    
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
    }
	
    public static List<Sales> getAllSales(){  
        List<Sales> list=new ArrayList<Sales>();  
          
        try{  
            Connection con=DBconnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from sales");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                Sales e=new Sales();  
                e.setCustomerId(rs.getInt(1));  
                e.setProductId(rs.getInt(2));  
                e.setCreated_at(rs.getString(3));  
                e.setUpdated_at(rs.getString(4));  
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
		
	}
	

}
