package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.vehicle;
import service.web_service;


@WebServlet("/delvehicle")
public class delvehicle extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public delvehicle() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
		vehicle del=new vehicle();
		
		del.setVno(request.getParameter("vno"));
		web_service del_ser=new web_service();
		del_ser.del_vehicle(del);
		RequestDispatcher dis=request.getRequestDispatcher("tbvehicle");
		dis.forward(request,response);
		
		
		
	}

}
