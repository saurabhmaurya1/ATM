<%@page language='java' contentType='text/html'%>


<!DOCTYPE html>
<html>
<head>
    <title>LOGOUT</title>
    <script src=
        "https://code.jquery.com/jquery-3.6.0.min.js" 
        integrity=
"sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
        crossorigin="anonymous">
    </script>
</head>
  
<body>
	<body bgcolor="SkyBlue">

        <%
            session.invalidate();
        %>

        <h1><p style="text-align: center;">You are Sucessfully logged out...</p></h1>

        <a href="/"><p style="text-align: center;">Go-Back To Home Page</p></a>
</body>
  
</html>