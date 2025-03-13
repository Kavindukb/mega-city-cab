package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.register;
import service.web_service;


@WebServlet("/regtb")
public class regtb extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public regtb() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		web_service service1=new web_service();
		ArrayList<register> custom = service1.getalluser();
		request.setAttribute("cust", custom);
		RequestDispatcher dispacher=request.getRequestDispatcher("regtbb.jsp");
		dispacher.forward(request,response);
	}

}
