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

@WebServlet("/addvehicle")
public class addvehicle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public addvehicle() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		vehicle app5= new vehicle();
		app5.setVno(request.getParameter("vno"));
		app5.setVcat(request.getParameter("vcat"));
		app5.setVmodel(request.getParameter("vmodel"));
		app5.setVbrand(request.getParameter("vbrand"));
		app5.setVcolor(request.getParameter("vcolor"));
		app5.setVchasi(request.getParameter("vchasi"));
		
		web_service app2= new web_service();
		app2.vehicle_add(app5);
		
RequestDispatcher diss=request.getRequestDispatcher("adminDashboard.jsp");
		
		diss.forward(request, response);

		doGet(request, response);
	}

}
