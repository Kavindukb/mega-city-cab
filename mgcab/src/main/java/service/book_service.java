package service;

import model.book;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class book_service {
    private Connection connection;

    public book_service(Connection connection) {
        this.connection = connection;
    }

    public boolean book_add(book app) {
        String query = "INSERT INTO book (bookid, cusname, cusconno, cusmail, vcat, tripstloc, tripendloc, bookdate) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, app.getBookid());
            stmt.setString(2, app.getCusname());
            stmt.setString(3, app.getCusconno());
            stmt.setString(4, app.getCusmail());
            stmt.setString(5, app.getVcat());
            stmt.setString(6, app.getTripstloc());
            stmt.setString(7, app.getTripendloc());
            stmt.setString(8, app.getBookdate());
            int result = stmt.executeUpdate();
            return result > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<book> getAllBookings() {
        List<book> bookings = new ArrayList<>();
        String query = "SELECT * FROM book";
        try (Statement stmt = connection.createStatement(); ResultSet rs = stmt.executeQuery(query)) {
            while (rs.next()) {
                book b = new book();
                b.setBookid(rs.getString("bookid"));
                b.setCusname(rs.getString("cusname"));
                b.setCusconno(rs.getString("cusconno"));
                b.setCusmail(rs.getString("cusmail"));
                b.setVcat(rs.getString("vcat"));
                b.setTripstloc(rs.getString("tripstloc"));
                b.setTripendloc(rs.getString("tripendloc"));
                b.setBookdate(rs.getString("bookdate"));
                bookings.add(b);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookings;
    }

    public boolean updateBooking(String bookId, book updatedBook) {
        String query = "UPDATE book SET cusname=?, cusconno=?, cusmail=?, vcat=?, tripstloc=?, tripendloc=?, bookdate=? WHERE bookid=?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, updatedBook.getCusname());
            stmt.setString(2, updatedBook.getCusconno());
            stmt.setString(3, updatedBook.getCusmail());
            stmt.setString(4, updatedBook.getVcat());
            stmt.setString(5, updatedBook.getTripstloc());
            stmt.setString(6, updatedBook.getTripendloc());
            stmt.setString(7, updatedBook.getBookdate());
            stmt.setString(8, bookId);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteBooking(String bookId) {
        String query = "DELETE FROM book WHERE bookid=?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, bookId);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public book getBookingById(String bookId) {
        String query = "SELECT * FROM book WHERE bookid=?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, bookId);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                book b = new book();
                b.setBookid(rs.getString("bookid"));
                b.setCusname(rs.getString("cusname"));
                b.setCusconno(rs.getString("cusconno"));
                b.setCusmail(rs.getString("cusmail"));
                b.setVcat(rs.getString("vcat"));
                b.setTripstloc(rs.getString("tripstloc"));
                b.setTripendloc(rs.getString("tripendloc"));
                b.setBookdate(rs.getString("bookdate"));
                return b;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String generateBookId() {
        String query = "SELECT MAX(bookid) AS maxId FROM book";
        try (Statement stmt = connection.createStatement(); ResultSet rs = stmt.executeQuery(query)) {
            if (rs.next()) {
                String maxId = rs.getString("maxId");
                if (maxId != null) {
                    int nextId = Integer.parseInt(maxId.substring(1)) + 1;
                    return String.format("B%04d", nextId);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return "B0001"; // Default if no bookings exist
    }
}