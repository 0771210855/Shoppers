package Servlets;

import DAO.StaffDAO;
import Model.Staffs;
import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class AllocateStaff
 */
@WebServlet("/AllocateStaff")
public class AllocateStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
        
        /**


	/**
     * @param request
     * @param response
     * @throws jakarta.servlet.ServletException
     * @throws java.io.IOException
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
        @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");  
            try (PrintWriter out = response.getWriter()) {
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
                    request.getRequestDispatcher("/").forward(request,response);
                    
//            request.getRequestDispatcher("index.html").include(request, response);
                }else{
                    out.println("Sorry! unable to save record"+midterm +" "+shorterm);
                }   }  
	}
	
	/**
     * @param request
     * @param response
     * @throws jakarta.servlet.ServletException
     * @throws java.io.IOException
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
        @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        Staffs pro = StaffDAO.Staffpick();

       pro.getId();
       pro.getLongterm();
       pro.getMidterm();
       pro.getShorterm();
       pro.getCreated_at();
       pro.getUpdated_at();
       
       request.setAttribute("id",pro.getLongterm());
       request.setAttribute("midterm",pro.getMidterm());
       request.setAttribute("longterm",pro.getShorterm());
       request.setAttribute("shortterm",pro.getId());
       
//       request.setAttribute("val","myu thhgj");
       
//       System.out.println(pro.getShorterm());
        response.sendRedirect( "./Shop/Dashboard/StaffAllocation.jsp?long="+pro.getLongterm()+"&short="+pro.getShorterm()+"&mid="+pro.getMidterm()+"");
		
		
//		
//        RequestDispatcher rd=request.getRequestDispatcher("./Shop/Dashboard/StaffAllocation.jsp");  
//        rd.forward(request, response);
      }

}
