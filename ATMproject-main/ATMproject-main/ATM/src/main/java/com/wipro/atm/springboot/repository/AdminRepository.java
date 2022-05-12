package com.wipro.atm.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wipro.atm.springboot.Admintable;

public interface AdminRepository extends JpaRepository<Admintable, Integer>
{

}