<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Transaction</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<nav class="navbar navbar-dark bg-primary">
    <div class="container-fluid">
        <span class="navbar-brand">Personal Budget Tracker</span>
    </div>
</nav>

<div class="container mt-5">

    <div class="card shadow p-4">

        <h2>Add Transaction</h2>

        <form action="/save" method="post">

            <div class="mb-3">
                <label>Type</label>

                <select class="form-control" name="type">
                    <option value="Income">Income</option>
                    <option value="Expense">Expense</option>
                </select>
            </div>

            <div class="mb-3">
                <label>Amount</label>
                <input type="number" class="form-control" name="amount" required>
            </div>

            <div class="mb-3">
                <label>Category</label>
                <input type="text" class="form-control" name="category" required>
            </div>

            <div class="mb-3">
                <label>Date</label>
                <input type="date" class="form-control" name="date" required>
            </div>

            <button type="submit" class="btn btn-success">
                Save Transaction
            </button>

            <a href="/list" class="btn btn-secondary">
                View Transactions
            </a>

        </form>

    </div>

</div>

</body>
</html>