package com.wipro.atm.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wipro.atm.springboot.Customer_Account_Details;

public interface CustomerAccountDetailRepository extends JpaRepository<Customer_Account_Details, Integer>
{

}