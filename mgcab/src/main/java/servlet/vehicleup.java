package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.web_service;

@WebServlet("/vehicleup")
public class vehicleup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public vehicleup() {
        super();

    }

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String vnoo=request.getParameter("vno");
		String vcatt=request.getParameter("vcat");
		String vmodell=request.getParameter("vmodel");
		String vbrandd=request.getParameter("vbrand");
		String vcolorr=request.getParameter("vcolor");
		String vchasii=request.getParameter("vchasi");
		
		web_service userModell = new  web_service();
        boolean isUpdated = userModell.updatevehicle(vnoo, vcatt, vmodell, vbrandd, vcolorr, vchasii);

        if (isUpdated) {
            request.setAttribute("message", "User updated successfully!");
        } else {
            request.setAttribute("message", "Error updating user!");
        }

        request.getRequestDispatcher("home.jsp").forward(request, response);
	}
		
		
	}


