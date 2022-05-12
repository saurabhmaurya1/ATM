package com.wipro.atm.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wipro.atm.springboot.Cheque;

public interface ChequeRepository extends JpaRepository<Cheque, Integer>
{

}