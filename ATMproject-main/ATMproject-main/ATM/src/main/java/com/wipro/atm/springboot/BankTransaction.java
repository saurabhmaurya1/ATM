package com.wipro.atm.springboot;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "BankTransaction")
public class BankTransaction
{
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "TransactionID", updatable = false, nullable = false)
	private int TransactionID;
	
	private int CustomerID;
	
	@Column(columnDefinition = "datetime DEFAULT CURRENT_TIMESTAMP")
	private java.sql.Date TransactionDate;
	private String TransactionType;
	private int TransactionAmount;
	private int Balance;
	
	public BankTransaction()
    {
    }
	
	public int getTransactionID()
	{
		return this.TransactionID;
	}
	public void setTransactionID(int value)
	{
		this.TransactionID = value;
	}

	public int getCustomerID()
	{
		return this.CustomerID;
	}
	public void setCustomerID(int value)
	{
		this.CustomerID = value;
	}

	public java.sql.Date getTransactionDate()
	{
		return this.TransactionDate;
	}
	public void setTransactionDate(java.sql.Date value)
	{
		this.TransactionDate = value;
	}

	public String getTransactionType()
	{
		return this.TransactionType;
	}
	public void setTransactionType(String value)
	{
		this.TransactionType = value;
	}

	public int getTransactionAmount()
	{
		return this.TransactionAmount;
	}
	public void setTransactionAmount(int value)
	{
		this.TransactionAmount = value;
	}

	public int getBalance()
	{
		return this.Balance;
	}
	public void setBalance(int value)
	{
		this.Balance = value;
	}


	public BankTransaction(int TransactionID,int CustomerID,java.sql.Date TransactionDate,String TransactionType,int TransactionAmount,int Balance)
	{
		this.TransactionID = TransactionID;
		this.CustomerID = CustomerID;
		this.TransactionDate = TransactionDate;
		this.TransactionType = TransactionType;
		this.TransactionAmount = TransactionAmount;
		this.Balance = Balance;
	}
}