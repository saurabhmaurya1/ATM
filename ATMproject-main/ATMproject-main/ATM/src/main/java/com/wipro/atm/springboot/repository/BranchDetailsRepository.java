package com.wipro.atm.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wipro.atm.springboot.BranchDetails;

public interface BranchDetailsRepository extends JpaRepository<BranchDetails, Integer>
{

}