<%-- 
    Document   : create_campaign
    Created on : Aug 10, 2024, 11:59:33 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create compaign</title>
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
                        <a class="nav-link" href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="search_Influencer.jsp">Search Influencer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="mycampaign.jsp"> My Campaigns</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="create_campaign.jsp">Create Campaign</a>
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
        <div class="campaign-box">
            <h2 class="text-center mt-3">Create Campaign</h2>
            <form id="campaignForm">
                <div class="mb-3">
                    <label for="campaignName" class="form-label">Campaign Name</label>
                    <input type="text" class="form-control" id="campaignName" placeholder="Enter campaign name"
                        required>
                </div>
                <div class="mb-3">
                    <label for="description" class="form-label">Description</label>
                    <textarea class="form-control" id="description" rows="3" placeholder="Enter campaign description"
                        required></textarea>
                </div>
                <div class="mb-3">
                    <label for="startDate" class="form-label">Start Date</label>
                    <input type="date" class="form-control" id="startDate" required>
                </div>
                <div class="mb-3">
                    <label for="endDate" class="form-label">End Date</label>
                    <input type="date" class="form-control" id="endDate" required>
                </div>
                <div class="mb-3">
                    <label for="budget" class="form-label">Budget</label>
                    <input type="number" class="form-control" id="budget" placeholder="Enter budget" required>
                </div>
                <div class="mb-3">
                    <label for="visibility" class="form-label">Visibility</label>
                    <select class="form-control" id="visibility" required>
                        <option value="public">Public</option>
                        <option value="private">Private</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="goals" class="form-label">Goals</label>
                    <input type="text" class="form-control" id="goals" placeholder="Enter campaign goals" required>
                </div>
                <div class="mb-3">
                    <label for="category" class="form-label">Niche/Category</label>
                    <input type="text" class="form-control" id="category" placeholder="Enter campaign niche or category"
                        required>
                </div>
                <button type="submit" class="btn btn-success">Create Campaign</button>
            </form>
        </div>
    </div>

</body>

</html>