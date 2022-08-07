package Servlets;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.QuickyShoppers.Model.ProductsModel;
import DAO.*;


/**
 * Servlet implementation class Viewproducts
 */
@WebServlet("/Viewproducts")
public class Viewproducts extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
		
//        List<ProductsModel> listProduct = ProductDAO.getAllProducts();
//        request.setAttribute("listProduct", listProduct);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("viewpro.jsp");
//        dispatcher.forward(request, response);
//        
        request.setAttribute("prod",ProductDAO.getAllProducts());
        RequestDispatcher dispatcher = request.getRequestDispatcher("viewpro.jsp");
        dispatcher.forward(request, response);
		
//		int id =1;
		
		
//		
//		response.setContentType("text/html");  
//        PrintWriter out=response.getWriter();
//        
//        out.println("<a href='index.html'>Add New Employee</a>");  
//        out.println("<h1>Employees List</h1>"); 
//        
//        
//        ProductsModel list=ProductDAO.getAllProducts();
          
//        List<ProductsModel> list=ProductDAO.getAllProducts(); 
        
//          
//        out.print("<table border='1' width='100%'");  
//        out.print("<tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th><th>Country</th><th>Edit</th><th>Delete</th></tr>");  
////        for(ProductsModel e:list){  
//            out.print("<tr><td> "+e.getId()+"</td><td>"+e.getProductName()+"</td><td><a href='EditServlet?id="+e.getId()+"'>edit</a></td><td><a href='DeleteServlet?id="+e.getId()+"'>delete</a></td></tr>");  
//            RequestDispatcher rd = getRequestDispatcher("priductview.jsp");
            
            

//            request.setAttribute("accountList", e.getProductName() );
//            rd.forward(request, response);
        }  
        
//        RequestDispatcher rd=request.getRequestDispatcher("/index.html");  
//        rd.include(request, response); 
//        
        
//        out.print("</table>");  
          
//        out.close();
	}




