package com.kavya.budgettracker.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kavya.budgettracker.entity.Transaction;
import com.kavya.budgettracker.service.TransactionService;

@Controller
public class HomeController {

    @Autowired
    private TransactionService transactionService;

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/add")
    public String addPage() {
        return "addTransaction";
    }

    @PostMapping("/save")
    public String saveTransaction(
            @RequestParam String type,
            @RequestParam Double amount,
            @RequestParam String category,
            @RequestParam String date) {

        Transaction transaction = new Transaction();

        transaction.setType(type);
        transaction.setAmount(amount);
        transaction.setCategory(category);
        transaction.setDate(LocalDate.parse(date));

        transactionService.saveTransaction(transaction);

        return "redirect:/list";
    }

    @GetMapping("/list")
    public String viewTransactions(Model model) {

        List<Transaction> transactions =
                transactionService.getAllTransactions();

        model.addAttribute("transactions", transactions);

        return "transactions";
    }

    @GetMapping("/delete")
    public String deleteTransaction(@RequestParam Long id) {

        transactionService.deleteTransaction(id);

        return "redirect:/list";
    }

    @GetMapping("/edit")
    public String editTransaction(@RequestParam Long id, Model model) {

        Transaction transaction =
                transactionService.getTransactionById(id);

        model.addAttribute("transaction", transaction);

        return "editTransaction";
    }
    @GetMapping("/dashboard")
    public String dashboard(Model model) {

        double income = transactionService.getTotalIncome();

        double expense = transactionService.getTotalExpense();

        double balance = income - expense;

        String advice;

        if(balance > 0) {

            advice =
                "Great Job! You saved Rs. "
                + balance
                + ". Consider investing part of your savings and building an emergency fund.";

        }
        else if(balance < 0) {

            advice =
                "Warning! Your expenses exceed your income by Rs. "
                + Math.abs(balance)
                + ". Reduce non-essential spending and create a monthly budget.";

        }
        else {

            advice =
                "Your income and expenses are equal. Try to save at least 10% of your income.";
        }

        model.addAttribute("income", income);
        model.addAttribute("expense", expense);
        model.addAttribute("balance", balance);
        model.addAttribute("advice", advice);

        return "dashboard";
    }

    @PostMapping("/update")
    public String updateTransaction(
            @RequestParam Long id,
            @RequestParam String type,
            @RequestParam Double amount,
            @RequestParam String category,
            @RequestParam String date) {

        Transaction transaction =
                transactionService.getTransactionById(id);

        transaction.setType(type);
        transaction.setAmount(amount);
        transaction.setCategory(category);
        transaction.setDate(LocalDate.parse(date));

        transactionService.saveTransaction(transaction);

        return "redirect:/list";
    }
}