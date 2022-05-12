package com.wipro.atm.springboot;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Admintable")
public class Admintable
{
	private String FullName;
	private String FathersName;
	private java.sql.Date DOB;
	private String Gender;
	private String PermanentAddress;
	private String PresentAddress;
	private String PANNumber;
	private String MobileNumber;
	
	@Column(name = " Landline", nullable = true)
	private int Landline;
	private String AccountType;
	private int OpeningBalance;
	
	@Id
    @Column(name = "CustomerID", nullable = false, unique=true)
	private Integer CustomerID;
	private long AccNo;
	private String CardNo;
	private Integer PIN;
	private String CheckBook;
	private Integer BranchID;
	
	public Admintable()
    {
    }
	
	public String getFullName()
	{
		return this.FullName;
	}
	public void setFullName(String value)
	{
		this.FullName = value;
	}
	public String getFathersName()
	{
		return this.FathersName;
	}
	public void setFathersName(String value)
	{
		this.FathersName = value;
	}

	public java.sql.Date getDOB()
	{
		return this.DOB;
	}
	public void setDOB(java.sql.Date value)
	{
		this.DOB = value;
	}

	public String getGender()
	{
		return this.Gender;
	}
	public void setGender(String value)
	{
		this.Gender = value;
	}

	public String getPermanentAddress()
	{
		return this.PermanentAddress;
	}
	public void setPermanentAddress(String value)
	{
		this.PermanentAddress = value;
	}

	public String getPresentAddress()
	{
		return this.PresentAddress;
	}
	public void setPresentAddress(String value)
	{
		this.PresentAddress = value;
	}

	public String getPANNumber()
	{
		return this.PANNumber;
	}
	public void setPANNumber(String value)
	{
		this.PANNumber = value;
	}

	public String getMobileNumber()
	{
		return this.MobileNumber;
	}
	public void setMobileNumber(String value)
	{
		this.MobileNumber = value;
	}
	
	public int getLandline()
	{
		return this.Landline;
	}
	public void setLandline(int value)
	{
		this.Landline = value;
	}

	public int getCustomerID()
	{
		return this.CustomerID;
	}
	public void setCustomerID(int value)
	{
		this.CustomerID = value;
	}
	
	public String getAccountType()
	{
		return this.AccountType;
	}
	public void setAccountType(String value)
	{
		this.AccountType = value;
	}
	
	public int getOpeningBalance()
	{
		return this.OpeningBalance;
	}
	public void setOpeningBalance(int value)
	{
		this.OpeningBalance = value;
	}
	
	public long getAccNo()
	{
		return this.AccNo;
	}
	public void setAccNo(long value)
	{
		this.AccNo = value;
	}

	public String getCardNo()
	{
		return this.CardNo;
	}
	public void setCardNo(String value)
	{
		this.CardNo = value;
	}
	
	public int getPIN()
	{
		return this.PIN;
	}
	public void setPIN(int value)
	{
		this.PIN = value;
	}

	public String getCheckBook()
	{
		return this.CheckBook;
	}
	public void setCheckBook(String value)
	{
		this.CheckBook = value;
	}
	public int getBranchID()
	{
		return this.BranchID;
	}
	public void setBranchID(int value)
	{
		this.BranchID = value;
	}


	public Admintable(String FullName,String FathersName,java.sql.Date DOB,String Gender,String PermanentAddress,String PresentAddress,String PANNumber,String MobileNumber,int Landline,String AccountType,int OpeningBalance,int CustomerID,long AccNo,String CardNo,int PIN,String CheckBook,int BranchID)
	{
		this.FullName = FullName;
		this.FathersName = FathersName;
		this.DOB = DOB;
		this.Gender = Gender;
		this.PermanentAddress = PermanentAddress;
		this.PresentAddress = PresentAddress;
		this.PANNumber = PANNumber;
		this.MobileNumber = MobileNumber;
		this.Landline = Landline;
		this.AccountType = AccountType;
		this.AccNo = AccNo;
		this.OpeningBalance = OpeningBalance;
		this.CustomerID = CustomerID;
		this.CardNo = CardNo;
		this.PIN = PIN;
		this.CheckBook = CheckBook;
		this.BranchID = BranchID;
	}
}