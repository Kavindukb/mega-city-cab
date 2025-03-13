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

@WebServlet("/adddriver")
public class adddriver extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public adddriver() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		driver app1= new driver();
		app1.setDrid(request.getParameter("drid"));
		app1.setDname(request.getParameter("dname"));
		app1.setDaddress(request.getParameter("daddress"));
		app1.setDtpno(Integer.parseInt(request.getParameter("dtpno")));
		app1.setDnic(Integer.parseInt(request.getParameter("dnic")));
		app1.setDlno(request.getParameter("dlno"));
		
		web_service app2= new web_service();
		app2.driver_add(app1);
		
RequestDispatcher diss=request.getRequestDispatcher("adminDashboard.jsp");
		
		diss.forward(request, response);
	}

}
