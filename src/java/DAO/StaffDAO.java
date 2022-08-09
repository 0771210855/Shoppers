package DAO;

import Model.Staffs;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
  
    
      
        public static Staffs Staffpick(int id){  
        Staffs e=new Staffs();  
          
        try{  
            Connection con=DBconnection.getConnection();  
            PreparedStatement ps=con.prepareStatement("select * staffallocations where id=?");  
            ps.setInt(1,id);  
            ResultSet rs=ps.executeQuery();  
            if(rs.next()){  
                e.setId(rs.getInt(1));  
                e.setLongterm(rs.getInt(2));  
                e.setMidterm(rs.getInt(3));  
                e.setShorterm(rs.getInt(4));  
                e.setCreated_at(rs.getString(5)); 
                e.setUpdated_at(rs.getString(5));
            }  
            con.close();  
        }catch(Exception ex){ex.printStackTrace();}  
          
        return e;  
    }


}
