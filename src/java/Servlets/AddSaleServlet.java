package Servlets;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import DAO.SalesDAO;
import com.QuickyShoppers.Model.Sales;

/**
 * Servlet implementation class AddSaleServlet
 */
@WebServlet("/AddSaleServlet")
public class AddSaleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();  
	          
	      int customerId = Integer.parseInt(request.getParameter("customerid"));
	      int productId = Integer.parseInt(request.getParameter("productid"));
	      String created_at = request.getParameter("created_at");
	      String updated_at = request.getParameter("updated_at");
	      
	       Sales s=new Sales();  
	        s.setCustomerId(customerId);
	        s.setProductId(productId);
	        s.setCreated_at(created_at);
	        s.setUpdated_at(updated_at);

	  
	          
	        int status = SalesDAO.save(s);  
	        if(status>0){  
	            out.print("<p>Record saved successfully!</p>");  
	            request.getRequestDispatcher("index.html").include(request, response);  
	        }else{  
	            out.println("Sorry! unable to save record");  
	        }  
	          
	        out.close();  
		}

}
