package Servlets;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import DAO.CustomersDAO;
import com.QuickyShoppers.Model.Customers;

/**
 * Servlet implementation class AddCustomer
 */
@WebServlet("/AddCustomer")
public class AddCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
          
        String userName =request.getParameter("username"); 
        String gender =request.getParameter("gender");
        String preference =request.getParameter("preference");
        String location =request.getParameter("location");
        String email =request.getParameter("email");
        
          
        Customers c=new Customers();  
        c.setUserName(userName); 
        c.setGender(gender);
        c.setPreference(preference);
        c.setLocation(location);
        c.setEmail(email);
  
          
        int status = CustomersDAO.save(c);  
        if(status>0){  
            out.print("<p>Record saved successfully!</p>");  
            request.getRequestDispatcher("index.html").include(request, response);  
        }else{  
            out.println("Sorry! unable to save record");  
        }  
          
        out.close();  
	}
	

}
