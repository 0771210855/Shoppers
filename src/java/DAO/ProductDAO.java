package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.QuickyShoppers.Model.ProductsModel;



public class ProductDAO {
    
    public static int save(ProductsModel p){  
        int status=0;  
        try{  
        	Connection con=DBconnection.getConnection();  
            PreparedStatement ps=con.prepareStatement(  
                         "insert into products(productName,image) values (?,?)");  
            ps.setString(1,p.getProductName());
            ps.setString(2,p.getProductImage());
 
            
            status=ps.executeUpdate();  
              
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return status;  
    }
    
    
    
    
    
    public static ProductsModel getProductById(){  
    	ProductsModel p=new ProductsModel();  
          
        try{  
        	Connection con=DBconnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("SELECT * FROM products WHERE id=(SELECT max(id) FROM products);");    
            ResultSet rs=ps.executeQuery();  
            if(rs.next()){  
             p.setId(rs.getInt(1));  
             p.setProductName(rs.getString(2));  
  
            }  
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return p;  
        
    }
    
  
    
    
    
    
    
    
    public static ArrayList<ProductsModel> getAllProducts(){  
    	ArrayList<ProductsModel> list=new ArrayList<ProductsModel>();  
          
        try{  
        	Connection con=DBconnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from products");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
            	ProductsModel e=new ProductsModel();    
                e.setProductName(rs.getString(2));  
  
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }

}
