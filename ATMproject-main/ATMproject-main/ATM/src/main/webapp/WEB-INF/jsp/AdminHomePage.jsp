<!DOCTYPE html>
<html>
<head>
<title>Admin Home</title>
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
</style>
</head>
<body style="background-color:SkyBlue;">
<h2 style="background-color:white;" >Select your Transaction Please</h2><h3 style="font-weight: bolder; margin-left: 150px; font-style: italic;">WELCOME,<%=session.getAttribute("full_name")%> !<br> Your ADMIN ID : <%=session.getAttribute("customerid")%>

<div class="row">
    <div class="column">
    	<a href="/addbranch">
        <button class="my-button1">Add Bank Branch</button></a>
        <a href="/ModifyDetails">
        <button class="my-button2">Modify Customer Details</button></a>
    </div>
    <div class="column">
    	<a href="/closeaccounts">
        <button class="my-button1">Close/Delete Accounts</button></a>
        <a href="/AccountStatment">
        <button class="my-button2">Generate Account Statement</button></a>
    </div>
    <div class="column">
    	<a href="/verifycheque">
        <button class="my-button1">Verify Check</button></a>
        <a href="/register">
        <button class="my-button2">Create Customer Accounts</button></a>
    </div>
    <div class="column">
    	<a href="/logout">
    	<button class="my-button">LOG OUT</button></a>
    </div>
</div>
</body>
</head>