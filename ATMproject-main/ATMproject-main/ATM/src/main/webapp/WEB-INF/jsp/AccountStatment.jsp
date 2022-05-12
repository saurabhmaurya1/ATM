<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>
<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>ACCOUNT STATMENT</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form method="POST" action="/statmentpage">
        <div style="background: linear-gradient(to bottom, #0099ff 0%, #fff 100%); margin-top: 250px; padding:50px; border: 2px solid;"class="container body-content">WELCOME!! <%=session.getAttribute("full_name")%><br><br/>
            <div class="container" style="text-align: center;"><h4 style="text-align: center; font-size: 25px;color: #000;text-transform: uppercase;font-weight: bold;border-radius: 5px;"> Account Statment </h4>
            <div class="row justify-content-start" style="padding-top:10px; text-align: center;">
                <div class="col" style="padding-top:10px; padding-left: 100px;">ENTER CUSTOMER ID NUMBER YOU WANT TO HAVE STATMENT:
                    <label><input type="text" style="width: 150%;" pattern = "^[0-9]{5}$" class="form-control" name="accountid" id="accountid"></input></label>
                </div>
            </div>
            <div class="row justify-content-start" style="padding-top:10px; text-align: center;">
                <div class="col" style="padding-top:10px; padding-left: 100px;">
                	<label for="From_date" style="font-style: italic;text-transform: uppercase;"><b>From : </b></label>
					<input type="date" class = "dates" name="From_date" id="From_date"> 
					<label for="To_date" style="font-style: italic;text-transform: uppercase;"><b>To : </b></label>
					<input type="date" class = "dates" name="To_date" id="To_date">
                </div>
            </div>
            <div class="row justify-content-center" style="padding-top:10px;">
                <input type="submit" class="btn btn-primary" name="accountid" id="accountid" onclick="getInputValue();" value="ACCOUNT STATMENT">
            </div>
            <div class="row justify-content-center" style="padding-top:10px;">
                <a href="/AdminHomePage">GO BACK
            </div>
        </div>
        </div>
    </form>
    <script>
        function getInputValue(){
            // Selecting the input element and get its value 
            var inputVal = document.getElementById("accountid").value;
            // Displaying the value
            alert("You want to access statment of : "+inputVal);
            //confirm("change pin Successfull...Redirecting to Homepage");
    }
    </script>

</body>
</html>