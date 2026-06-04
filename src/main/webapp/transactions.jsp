<%@ page import="java.util.List" %>
<%@ page import="com.kavya.budgettracker.entity.Transaction" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Transactions</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

</head>
<body>

<nav class="navbar navbar-dark bg-primary">
    <div class="container-fluid">
        <span class="navbar-brand">Personal Budget Tracker</span>
    </div>
</nav>

<div class="container mt-4">

    <div class="d-flex justify-content-between mb-3">

        <h2>All Transactions</h2>

        <a href="/add" class="btn btn-success">
            Add Transaction
        </a>

    </div>

    <div class="card shadow">

        <div class="card-body">

            <table class="table table-hover">

                <thead class="table-dark">

                <tr>
                    <th>ID</th>
                    <th>Type</th>
                    <th>Amount</th>
                    <th>Category</th>
                    <th>Date</th>
                    <th>Actions</th>
                </tr>

                </thead>

                <tbody>

                <%
                List<Transaction> transactions =
                        (List<Transaction>) request.getAttribute("transactions");

                if(transactions != null){

                    for(Transaction t : transactions){
                %>

                <tr>

                    <td><%= t.getId() %></td>
                    <td><%= t.getType() %></td>
                    <td><%= t.getAmount() %></td>
                    <td><%= t.getCategory() %></td>
                    <td><%= t.getDate() %></td>

                    <td>

                        <a href="/edit?id=<%= t.getId() %>"
                           class="btn btn-warning btn-sm">
                           Edit
                        </a>

                        <a href="/delete?id=<%= t.getId() %>"
                           class="btn btn-danger btn-sm">
                           Delete
                        </a>

                    </td>

                </tr>

                <%
                    }
                }
                %>

                </tbody>

            </table>

        </div>

    </div>

</div>

</body>
</html>