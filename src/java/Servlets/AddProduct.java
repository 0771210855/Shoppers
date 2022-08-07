package Servlets;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import com.QuickyShoppers.Model.ProductsModel;
import DAO.*;

/**
 * Servlet implementation class AddProduct
 */
@MultipartConfig
@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
          
        String productName=request.getParameter("name");
        Part file = request.getPart("image");
        
        String imageFileName = file.getSubmittedFileName();
        
      String path = "C:/Users/abdqadir/eclipse-workspace/QuickyShoppers/images/"+imageFileName;
      
//      System.out.println(path);
      try {
      FileOutputStream fos =new FileOutputStream(path);
      InputStream is = file.getInputStream();
      
      byte[] data = new byte[is.available()];
      is.read(data);
      fos.write(data);
      fos.close();
      }catch(Exception e) {
    	  e.printStackTrace();
      }
      

          
        ProductsModel p=new ProductsModel();  
        p.setProductName(productName);
        p.setProductImage(imageFileName);

  
          
        int status = ProductDAO.save(p);  
        if(status>0){  
            out.print("<p>Record saved successfully!</p>"); 
            
            request.getRequestDispatcher("index.html").include(request, response);  
        }else{  
            out.println("Sorry! unable to save record"+path); 
        }  
          
        out.close();  
	}

}
