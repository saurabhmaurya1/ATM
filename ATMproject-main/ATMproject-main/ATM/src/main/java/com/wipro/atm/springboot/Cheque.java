package com.wipro.atm.springboot;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Cheque")
public class Cheque
{
	@Id
    @Column(name = "ChequeID", nullable = false, unique=true)
	private int ChequeID;
	private int CustomerID;
	private int CustomerIDto;
	@Column(columnDefinition = "datetime DEFAULT CURRENT_TIMESTAMP")
	private java.sql.Date ChequeDate;
	private int ChequeAmt;
	private String Chequeto;
	@Column(columnDefinition = "boolean DEFAULT FALSE")
	private boolean checkred;
	
	public Cheque()
	{
	}
	
	public int getChequeID()
	{
		return this.ChequeID;
	}
	public void setChequeID(int value)
	{
		this.ChequeID = value;
	}
	public int getCustomerID()
	{
		return this.CustomerID;
	}
	public void setCustomerID(int value)
	{
		this.CustomerIDto = value;
	}
	public int getCustomerIDTO()
	{
		return this.CustomerIDto;
	}
	public void setCustomerIDTO(int value)
	{
		this.CustomerID = value;
	}

	public java.sql.Date getChequeDate()
	{
		return this.ChequeDate;
	}
	public void setChequeDate(java.sql.Date value)
	{
		this.ChequeDate = value;
	}

	public int getChequeAmt()
	{
		return this.ChequeAmt;
	}
	public void setChequeAmt(int value)
	{
		this.ChequeAmt = value;
	}

	public String getChequeto()
	{
		return this.Chequeto;
	}
	public void setChequeto(String value)
	{
		this.Chequeto = value;
	}
	
	public boolean checkred()
	{
		return this.checkred;
	}
	public void setcheckred(boolean value)
	{
		this.checkred = value;
	}


	public Cheque(int ChequeID,int CustomerID,int CustomerIDto,java.sql.Date ChequeDate,int ChequeAmt,String Chequeto,boolean checkred)
	{
		this.ChequeID = ChequeID;
		this.CustomerID = CustomerID;
		this.CustomerIDto = CustomerIDto;
		this.ChequeDate = ChequeDate;
		this.ChequeAmt = ChequeAmt;
		this.Chequeto = Chequeto;
		this.checkred = checkred;
	}
}