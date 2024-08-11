<%-- 
    Document   : influencer_dashboard
    Created on : Aug 10, 2024, 11:19:09 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Influencer Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
<link rel="stylesheet" href="style.css">
<script src="script.js"></script>
</head>

<body>
    <nav class="navbar navbar-expand-sm navbar-dark bg-dark text-white">
    <div class="container-fluid">
        <a class="navbar-brand " href="#">Influencer Dashboard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#" onclick="showProfile()">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" onclick="updateProfile()">Update Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" onclick="manageAdRequests()">Ad Requests</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" onclick="searchCampaigns()">Search Campaigns</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.html">Logout</a>
                </li>
            </ul>
        </div>
    </div>
    </nav>

    <div class="container content">
        <div id="dashboardContent">
            <h2>Welcome to your Dashboard</h2>
            <p>Select an option from the navigation bar to get started.</p>
        </div>
    </div>

    <script>
        function showProfile() {
            document.getElementById('dashboardContent').innerHTML = `
                <h2>Your Profile</h2>
                <p>Name: John Doe</p>
                <p>Email: john.doe@example.com</p>
                <p>Category: Tech</p>
                <p>Niche: Gadgets</p>
                <p>Reach: 50,000 followers</p>
            `;
        }

        function updateProfile() {
            document.getElementById('dashboardContent').innerHTML = `
                <h2>Update Profile</h2>
                <form>
                    <div class="mb-3">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" class="form-control" id="name" value="John Doe">
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" value="john.doe@example.com">
                    </div>
                    <div class="mb-3">
                        <label for="category" class="form-label">Category</label>
                        <input type="text" class="form-control" id="category" value="Tech">
                    </div>
                    <div class="mb-3">
                        <label for="niche" class="form-label">Niche</label>
                        <input type="text" class="form-control" id="niche" value="Gadgets">
                    </div>
                    <div class="mb-3">
                        <label for="reach" class="form-label">Reach</label>
                        <input type="number" class="form-control" id="reach" value="50000">
                    </div>
                    <button type="submit" class="btn btn-primary">Update</button>
                </form>
            `;
        }

        function manageAdRequests() {
            document.getElementById('dashboardContent').innerHTML = `
                <h2>Ad Requests</h2>
                <p>Here you can view and manage your ad requests.</p>
                <!-- Ad requests list would be dynamically loaded here -->
            `;
        }

        function searchCampaigns() {
            document.getElementById('dashboardContent').innerHTML = `
                <h2>Search Campaigns</h2>
                <p>Search for campaigns based on your niche and interests.</p>
                <!-- Campaign search functionality would be implemented here -->
            `;
        }
    </script>
</body>

</html>
