<%-- 
    Document   : sponsor_signup
    Created on : Aug 10, 2024, 10:59:10 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sponsor Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="container">
        <div class="registration-box">
            <h2 class="text-center  mt-3">Sponsor Registration</h2>
            <form action="SponsorRegisterServlet" method="post">
                <div class="mb-3">
                    <label for="companyName" class="form-label">Company Name</label>
                    <input type="text" name="companyName" id="companyName" class="form-control" placeholder="Enter your company name" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" name="email" id="email" class="form-control" placeholder="Enter your email" required>
                </div>
                <div class="mb-3">
                    <label for="industry" class="form-label">Industry</label>
                    <input type="text" name="industry" id="industry" class="form-control" placeholder="e.g., Technology, Fashion" required>
                </div>
                <div class="mb-3">
                    <label for="budget" class="form-label">Budget</label>
                    <input type="text" name="budget" id="budget" class="form-control" placeholder="Enter your budget" required>
                </div>
                <div class="mb-3">
                    <label for="bio" class="form-label">Bio</label>
                    <textarea name="bio" id="bio" class="form-control" rows="3" placeholder="Tell us about your company" required></textarea>
                </div>
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" name="username" id="username" class="form-control" placeholder="Choose a username" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" name="password" id="password" class="form-control" placeholder="Enter a secure password" required>
                </div>
                <button type="submit" class="btn btn-success">Create Account</button>
            </form>
        </div>
    </div>
</body>

</html>
