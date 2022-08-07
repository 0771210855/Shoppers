package Servlets;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import DAO.StaffDAO;
import com.QuickyShoppers.Model.Staffs;

/**
 * Servlet implementation class AllocateStaff
 */
@WebServlet("/AllocateStaff")
public class AllocateStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
          
      int longterm = Integer.parseInt(request.getParameter("logterm"));
      
        
        int shorterm;
        int midterm;
        String created_at;
        String updated_at;
        
        midterm = (longterm /2);
        shorterm = (midterm / 5);
        created_at="2022-08-10 14:02:13";
        updated_at ="2022-08-10 14:02:13";
        
          
       Staffs s=new Staffs();  
        s.setLongterm(longterm);
        s.setMidterm(shorterm);
        s.setShorterm(midterm);
        s.setCreated_at(created_at);
        s.setUpdated_at(updated_at);
  
          
        int status = StaffDAO.save(s);  
        if(status>0){  
            out.print("<p>Record saved successfully!</p>");  
            request.getRequestDispatcher("index.html").include(request, response);  
        }else{  
            out.println("Sorry! unable to save record"+midterm +" "+shorterm);  
        }  
          
        out.close();  
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String  ver= "my file";
		
		request.setAttribute("ver", ver);
		
		
		
        RequestDispatcher rd=request.getRequestDispatcher("/priductview.jsp");  
        rd.include(request, response); 
	}
	

}
