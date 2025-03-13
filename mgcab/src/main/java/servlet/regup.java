package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.web_service;


@WebServlet("/regup")
public class regup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public regup() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String regnoo=request.getParameter("regno");
		String namee=request.getParameter("name");
		String addresss=request.getParameter("address");
		int nicc=Integer.parseInt(request.getParameter("nic"));
		int tpnoo=Integer.parseInt(request.getParameter("tpno"));
		String usernamee=request.getParameter("username");
		String passs=request.getParameter("pass");
		
		web_service userModell = new  web_service();
        boolean isUpdated = userModell.updateuser(regnoo, namee, addresss, nicc, tpnoo , usernamee, passs);

        if (isUpdated) {
            request.setAttribute("message", "User updated successfully!");
        } else {
            request.setAttribute("message", "Error updating user!");
        }

        request.getRequestDispatcher("login.jsp").forward(request, response);
	}
	}


