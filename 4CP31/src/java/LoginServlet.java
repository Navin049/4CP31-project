import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String userType = request.getParameter("userType"); // Added to differentiate between sponsor and influencer

        try {
            // Establish database connection
            Connection con = DBConnection.initializeDatabase();

            // Query to check user credentials based on user type
            String sql;
            if ("sponsor".equalsIgnoreCase(userType)) {
                sql = "SELECT * FROM sponsors WHERE username = ? AND password = ?";
            } else if ("influencer".equalsIgnoreCase(userType)) {
                sql = "SELECT * FROM influencers WHERE username = ? AND password = ?";
            } else {
                response.getWriter().println("Invalid user type");
                return;
            }

            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password);

            // Execute the query
            ResultSet rs = stmt.executeQuery();

            // Check if a match was found
            if (rs.next()) {
                // Redirect based on user type
                if ("sponsor".equalsIgnoreCase(userType)) {
                    response.sendRedirect("sponsor_dashboard.jsp");
                } else if ("influencer".equalsIgnoreCase(userType)) {
                    response.sendRedirect("influencer_dashboard.jsp");
                }
            } else {
                // Invalid credentials, show an error message
                response.getWriter().println("Invalid username or password");
            }

            // Close resources
            rs.close();
            stmt.close();
            con.close();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred: " + e.getMessage());
        }
    }
}
