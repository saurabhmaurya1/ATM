<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>
<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>CHANGE PIN</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form method="POST" action="/mychangepin">
        <div style="background: linear-gradient(to bottom, #0099ff 0%, #fff 100%); margin-top: 250px; padding:50px; border: 2px solid;"class="container body-content">WELCOME!! Your Account Number: <%=session.getAttribute("customerid")%> 
            <div class="container" style="text-align: center;"><h4 style="text-align: center; font-size: 25px;color: #000;text-transform: uppercase;font-weight: bold;border-radius: 5px;"> CHANGE PIN</h4>
            <div class="row justify-content-start" style="padding-top:10px; text-align: center;">
                <div class="col" style="padding-top:10px; padding-left: 100px;">ENTER NEW CODE YOU WANT TO CHANGE (4 Digits):
                    <label><input type="text" style="width: 150%;" pattern = "^[0-9]{4}$" class="form-control" name="change" id="change"></input></label>
                </div>
            </div>
            <div class="row justify-content-center" style="padding-top:10px;">
                <input type="submit" class="btn btn-primary" name="change" id="change" onclick="getInputValue();" value="CHANGE PIN">
            </div>
            <div class="row justify-content-center" style="padding-top:10px;">
                <a href="/CustomerHomePage">GO BACK
            </div>
        </div>
        </div>
    </form>
    <script>
        function getInputValue(){
            // Selecting the input element and get its value 
            var inputVal = document.getElementById("changepinid").value;
            // Displaying the value
            alert("You want to changepin: "+inputVal);
            //confirm("change pin Successfull...Redirecting to Homepage");
    }
    </script>

</body>
</html>