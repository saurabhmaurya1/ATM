package com.wipro.atm.springboot;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "BranchDetails")
public class BranchDetails
{
	public class java {

	}
	@Column(name = "BranchName", nullable = false, unique=true)
	private String BranchName;
	@Column(name = "State", nullable = false)
	private String State;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "BranchID")
    private Integer BranchID;
 
    public BranchDetails()
    {
    }

    public BranchDetails(Integer BranchId ,String BranchName,String State)
	{
    	this.BranchID=BranchId;
		this.BranchName = BranchName;
		this.State = State;
	}

    public Integer getBranchID()
    {  
        return BranchID;
    }

    public void setBranchID(Integer BranchID)
    {
        this.BranchID = BranchID;
    }
    
    public String getBranchName()
	{
		return this.BranchName;
	}
    
	public void setBranchName(String value)
	{
		this.BranchName = value;
	}

	public String getState()
	{
		return this.State;
	}
	public void setState(String value)
	{
		this.State = value;
	}
}
