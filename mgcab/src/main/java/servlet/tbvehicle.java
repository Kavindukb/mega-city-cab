package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.vehicle;
import service.web_service;


@WebServlet("/tbvehicle")
public class tbvehicle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public tbvehicle() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		
		web_service service1=new web_service();
		ArrayList<vehicle> custom = service1.getallvehicle();
		request.setAttribute("cust", custom);
		RequestDispatcher dispacher=request.getRequestDispatcher("vehicletb.jsp");
		dispacher.forward(request,response);
	}

}
