<%-- 
    Document   : search_Influencer
    Created on : Aug 10, 2024, 11:58:03 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Influencer</title>
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
            <a class="navbar-brand" href="#">Sponsor Dashboard</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav  ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Search Influencer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"> My Campaigns</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Create Campaign</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Request</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="search-box">
            <form action="" method="post">
                <h2>Search Influencer</h2>
                <div class="mb-3">
                    <label for="Name" class="form-label">Name:</label>
                    <input type="text" id="search" name="search" placeholder="Enter Influencer Name" class="form-control">
                </div>
                <div class="mb-3">
                    <label for="category" class="form-label">Category:</label>
                    <input type="text" id="category" name="category" placeholder="category" class="form-control">
                </div>
               <div class="mb-3">
                   <input type="button" value="Search" class="btn btn-primary">
               </div>
            </form>
        </div>
    </div>
</body>
</html>