<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>
<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>CHANGE NAME</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form method="POST" action="/changename2">
        <div style="background: linear-gradient(to bottom, #0099ff 0%, #fff 100%); margin-top: 250px; padding:50px; padding-bottom: 20px; border: 2px solid;"class="container body-content">WELCOME!! You Want to change details of Account Number: <%=session.getAttribute("custid")%>
            <div class="container" style="text-align: center;"><h4 style="text-align: center; font-size: 25px;color: #000;text-transform: uppercase;font-weight: bold;border-radius: 5px; padding-top: 20px; padding-left: 15%;"> CHANGE NAME</h4>
            <div class="row justify-content-start" style="padding-top:10px; text-align: center;">
                <div class="col" style="padding-left: 100px;"><b>YOUR CUSTOMER NAME IS:
                    <label><P type="text" style="width: 150%;"><%=session.getAttribute("stringname")%></P></label></b>
                </div>
            </div>
            <div class="row justify-content-start" style="text-align: center;">
                <div class="col" style="padding-left: 100px;">ENTER NEW NAME:
                    <label><input type="text" style="width: 150%;" class="form-control" name="changedname" id="changedname"></input></label>
                </div>
            </div>
            <div class="row justify-content-center" style="padding-top:10px;">
                <input type="submit" class="btn btn-primary" name="changedname" id="changedname" onclick="getInputValue();" value="CHANGE NAME">
            </div>
            <div class="row justify-content-center" style="padding-top:10px;">
                <a href="/modifypage">GO BACK
            </div>
        </div>
        </div>
    </form>
    <script>
        function getInputValue(){
            var inputVal = document.getElementById("changedname").value;
            alert("You want to change name to: "+inputVal);
        }
    </script>
</body>
</html>	