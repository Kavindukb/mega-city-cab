package util;

import com.itextpdf.text.*;
import com.itextpdf.text.pdf.*;
import java.io.OutputStream;
import java.io.FileInputStream; // For loading image from file
import model.book;

public class PDFGenerator {
    public static void generateBill(OutputStream out, book booking, double distance, double totalCost) {
        Document document = new Document();
        try {
            PdfWriter.getInstance(document, out); 
            document.open();

            // Check if image file exists
            String imagePath = "/mgcab/src/main/webapp/images/logo.jpg"; // Path to image file
            Image logo = null;
            try {
                // Log the image path to check if it is correct
                System.out.println("Loading image from: " + imagePath);

                logo = Image.getInstance(imagePath);
                logo.scaleToFit(100, 100);  // Scale the image if needed
                logo.setAlignment(Element.ALIGN_CENTER); // Center the image
                document.add(logo);
            } catch (Exception e) {
                System.err.println("Error loading image: " + e.getMessage());
                // If image can't be loaded, add a placeholder message
                document.add(new Paragraph("Error loading logo image."));
            }

            // Define fonts with colors
            Font titleFont = new Font(Font.FontFamily.HELVETICA, 22, Font.BOLD, BaseColor.DARK_GRAY);
            Font headerFont = new Font(Font.FontFamily.HELVETICA, 16, Font.BOLD, BaseColor.BLUE);
            Font normalFont = new Font(Font.FontFamily.HELVETICA, 12, Font.NORMAL, BaseColor.BLACK);
            Font highlightFont = new Font(Font.FontFamily.HELVETICA, 14, Font.BOLD, BaseColor.RED);

            // Add a title with a colored background
            Paragraph title = new Paragraph("Mega City Cab - Bill", titleFont);
            title.setAlignment(Element.ALIGN_CENTER);
            title.setSpacingAfter(20f);
            document.add(title);

            // Add a header for booking details
            Paragraph header = new Paragraph("Booking Details", headerFont);
            header.setAlignment(Element.ALIGN_CENTER);
            header.setSpacingAfter(15f);
            document.add(header);

            // Create a table for booking details
            PdfPTable table = new PdfPTable(2);
            table.setWidthPercentage(90);
            table.setSpacingBefore(10f);
            table.setSpacingAfter(20f);

            // Add booking details to the table
            addTableCell(table, "Booking ID:", booking.getBookid(), normalFont);
            addTableCell(table, "Customer Name:", booking.getCusname(), normalFont);
            addTableCell(table, "Contact Number:", booking.getCusconno(), normalFont);
            addTableCell(table, "Email:", booking.getCusmail(), normalFont);
            addTableCell(table, "Vehicle Category:", booking.getVcat(), normalFont);
            addTableCell(table, "Trip Start Location:", booking.getTripstloc(), normalFont);
            addTableCell(table, "Trip End Location:", booking.getTripendloc(), normalFont);
            addTableCell(table, "Booking Date:", booking.getBookdate(), normalFont);
            addTableCell(table, "Distance (KM):", String.valueOf(distance), normalFont);
            addTableCell(table, "Total Cost (Rs.):", String.format("%.2f", totalCost), highlightFont);

            document.add(table);

            // Add a thank-you message
            Paragraph thankYou = new Paragraph("\nThank you for choosing Mega City Cab!\n", normalFont);
            thankYou.setAlignment(Element.ALIGN_CENTER);
            document.add(thankYou);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            document.close();
        }
    }

    // Helper method to add table cells
    private static void addTableCell(PdfPTable table, String key, String value, Font font) {
        PdfPCell cell1 = new PdfPCell(new Phrase(key, font));
        PdfPCell cell2 = new PdfPCell(new Phrase(value, font));

        // Style the cells
        cell1.setBorder(Rectangle.NO_BORDER);
        cell2.setBorder(Rectangle.NO_BORDER);
        cell1.setBackgroundColor(BaseColor.LIGHT_GRAY);
        cell2.setBackgroundColor(BaseColor.WHITE);
        cell1.setPadding(8f);
        cell2.setPadding(8f);

        table.addCell(cell1);
        table.addCell(cell2);
    }

    // Placeholder for additional bill generation logic (if needed)
    public static void generateBill1(OutputStream out, book booking, double distance, double totalCost) {
        // Add extra functionality if needed
    }
}
