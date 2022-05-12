package com.wipro.atm.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wipro.atm.springboot.LoginCredentials;

public interface LoginCredentialsRepository extends JpaRepository<LoginCredentials, Integer>
{

}