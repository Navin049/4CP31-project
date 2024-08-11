<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="style.css">
    <script src="script.js"></script>
</head>

<body>
    <div class="container">
        <div class="login-box">
            <!-- Login Form -->
            <section id="loginForm" class="text-center">
                <form action="LoginServlet" method="post" id="loginForm">
                    <h2 class="text-center">User Login</h2>
                    <input type="text" name="username" id="username" placeholder="Username" class="form-control" required><br>
                    <input type="password" name="password" id="password" placeholder="Password" class="form-control" required><br>
                    <select name="userType" id="userType" class="form-control" required>
                        <option value="influencer">Influencer</option>
                        <option value="sponsor">Sponsor</option>
                    </select><br>
                    <button type="submit" class="btn btn-info">Login</button>
                    <h6>Don't have an account? Register as:</h6>
                    <div class="d-grid gap-2">
                        <button type="button" class="btn btn-success" onclick="location.href='influencer_signup.jsp'">Influencer</button>
                        <button type="button" class="btn btn-warning" onclick="location.href='sponsor_signup.jsp'">Sponsor</button>
                    </div>
                </form>
            </section>
        </div>
    </div>
</body>

</html>
