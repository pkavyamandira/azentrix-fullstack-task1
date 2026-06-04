<%@ page import="com.kavya.budgettracker.entity.Transaction" %>

<%
Transaction t = (Transaction) request.getAttribute("transaction");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Transaction</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

</head>
<body>

<div class="container mt-5">

    <div class="card shadow p-4">

        <h2>Edit Transaction</h2>

        <form action="/update" method="post">

            <input type="hidden" name="id" value="<%= t.getId() %>">

            <div class="mb-3">
                <label>Type</label>

                <select class="form-control" name="type">

                    <option value="Income"
                        <%= t.getType().equals("Income") ? "selected" : "" %>>
                        Income
                    </option>

                    <option value="Expense"
                        <%= t.getType().equals("Expense") ? "selected" : "" %>>
                        Expense
                    </option>

                </select>
            </div>

            <div class="mb-3">
                <label>Amount</label>
                <input type="number"
                       class="form-control"
                       name="amount"
                       value="<%= t.getAmount() %>">
            </div>

            <div class="mb-3">
                <label>Category</label>
                <input type="text"
                       class="form-control"
                       name="category"
                       value="<%= t.getCategory() %>">
            </div>

            <div class="mb-3">
                <label>Date</label>
                <input type="date"
                       class="form-control"
                       name="date"
                       value="<%= t.getDate() %>">
            </div>

            <button class="btn btn-primary">
                Update Transaction
            </button>

        </form>

    </div>

</div>

</body>
</html>