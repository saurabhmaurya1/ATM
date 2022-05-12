<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Home Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style type="text/css">
    @charset "ISO-8859-1";
	* {
	    margin: 0px;
	    padding: 0px;
	}
	
	.login {
	    background: linear-gradient(to bottom, #0099ff 0%, #fff 100%);
	    height: 100vh;
	    width: 100%;
	    justify-content: center;
	    align-items: center;
	    display: flex;
	}
	
	.account-login {
	    width: 500px;
	}
	
	.form-control:focus {
	    box-shadow: none;
	}
	
	p a {
	    padding-left: 2px;
	}
	
	.account-login h1 {
	    font-size: 25px;
	    text-align: left;
	    color: #fff;
	    text-transform: uppercase;
	    font-weight: bold;
	    border-radius: 5px;
	}
	
	.login-form {
	    background: #fff;
	    float: left;
	    width: 100%;
	    padding: 40px;
	    border-radius: 5px;
	}
	
	button.btn {
	    width: 100%;
	    background: #009cff;
	    font-size: 20px;
	    padding: 11px;
	    color: #fff;
	    border: 0px;
	    margin: 10px 0px 20px;
	}
	
	.btn:hover {
	    color: #fff;
	    opacity: 0.8;
	}
	
	p {
	    float: left;
	    width: 100%;
	    text-align: center;
	    font-size: 14px;
	}
	
	.remember {
	    float: left;
	    width: 100%;
	    margin: 10px 0 0;
	}
	
	/* Customize the label (the container) */
	.custom-checkbox {
	    display: block;
	    position: relative;
	    padding-left: 27px;
	    margin-bottom: 12px;
	    cursor: pointer;
	    font-size: 13px;
	    -webkit-user-select: none;
	    -moz-user-select: none;
	    -ms-user-select: none;
	    user-select: none;
	    font-weight: normal;
	    padding-top: 2px;
	    float: left;
	}
	
	/* Hide the browser's default checkbox */
	.custom-checkbox input {
	    position: absolute;
	    opacity: 0;
	    cursor: pointer;
	    height: 0;
	    width: 0;
	}
	
	/* Create a custom checkbox */
	.custom-checkbox .checkmark {
	    position: absolute;
	    top: 0;
	    left: 0;
	    height: 20px;
	    width: 20px;
	    background-color: #bfbcbc;
	}
	
	/* On mouse-over, add a grey background color */
	.custom-checkbox:hover input~.checkmark {
	    background-color: #747474;
	}
	
	/* When the checkbox is checked, add a blue background */
	.custom-checkbox input:checked~.checkmark {
	    background-color: #2196F3;
	}
	
	/* Create the checkmark/indicator (hidden when not checked) */
	.checkmark:after {
	    content: "";
	    position: absolute;
	    display: none;
	}
	
	/* Show the checkmark when checked */
	.custom-checkbox input:checked~.checkmark:after {
	    display: block;
	}
	
	/* Style the checkmark/indicator */
	.custom-checkbox .checkmark:after {
	    left: 9px;
	    top: 5px;
	    width: 5px;
	    height: 10px;
	    border: solid white;
	    border-width: 0 3px 3px 0;
	    -webkit-transform: rotate(45deg);
	    -ms-transform: rotate(45deg);
	    transform: rotate(45deg);
	}
	
	@media (max-width: 767px) {
	    .account-login {
	        width: 90%;
	    }
	}
</style>
</head>
<body>
    <div class="login">
        <div class="account-login">
            <h1>Account Login</h1>
            <form onsubmit="return Validation();"  method="post" action='/loginpage' class="login-form">
                <div class="form-group">
                    <select required class="form-control" type="text" name="ut" placeholder="UserType">
                        <option value="" disabled selected>UserType</option>
                        <option value="admin">Admin</option>
                        <option value="Customer">Customer</option>
                    </select>
                </div>
                <div class="form-group">
                    <input type="text" placeholder="User id" name="uid" id="uid" class="form-control">
                </div>
                
                <label id="nameErr" style="color: red;display: none;">* Name is Required</label>
                <div class="form-group">
                    <input type="password" placeholder="Password" name="pass" id="pass" class="form-control">
                </div>
                <label id="passErr" style="color: red;display: none;">* Password is Required</label>
                <div class="remember">
                    <a href="./Login.html" class="pull-right">Change Password?</a>
                </div>
                <button type="submit" class="btn">Login</button>
                <!--<p>Are you new?<a href="./register.html">Sign Up</a></p>-->
            </form>
        </div>
    </div>
    <script>
        function Validation() {
            var name = document.getElementById('name').value;
            var pass = document.getElementById('pass').value;
            var nameAuth = false;
            var passAuth = false;
            var passwdRegex = /^(?=.*\d)(?=.*[A-Z]).{6,20}$/;
            if (!pass.match(passwdRegex)) {
                alert("Invalid password!");
                pass.focus();
                passAuth=false;
            }
            if (name) {
                    document.getElementById('nameErr').style = "display:none;";
                    nameAuth = true;
            }
            else {
                document.getElementById('nameErr').style = "display:block;color:red;";
                nameAuth = false;
            }
            if (pass) {
                    document.getElementById('passErr').style = "display:none;";
                    passAuth = true;
            }
            else {
                document.getElementById('passErr').style = "display:block;color:red;";
                passAuth = false;
            }
           if(nameAuth&&passAuth)
           {
               return true;
           }
           else{
               return false;
           }
        }
    </script>
</body>

</html>