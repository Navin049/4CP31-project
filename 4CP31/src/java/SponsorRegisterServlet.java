import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/SponsorRegisterServlet")
public class SponsorRegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String companyName = request.getParameter("companyName");
        String email = request.getParameter("email");
        String industry = request.getParameter("industry");
        String budget = request.getParameter("budget");
        String bio = request.getParameter("bio");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            Connection con = DBConnection.initializeDatabase();
            String sql = "INSERT INTO sponsors (companyName, email, industry, budget, bio, username, password) VALUES (?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, companyName);
            stmt.setString(2, email);
            stmt.setString(3, industry);
            stmt.setString(4, budget);
            stmt.setString(5, bio);
            stmt.setString(6, username);
            stmt.setString(7, password); // You may want to hash the password before storing it

            int i = stmt.executeUpdate();
            if (i > 0) {
                response.getWriter().println("Registration Successful");
                response.sendRedirect("sponsor_dashboard.jsp"); // Redirect to dashboard after successful registration
            } else {
                response.getWriter().println("Registration Failed");
            }

            stmt.close();
            con.close();

        } catch (SQLException e) {
            response.getWriter().println("Error: " + e.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SponsorRegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
