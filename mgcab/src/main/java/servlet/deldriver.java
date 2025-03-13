package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.driver;
import service.web_service;


@WebServlet("/deldriver")
public class deldriver extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public deldriver() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		driver del=new driver();
		
		
		del.setDrid(request.getParameter("drid"));
		web_service del_ser=new web_service();
		del_ser.del_driver(del);
		RequestDispatcher dis=request.getRequestDispatcher("tbdriver");
		dis.forward(request, response);
		
		
		
	}

}