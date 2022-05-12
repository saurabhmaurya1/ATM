<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>
<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>CHANGE ADDRESS</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form method="POST" action="/changeaddress2">
        <div style="background: linear-gradient(to bottom, #0099ff 0%, #fff 100%); margin-top: 250px; padding:50px; padding-bottom: 20px; border: 2px solid;"class="container body-content">WELCOME!! You Want to change details of Account Number: <%=session.getAttribute("custid")%>
            <div class="container" style="text-align: center;"><h4 style="text-align: center; font-size: 25px;color: #000;text-transform: uppercase;font-weight: bold;border-radius: 5px; padding-top: 20px; padding-left: 15%;"> CHANGE ADDRESS </h4>
            <div class="row justify-content-start" style="padding-top:10px; text-align: center;">
                <div class="col"><b>Your Customer Permanent Address IS:
                    <label><P type="text" style="width: 150%;"><%=session.getAttribute("stringpremanentadd")%></P></label></b>
                </div>
                <div class="col"><b>Your Customer Present Address IS:
                    <label><P type="text" style="width: 150%;"><%=session.getAttribute("stringprsntadd")%></P></label></b>
                </div>
            </div>
            <div class="row justify-content-start" style="text-align: center;">
                <div class="col">Enter Permanent Address:
                    <label><input type="input" style="width: 150%;"  class="form-control" name="changeadd" id="changeadd"></input></label>
                </div>
                <div class="col">Enter Present Address:
                    <label><input type="input" style="width: 150%;"  class="form-control" name="changepadd" id="changepadd"></input></label>
                </div>
            </div>
            <div class="row justify-content-center" style="padding-top:10px;">
                <input type="submit" class="btn btn-primary" name="changedname" id="changedname" onclick="getInputValue();" value="CHANGE ADDRESS">
            </div>
            <div class="row justify-content-center" style="padding-top:10px;">
                <a href="/modifypage">GO BACK
            </div>
        </div>
        </div>
    </form>
    <script>
        function getInputValue(){
            var inputVal = document.getElementById("changeadd").value;
            var inputVal2 = document.getElementById("changepadd").value;
            alert("You want to change \n Permanent Address to: "+inputVal+" \nPresent Address to: "+inputVal2);
        }
    </script>
</body>
</html> 