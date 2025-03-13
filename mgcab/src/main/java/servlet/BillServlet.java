package servlet;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.book;
import service.book_service;
import controller.database;
import util.PDFGenerator;

@WebServlet("/BillServlet")
public class BillServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private book_service bookService;

    @Override
    public void init() throws ServletException {
        super.init();
        try {
            Connection connection = database.getcon();
            bookService = new book_service(connection);
        } catch (Exception e) {
            throw new ServletException("Database connection failed.", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bookId = request.getParameter("bookid");
        String distanceStr = request.getParameter("distance");

        if (bookId == null || bookId.isEmpty() || distanceStr == null || distanceStr.isEmpty()) {
            response.sendRedirect("bill.jsp?error=Invalid Input");
            return;
        }

        double distance;
        try {
            distance = Double.parseDouble(distanceStr);
            if (distance <= 0) {
                response.sendRedirect("bill.jsp?error=Invalid Distance");
                return;
            }
        } catch (NumberFormatException e) {
            response.sendRedirect("bill.jsp?error=Invalid Distance Format");
            return;
        }

        book booking = bookService.getBookingById(bookId);
        if (booking == null) {
            response.sendRedirect("bill.jsp?error=Booking Not Found");
            return;
        }

        double pricePerKm = getPricePerKm(booking.getVcat());
        double totalCost = distance * pricePerKm;

        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "attachment; filename=Bill_" + bookId + ".pdf");

        OutputStream out = response.getOutputStream();
        PDFGenerator.generateBill(out, booking, distance, totalCost);
        out.close();
    }

    private double getPricePerKm(String vehicleCategory) {
        switch (vehicleCategory.toLowerCase()) {
            case "tuktuk": return 120.0;
            case "car": return 200.0;
            case "minivan": return 240.0;
            case "van": return 350.0;
            case "jeep": return 450.0;
            case "cab": return 400.0;
            case "lorry": return 380.0;
            default: return 0.0;
        }
    }
}