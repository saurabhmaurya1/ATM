package com.wipro.atm.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wipro.atm.springboot.BankTransaction;

public interface BankTransactionRepository extends JpaRepository<BankTransaction, Integer>
{

}