package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.web_service;


@WebServlet("/driverup")
public class driverup extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public driverup() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*String did;
String dname;
String daddress;
int dtpno;
int dnic;
String dlno;*/
		
		String dridd=request.getParameter("drid");
		String dnamee=request.getParameter("dname");
		String daddresss=request.getParameter("daddress");
		int dtpnoo=Integer.parseInt(request.getParameter("dtpno"));
		int dnicc=Integer.parseInt(request.getParameter("dnic"));
		String dlnoo=request.getParameter("dlno");
		
		web_service userModell = new  web_service();
        boolean isUpdated = userModell.updatedriver(dridd, dnamee, daddresss, dtpnoo, dnicc, dlnoo);

        if (isUpdated) {
            request.setAttribute("message", "User updated successfully!");
        } else {
            request.setAttribute("message", "Error updating user!");
        }

        request.getRequestDispatcher("adminDashboard.jsp").forward(request, response);
	}

}
