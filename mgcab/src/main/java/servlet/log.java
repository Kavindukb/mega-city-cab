package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.register;
import service.web_service;


@WebServlet("/log")
public class log extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public log() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String username = request.getParameter("username");
	    String password = request.getParameter("pass");

	    // Check if the entered credentials are for the admin
	    if ("admin".equals(username) && "admin".equals(password)) {
	        response.sendRedirect("adminDashboard.jsp"); // Redirect to admin dashboard
	        return;
	    }

	    // If not admin, proceed with regular user authentication
	    register user_log = new register();
	    user_log.setUsername(username);
	    user_log.setPass(password);
	    
	    web_service serve = new web_service();
	    boolean status = serve.validate(user_log);

	    if (status) {
	        register loggedcus = serve.getone(user_log);
	        request.setAttribute("customer", loggedcus);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("customerDashboard.jsp");
	        dispatcher.forward(request, response);
	    } else {
	        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
	        dispatcher.forward(request, response);
	    }
	}
}



