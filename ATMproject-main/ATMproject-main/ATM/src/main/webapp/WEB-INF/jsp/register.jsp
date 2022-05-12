
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <title>Registration Form</title>
    </head>
    <body>
        <div class="login">
            <div class="account-login">
                <h1>Registration Form</h1>
                <form onsubmit="return Validation();" action="/insert" method="post" autoComplete="off" class="login-form">
                    <label>Full Name : <input style="padding: 2px;border-radius: 2px; float:right;"type="text" id="fullname" name="fullname" /></label><br />
                    <label>FathersName : <input style="padding: 2px;border-radius: 2px; float:right;" type="text" id="fathersName" name="fathersName" /></label><br />
                    <label for="DOBdate" style="font-style: italic;text-transform: uppercase;"><b>Date Of Birth : </b></label>
					<input type="date" class = "dates" name="DOBdate" id="DOBdate"><Br />
                    <label>Gender : </label>
                    <label>Male <input  type="radio" name="gender" id="gender" value="MALE" /></label>
                    <label>Female <input type="radio" name="gender" id="gender" value="FEMALE" /></label><br />
                    <label>AccountType :
                        <select style="padding: 2px;border-radius: 2px; float:right;" name="acctype" id="acctype">
                            <option value="SAVINGS">Savings Account</option>
                            <option value="CURRENT">Current Account</option>
                        </select>
                    </label>
            <br />
                    <label>Contact(10): <input style=" padding: 2px;border-radius: 2px; width:60% " type="text" pattern="^[0-9]{10}$" name="contact" id="contact" /><br><br/> Landline(8) : <input style="width:60%;padding: 2px;border-radius: 2px;" type="text" pattern="^[0-9]{8}$" name="Landline" id="Landline" /></label><br />
                    <label>PAN : <input style="padding: 2px;border-radius: 2px; float:right;"type="text" name="pan" id="pan" cols="30" rows="1" /></label><br />
                    <label>OpeningBalance: <input style=" padding: 2px;border-radius: 2px;" type="text" name="bal" id="bal" /></label><br/>
                    <label> Do you want Check-Book:
                        <input type = "checkbox" id="cb" name="cb" value="YES">
                    </label>
                    <label>PermanentAddress :<textarea style="padding: 2px;border-radius: 2px; float:right;" name="address" cols="30" rows="2"></textarea></label><br />
                    <label>PresentAddress : <textarea style="padding: 2px;border-radius: 2px; float:right;" name="presentaddress" cols="33" rows="2"></textarea></label><br />
                    <label>Branch ID:
                        <select style="padding: 2px;border-radius: 2px; float:right" name="branchid" id="branchid" >
                            <option selected="disabled"></option>
                            <option value="1">Goverdhan Villas</option>
                            <option value="2">Surajpole Udaipur</option>
                            <option value="3">Sahijpur Bogha Ahmedabad</option>
                            <option value="4">Sahkari Jin Road Himmatnagar</option>
                            <option value="5">Janakpuri New Delhi</option>
                            <option value="6">Panaji City</option>
                            <option value="7">Hemmigepuragollahalli</option>
                            <option value="8">Jawahar Ngr</option>
                            <option value="9">Andheri West GreatedBombay</option>
                            <option value="10">DhabWastiRam Amritsar</option>
                            <option value="11">Aravindanagar Mysore</option>
                            <option value="12">P N Palayam Branch Coimbatore</option>
                            <option value="13">Jhakri</option>
                            <option value="14">Akashdeep Market Ganga</option>
                            <option value="15">Sakri</option> 
                        </select>
                    </label><br/>
                    <input style="width: 30%;background: #009cff;font-size: 20px;padding: 3px;border: 0px;margin: 10px 0px 20px;" type="submit" value="submit" /> 
                    <input style="width: 30%;background: #009cff;font-size: 20px;padding: 3px;border: 0px;margin: 10px 0px 20px;"type="reset" value="reset" />
                    <p></p>
                </form>
            </div>
        </div>
        <script>
            function Validation() 
            {
                var dob = document.getElementById("dob").value;
                var contact = document.getElementById("contact").value;
                var landline = document.getElementById("Landline").value;
                var contactRegex = /(?=.*\d){10}/;
                var landlineRegex = /(?=.*\d){8}/;
                var dobDate = new Date(dob);
                var today = new Date();
                if (dobDate.getTime() < today.getTime() &&contact.match(contactRegex)) {
                    return true;
                } 
                else 
                {
                    alert("Invalid Details!");
                    return false;
                }
            }
    </script>
    </body>
</html>