package Servlets;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import DAO.ProductDAO;
import DAO.SalesDAO;
import com.QuickyShoppers.Model.ProductsModel;
import com.QuickyShoppers.Model.Sales;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Disparture
 */
@WebServlet("/Disparture")
public class Disparture extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       ProductsModel pro = ProductDAO.getProductById();
       
       pro.getId();
       pro.getProductName();

		String  ver= "my file";
		
		request.setAttribute("ver", ver);
		
		
		
        RequestDispatcher rd=request.getRequestDispatcher("/test.jsp");  
        rd.include(request, response);
        
        List<Sales> list= SalesDAO.getAllSales(); 
        
		request.setAttribute("test", SalesDAO.getAllSales());
        RequestDispatcher res=request.getRequestDispatcher("test.jsp");  
        res.include(request, response);
        
        
        
	
	
	  response.setContentType("text/html");  
      PrintWriter out=response.getWriter();  
      out.println("<a href='index.html'>Add New Employee</a>");  
      out.println("<h1>Employees List</h1>");  
        
     
        
      out.print("<table border='1' width='100%'");  
      out.print("<tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th><th>Country</th>");  
      for(Sales e:list){  
       out.print("<tr><td>"+e.getCustomerId()+"</td><td>"+e.getProductId()+"</td><td>"+e.getCreated_at()+"</td><td>"+e.getUpdated_at()+"</td>");  
               
                
      }  
      out.print("</table>");  
        
	}
}
