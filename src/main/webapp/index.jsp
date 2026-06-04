<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Personal Budget Tracker</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">

        <a class="navbar-brand" href="/">
            Personal Budget Tracker
        </a>

        <div class="navbar-nav">

            <a class="nav-link text-white" href="/">
                Home
            </a>

            <a class="nav-link text-white" href="/dashboard">
                Dashboard
            </a>

            <a class="nav-link text-white" href="/add">
                Add Transaction
            </a>

            <a class="nav-link text-white" href="/list">
                Transactions
            </a>

        </div>

    </div>
</nav>

<div class="container mt-5">

    <div class="card shadow p-5">

        <h1>Welcome to Budget Tracker</h1>

        <p class="lead">
            Track your income and expenses efficiently.
        </p>

        <div class="mt-3">

            <a href="/add"
               class="btn btn-success me-2">
               Add Transaction
            </a>

            <a href="/dashboard"
               class="btn btn-primary me-2">
               Dashboard
            </a>

            <a href="/list"
               class="btn btn-secondary">
               View Transactions
            </a>

        </div>

    </div>

</div>

</body>
</html>