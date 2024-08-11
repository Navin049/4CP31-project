<%-- 
    Document   : Adminlogin
    Created on : Aug 10, 2024, 11:09:53 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css">
    <script src="script.js"></script>
</head>

<body>
    <div class="container">
        <div class="login-box">
            <section id="loginForm" class="text-center">
                <form action="index.html" method="post">
                    <h2 class="text-center">Admin Login</h2>
                    <input type="text" name="username" id="username" placeholder="Username" class="form-control"
                        required><br>
                    <input type="password" name="password" id="password" placeholder="Password" class="form-control"
                        required><br>
                    <button type="submit" class="btn btn-info">Login</button>
                    <h6>Don't have an account? <a href="javascript:void(0);" onclick="toggleForms()">Sign up</a></h6>
                </form>
            </section>

            <section id="signupForm" class="text-center form-toggle">
                <form action="signup.html" method="post">
                    <h2 class="text-center">Admin Sign Up</h2>
                    <input type="text" name="username" id="signup-username" placeholder="Username" class="form-control"
                        required><br>
                    <input type="email" name="email" id="signup-email" placeholder="Email" class="form-control"
                        required><br>
                    <input type="password" name="password" id="signup-password" placeholder="Password"
                        class="form-control" required><br>
                    <button type="submit" class="btn btn-success">Sign Up</button>
                    <h6>Already have an account? <a href="javascript:void(0);" onclick="toggleForms()">Login</a></h6>
                </form>
            </section>
        </div>
    </div>
</body>

</html>