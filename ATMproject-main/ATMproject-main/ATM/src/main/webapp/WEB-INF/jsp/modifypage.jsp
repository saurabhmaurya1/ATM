<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>
<% 
response.setContentType("text/html; charset=UTF-8");
String username = "root";
String password = "saurabh"; /*root user's password needs to be written here*/
Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;
String url = "jdbc:mysql://localhost:3307/AtmDatabase";
try{
    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection(url, username, password);
    String custid =request.getParameter("custid");
    stmt = conn.prepareStatement("Select * from customer_account_details where customerid='"+custid+"';");
    rs = stmt.executeQuery();
    while(rs.next()){
    session.setAttribute("custid",rs.getString("customerid"));
    session.setAttribute("stringname",rs.getString("full_name"));
    session.setAttribute("stringdob",rs.getString("dob"));
    session.setAttribute("stringpremanentadd",rs.getString("permanent_address"));
    session.setAttribute("stringprsntadd",rs.getString("present_address"));
    session.setAttribute("stringtype",rs.getString("account_type"));
    session.setAttribute("stringmno",rs.getString("mobile_number"));
    session.setAttribute("stringpan",rs.getString("pannumber"));
    session.setAttribute("stringbranch",rs.getString("branchid"));
    System.out.println(session.getAttribute("stringname"));
    System.out.println(session.getAttribute("stringmno"));
    System.out.println(session.getAttribute("stringpan"));
    System.out.println(session.getAttribute("stringbranch"));
    System.out.println(session.getAttribute("stringtype"));
    }
}catch(ClassNotFoundException e) {
    System.out.println("Driver Not Loaded");
}catch (SQLException e) {
    System.out.println(e);
}finally {
    if(conn!=null)
    {   try{
            conn.close();
        }catch(Exception e){}
    }
}%>
<!DOCTYPE html>
<html>
<head>
<title> MODIFY PAGE</title>
<style type="text/css">

		.my-button {
			
		margin-left : 50%;
		margin-top: 60px;
		  appearance: none;
		  background-color: white;
		  border: 3px solid rgba(27, 31, 35, 0.15) black;
		  border-radius: 6px;
		  box-shadow:  0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
		  box-sizing: border-box;
		  color: #24292E;
		  cursor: pointer;
		  display: inline-block;
		  font-family: -apple-system, system-ui, "Segoe UI", Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji";
		  font-size: 14px;
		  font-weight: 500;
		  line-height: 20px;
		  list-style: none;
		  padding: 6px 16px;
		  position: relative;
		  transition: background-color 0.2s cubic-bezier(0.3, 0, 0.5, 1);
		  user-select: none;
		  -webkit-user-select: none;
		  touch-action: manipulation;
		 
		  white-space: nowrap;
		  word-wrap: break-word;
		}
	
		.my-button1 {
			
		margin-left : 35%;
		margin-top: 60px;
		  appearance: none;
		  background-color: WhiteSmoke;
		  border: 3px solid rgba(27, 31, 35, 0.15);
		  border-radius: 6px;
		  box-shadow:  0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
		  box-sizing: border-box;
		  color: #24292E;
		  cursor: pointer;
		  display: inline-block;
		  font-family: -apple-system, system-ui, "Segoe UI", Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji";
		  font-size: 14px;
		  font-weight: 500;
		  line-height: 20px;
		  list-style: none;
		  padding: 6px 16px;
		  position: relative;
		  transition: background-color 0.2s cubic-bezier(0.3, 0, 0.5, 1);
		  user-select: none;
		  -webkit-user-select: none;
		  touch-action: manipulation;
		  white-space: nowrap;
		  word-wrap: break-word;
		}

		.my-button1:hover {
		  background-color: #F3F4F6;
		  text-decoration: none;
		  transition-duration: 0.1s;
		}

		.my-button1:disabled {
		  background-color: #FAFBFC;
		  border-color: rgba(27, 31, 35, 0.15);
		  color: #959DA5;
		  cursor: default;
		}

		.my-button1:active {
		  background-color: #EDEFF2;
		  box-shadow: rgba(225, 228, 232, 0.2) 0 1px 0 inset;
		  transition: none 0s;
		}

		.my-button1:focus {
		  outline: 1px transparent;
		}

		.my-button1:before {
		  display: none;
		}

		.my-button1:-webkit-details-marker {
		  display: none;
		}

		.my-button3 {
			margin-left: 45%;
		margin-top: 60px;
		  appearance: none;
		  background-color: WhiteSmoke;
		  border: 3px solid rgba(27, 31, 35, 0.15);
		  border-radius: 6px;
		  box-shadow:  0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
		  box-sizing: border-box;
		  color: #24292E;
		  cursor: pointer;
		  display: inline-block;
		  font-family: -apple-system, system-ui, "Segoe UI", Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji";
		  font-size: 14px;
		  font-weight: 500;
		  line-height: 20px;
		  list-style: none;
		  padding: 6px 16px;
		  position: relative;
		  transition: background-color 0.2s cubic-bezier(0.3, 0, 0.5, 1);
		  user-select: none;
		  -webkit-user-select: none;
		  touch-action: manipulation;
		  white-space: nowrap;
		  word-wrap: break-word;
		}

		.my-button3:hover {
		  background-color: #F3F4F6;
		  text-decoration: none;
		  transition-duration: 0.1s;
		}

		.my-button3:disabled {
		  background-color: #FAFBFC;
		  border-color: rgba(27, 31, 35, 0.15);
		  color: #959DA5;
		  cursor: default;
		}

		.my-button3:active {
		  background-color: #EDEFF2;
		  box-shadow: rgba(225, 228, 232, 0.2) 0 1px 0 inset;
		  transition: none 0s;
		}

		.my-button3:focus {
		  outline: 1px transparent;
		}

		.my-button3:before {
		  display: none;
		}

		.my-button3:-webkit-details-marker {
		  display: none;
		}

		.my-button2 {
		margin-left : 5%;

		  appearance: none;
		  background-color: WhiteSmoke;
		  border: 3px solid rgba(27, 31, 35, 0.15);
		  border-radius: 6px;
		  box-shadow:  0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
		  box-sizing: border-box;
		  color: #24292E;
		  cursor: pointer;
		  display: inline-block;
		  font-family: -apple-system, system-ui, "Segoe UI", Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji";
		  font-size: 14px;
		  font-weight: 500;
		  line-height: 20px;
		  list-style: none;
		  padding: 6px 16px;
		  position: relative;
		  transition: background-color 0.2s cubic-bezier(0.3, 0, 0.5, 1);
		  user-select: none;
		  -webkit-user-select: none;
		  touch-action: manipulation;
		  
		  white-space: nowrap;
		  word-wrap: break-word;
		}

		.my-button2:hover {
		  background-color: #F3F4F6;
		  text-decoration: none;
		  transition-duration: 0.1s;
		}

		.my-button2:disabled {
		  background-color: #FAFBFC;
		  border-color: rgba(27, 31, 35, 0.15);
		  color: #959DA5;
		  cursor: default;
		}

		.my-button2:active {
		  background-color: #EDEFF2;
		  box-shadow: rgba(225, 228, 232, 0.2) 0 1px 0 inset;
		  transition: none 0s;
		}

		.my-button2:focus {
		  outline: 1px transparent;
		}

		.my-button2:before {
		  display: none;
		}

		.my-button2:-webkit-details-marker {
		  display: none;
		}
		.my-button1 {width: 220px;}
		.my-button2 {width: 220px;}
		.my-button3 {width: 220px;}
</style>
</head>
<body style="background-color:white;">
<h2 style="background-color:SkyBlue;" >Select What You want to change... Please!!!</h2><h3 style="font-weight: bolder; margin-left: 150px; font-style: italic;">WELCOME!!! 

<div class="row">
    <div class="column">
    	<a href="/changename">
        <button class="my-button1">Change Name</button></a>
        <a href="/changedob">
        <button class="my-button2">Modify DOB DATE</button></a>
    </div>
    <div class="column">
    	<a href="/changeaddress">
        <button class="my-button1">Change Address</button></a>
        <a href="/changemno">
        <button class="my-button2">Change Mobile Number</button></a>
    </div>
    <div class="column">
    	<a href="/changepan">
        <button class="my-button1">Change PAN Number</button></a>
        <a href="/changebranchid">
        <button class="my-button2">Change Branch</button></a>
    </div>
    <div class="column">
        <a href="/changetype">
        <button class="my-button3">Change AccountType</button></a>
    </div>
    <div class="column">
    	<a href="/AdminHomePage">
    	<button class="my-button" style="">GO BACK</button></a>
    	<a href="/logout">
    	<button class="my-button" >LOG OUT</button></a>
    </div>
</div>
</body>
</head>