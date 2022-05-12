<!DOCTYPE html>
<html>
<head>
<title>Customer Home</title>
<style type="text/css">
	
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
		.my-button1 {width: 150px;}
		.my-button2 {width: 150px;}

		.my-button {
			
		margin-left : 45%;
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

</style>
</head>
<body style="background-color:SkyBlue;">
<h2 style="background-color:white;" >Select your Transaction Please</h2>
<h3 style="font-weight: bolder; margin-left: 150px; font-style: italic;">WELCOME,<%=session.getAttribute("full_name")%> !<br> Your CustomerID : <%=session.getAttribute("customerid")%></h3>
<div class="row">
    <div class="column">
    	<a href="/deposit">
        <button class="my-button1">DEPOSIT</button></a>
        <a href="/checkbal">
        <button class="my-button2">WITHDRAW</button></a>
    </div>
  
    <div class="column">
    	<a href="/fastcashwithdraw">
        <button class="my-button1">FASTCASH</button></a>
        <a href="/ministatmentpage">
        <button class="my-button2">MINI STATEMENT</button></a>
    </div>
    <div class="column">
    	<a href="/changepin">
        <button class="my-button1">CHANGE PIN</button></a>
        <a href="/balance">
        <button class="my-button2">BALANCE</button></a>
    </div>
    <div class="column">
    	<a href="/logout">
    	<button class="my-button">LOG OUT</button></a>
    </div>
</div>
</body>
</head>
