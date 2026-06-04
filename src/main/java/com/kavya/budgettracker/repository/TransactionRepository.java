package com.kavya.budgettracker.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.kavya.budgettracker.entity.Transaction;

public interface TransactionRepository extends JpaRepository<Transaction, Long> {

}