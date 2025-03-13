package servlet;

import java.io.IOException;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.book;
import service.book_service;
import controller.database;

@WebServlet("/BookServlet")
public class BookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private book_service bookService;

    @Override
    public void init() throws ServletException {
        super.init();
        try {
            // Initialize the database connection
            Connection connection = database.getcon();
            bookService = new book_service(connection);
        } catch (Exception e) {
            throw new ServletException("Error initializing database connection.", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            // Create a new booking object
            book newBook = new book();

            // Generate a new booking ID
            String bookId = bookService.generateBookId();
            newBook.setBookid(bookId); // Set the generated booking ID

            // Set booking details from the form
            newBook.setCusname(request.getParameter("cusname"));
            newBook.setCusconno(request.getParameter("cusconno"));
            newBook.setCusmail(request.getParameter("cusmail"));
            newBook.setVcat(request.getParameter("vcat"));
            newBook.setTripstloc(request.getParameter("tripstloc"));
            newBook.setTripendloc(request.getParameter("tripendloc"));
            newBook.setBookdate(request.getParameter("bookdate"));

            // Add the booking to the database
            boolean isInserted = bookService.book_add(newBook);

            if (isInserted) {
                // Redirect with success message and booking ID
                response.sendRedirect("booking.jsp?success=true&bookid=" + bookId);
            } else {
                // Redirect with error message
                response.sendRedirect("booking.jsp?error=true");
            }
        } else if ("delete".equals(action)) {
            // Handle delete action
            String bookId = request.getParameter("bookid");
            boolean isDeleted = bookService.deleteBooking(bookId);

            if (isDeleted) {
                response.sendRedirect("booking.jsp?deleted=true");
            } else {
                response.sendRedirect("booking.jsp?error=true");
            }
        } else if ("update".equals(action)) {
            // Handle update action
            book updatedBook = new book();
            updatedBook.setBookid(request.getParameter("bookid"));
            updatedBook.setCusname(request.getParameter("cusname"));
            updatedBook.setCusconno(request.getParameter("cusconno"));
            updatedBook.setCusmail(request.getParameter("cusmail"));
            updatedBook.setVcat(request.getParameter("vcat"));
            updatedBook.setTripstloc(request.getParameter("tripstloc"));
            updatedBook.setTripendloc(request.getParameter("tripendloc"));
            updatedBook.setBookdate(request.getParameter("bookdate"));

            boolean isUpdated = bookService.updateBooking(updatedBook.getBookid(), updatedBook);

            if (isUpdated) {
                response.sendRedirect("booking.jsp?updated=true");
            } else {
                response.sendRedirect("booking.jsp?error=true");
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Handle GET requests (if needed)
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }
}