<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

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

    <h2 class="mb-4">Budget Dashboard</h2>

    <div class="row">

        <div class="col-md-4">

            <div class="card text-white bg-success mb-3">

                <div class="card-body">

                    <h5>Total Income</h5>

                    <h3>Rs. ${income}</h3>

                </div>

            </div>

        </div>

        <div class="col-md-4">

            <div class="card text-white bg-danger mb-3">

                <div class="card-body">

                    <h5>Total Expense</h5>

                    <h3>Rs. ${expense}</h3>

                </div>

            </div>

        </div>

        <div class="col-md-4">

            <div class="card text-white bg-primary mb-3">

                <div class="card-body">

                    <h5>Balance</h5>

                    <h3>Rs. ${balance}</h3>

                </div>

            </div>

        </div>

    </div>

    <div class="card shadow mt-4">

        <div class="card-body">

            <h4>Income vs Expense</h4>

            <div style="width:400px; height:400px; margin:auto;">
               <canvas id="budgetChart"></canvas>
           </div>

        </div>

    </div>

</div>
<div class="card shadow mt-4">

    <div class="card-body">

        <h4>Smart Budget Advisor</h4>

        <p class="fs-5">
            ${advice}
        </p>

    </div>

</div>
<script>

const ctx = document.getElementById('budgetChart');

new Chart(ctx, {
    type: 'pie',
    data: {
        labels: ['Income', 'Expense'],
        datasets: [{
            data: [${income}, ${expense}]
        }]
    }
});

</script>

</body>
</html>