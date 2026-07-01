# Personal Budget Tracker

## Overview

Personal Budget Tracker is a full-stack web application developed to help users manage their personal finances by recording income and expense transactions. The application provides an intuitive interface for adding, updating, deleting, and viewing transactions along with a dashboard that summarizes financial information using charts and budget insights.

---

## Features

* Add income and expense transactions
* View all transactions
* Edit existing transactions
* Delete transactions
* Dashboard displaying total income, total expenses, and available balance
* Pie chart visualization using Chart.js
* Smart Budget Advisor based on income and expenses
* Responsive user interface using Bootstrap
* Data persistence using MySQL

---

## Technologies Used

### Backend

* Java 21
* Spring Boot
* Spring Data JPA

### Frontend

* JSP
* HTML
* CSS
* Bootstrap 5
* Chart.js

### Database

* MySQL

### Development Tools

* Eclipse IDE
* Maven
* Git
* GitHub

---

## Project Structure

```text
budgettracker
│
├── src
│   ├── main
│   │   ├── java
│   │   │   ├── controller
│   │   │   ├── entity
│   │   │   ├── repository
│   │   │   └── service
│   │   ├── resources
│   │   │   └── application.properties
│   │   └── webapp
│   │       ├── index.jsp
│   │       ├── addTransaction.jsp
│   │       ├── transactions.jsp
│   │       ├── editTransaction.jsp
│   │       └── dashboard.jsp
│   └── test
│
├── screenshots
├── pom.xml
└── README.md
```

---

## Setup Instructions

1. Clone the repository.

```bash
git clone https://github.com/pkavyamandira/azentrix-fullstack-task1.git
```

2. Open the project in Eclipse IDE.

3. Create a MySQL database named:

```text
budget_tracker
```

4. Configure the database credentials in:

```text
src/main/resources/application.properties
```

5. Run the project by executing:

```text
BudgettrackerApplication.java
```

6. Open the application in a web browser:

```text
http://localhost:8080
```

---

## Screenshots

### Home Page

![Home Page](screenshots/Home_Page.jpg)

### Add Transaction

![Add Transaction](screenshots/Add_transaction.jpg)

### Transactions List

![Transactions List](screenshots/Transactions_list.jpg)

### Dashboard

![Dashboard](screenshots/Dashboard.jpg)

### Pie Chart

![Pie Chart](screenshots/Pie_Chart.jpg)

---

## Demo Video

Loom Recording

https://www.loom.com/share/0b7d004292624e2180b984c5c3f8852f

---

## Future Enhancements

* User authentication and authorization
* Expense category analysis
* Monthly report generation
* Export reports in PDF or Excel format
* Deleted transaction history
* Budget notifications and alerts

---

## Author

Kavya Mandira

B.Tech, Computer Science and Engineering 
