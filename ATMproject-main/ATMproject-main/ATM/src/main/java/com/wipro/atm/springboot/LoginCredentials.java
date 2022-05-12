package com.wipro.atm.springboot;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "LoginCredentials")
public class LoginCredentials
{
	@Column(name = "UserID", nullable = false, unique=true)
	private String UserID;
	private String Password;
	@Id
    @Column(name = "CustomerID", nullable = false)
	private int CustomerID;
	
	public LoginCredentials()
	{
	}
	
	public String getUserID()
	{
		return this.UserID;
	}
	public void setUserID(String value)
	{
		this.UserID = value;
	}

	public String getPassword()
	{
		return this.Password;
	}
	public void setPassword(String value)
	{
		this.Password = value;
	}

	public int getCustomerID()
	{
		return this.CustomerID;
	}
	public void setCustomerID(int value)
	{
		this.CustomerID = value;
	}

	public LoginCredentials(String UserID,String Password,int CustomerID)
	{
		this.UserID = UserID;
		this.Password = Password;
		this.CustomerID = CustomerID;
	}
}
