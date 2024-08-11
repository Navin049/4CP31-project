<%-- 
    Document   : influencer_signup
    Created on : Aug 10, 2024, 11:18:34 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Influencer Registration</title>
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
            <h2 class="text-center mt-3" >Influencer Registration</h2>
            <form action="InfluencerRegisterServlet" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input type="text" name="name" id="name" class="form-control" placeholder="Enter your full name" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" name="email" id="email" class="form-control" placeholder="Enter your email" required>
                </div>
                <div class="mb-3">
                    <label for="category" class="form-label">Category</label>
                    <input type="text" name="category" id="category" class="form-control" placeholder="e.g., Tech, Lifestyle" required>
                </div>
                <div class="mb-3">
                    <label for="niche" class="form-label">Niche</label>
                    <input type="text" name="niche" id="niche" class="form-control" placeholder="e.g., Smartphones, Fashion" required>
                </div>
                <div class="mb-3">
                    <label for="reach" class="form-label">Reach</label>
                    <input type="text" name="reach" id="reach" class="form-control" placeholder="e.g., Number of followers" required>
                </div>
                <div class="mb-3">
                    <label for="bio" class="form-label">Bio</label>
                    <textarea name="bio" id="bio" class="form-control" rows="3" placeholder="Tell us about yourself" required></textarea>
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
