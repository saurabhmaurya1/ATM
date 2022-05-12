<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>VERIFY CHEQUE</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form method="POST" action="/verifycheck">
        <div style="background: linear-gradient(to bottom, #0099ff 0%, #fff 100%); margin-top: 250px; padding:50px; border: 2px solid;"class="container body-content">WELCOME!! <%=session.getAttribute("full_name")%><br><br/>
            <div class="container" style="text-align: center;"><h4 style="text-align: center; font-size: 25px;color: #000;text-transform: uppercase;font-weight: bold;border-radius: 5px;"> VERIFY CHEQUE </h4>
            <div class="row justify-content-start" style="padding-top:10px; text-align: center;">
                <div class="col" style="padding-top:10px; padding-left: 100px;">ENTER CHEQUE NUMBER:
                    <label><input type="text" style="width: 150%;" class="form-control" name="verfiycheck" id="verfiycheck"></input></label>
                </div>
            </div>
            <div class="row justify-content-center" style="padding-top:10px;">
                <input type="submit" class="btn btn-primary" name="depositmoney" id="depositmoney" onclick="getInputValue();" value="VERIFY CHEQUE">
            </div>
            <div class="row justify-content-center" style="padding-top:10px;">
                <a href="/AdminHomePage">GO BACK
            </div>
        </div>
        </div>
    </form>
    <script>
        function getInputValue(){
            var inputVal = document.getElementById("verfiycheck").value;
            alert("You want to verify cheque with id: "+inputVal);
        }
    </script>
</body>
</html>	