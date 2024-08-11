import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/InfluencerRegisterServlet")
public class InfluencerRegisterServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String category = request.getParameter("category");
        String niche = request.getParameter("niche");
        String reach = request.getParameter("reach");
        String bio = request.getParameter("bio");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        try {
            // Establish database connection
            try (Connection con = DBConnection.initializeDatabase()) {
                // SQL query to insert influencer data
                String sql = "INSERT INTO influencers (name, email, category, niche, reach, bio, username, password) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

                try (PreparedStatement stmt = con.prepareStatement(sql)) {
                    stmt.setString(1, name);
                    stmt.setString(2, email);
                    stmt.setString(3, category);
                    stmt.setString(4, niche);
                    stmt.setString(5, reach);
                    stmt.setString(6, bio);
                    stmt.setString(7, username);
                    stmt.setString(8, password); // Hashing password should be done here if needed

                    int i = stmt.executeUpdate();
                    if (i > 0) {
                        response.getWriter().println("Registration Successful");
                        response.sendRedirect("influencer_dashboard.jsp"); // Redirect to dashboard after successful registration
                    } else {
                        response.getWriter().println("Registration Failed");
                    }
                } catch (SQLException e) {
                    response.getWriter().println("SQL Error: " + e.getMessage());
                }
            } catch (SQLException e) {
                response.getWriter().println("Database Error: " + e.getMessage());
            } catch (ClassNotFoundException e) {
                response.getWriter().println("Class Not Found Error: " + e.getMessage());
            }
        } catch (IOException e) {
            response.getWriter().println("IO Error: " + e.getMessage());
        }
    }
}
