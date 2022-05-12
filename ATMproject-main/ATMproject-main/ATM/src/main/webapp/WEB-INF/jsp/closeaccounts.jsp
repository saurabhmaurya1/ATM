<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>
<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>CLOSE ACCOUNTSt</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form method="POST">
        <div style="background: linear-gradient(to bottom, #0099ff 0%, #fff 100%); margin-top: 250px; padding:50px; border: 2px solid;"class="container body-content">WELCOME!! <%=session.getAttribute("full_name")%>
            <div class="container" style="text-align: center;"><h4 style="text-align: center; font-size: 25px;color: #000;text-transform: uppercase;font-weight: bold;border-radius: 5px;"> CLOSE ACCOUNT</h4>
            <div class="row justify-content-start" style="padding-top:10px; text-align: center;">
                <div class="col" style="paiddding-top:10px; padding-left: 100px;">ENTER CUSTOMERID FROM CLOSING CUSTOMER ACCOUNT:
                    <label><input type="text" style="width: 150%;" class="form-control" name="custid" id="custid"></input></label>
                </div>
            </div>
            <div class="row justify-content-center" style="padding-top:10px;">
                <input type="submit" class="btn btn-primary" name="custid" id="custid" onclick="getInputValue();" value="CLOSE ACCOUNT">
            </div>
            <div class="row justify-content-center" style="padding-top:10px;">
                <a href="/AdminHomePage">GO BACK
            </div>
        </div>
        </div>
    </form>
    <script>
        function getInputValue(){
            var inputVal = document.getElementById("custid").value;
            alert("You want to Close Customer Account having ID: "+inputVal);
        }
    </script>
<%
String username = "root";
String password = "muskan"; /*root user's password needs to be written here*/
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
String url = "jdbc:mysql://localhost:3306/AtmDatabase";
//String uid = (String)session.getAttribute("userID");
//String cid = (String)session.getAttribute("CustomerID");
try{
    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection(url, username, password);
    stmt = conn.createStatement();
    String cid =request.getParameter("custid");

    //System.out.println(deposit);
    stmt.executeUpdate("delete bank_transaction,login_credentials from login_credentials LEFT join bank_transaction on login_credentials.customerid = bank_transaction.customerid  WHERE login_credentials.customerid ='"+cid+"';");
    stmt.executeUpdate("delete from customer_account_detailS c where c.customerid='"+cid+"';");
    stmt.executeUpdate("delete from cheque c where c.customerid='"+cid+"';");
    rs = stmt.executeQuery("select * from customer_account_details where customerid='"+cid+"';");
    if(rs.next()){
        {%>
            <script language="javascript">
            confirm("deletion Successfull...Redirecting to Homepage");
            window.location = '/AdminHomePage';
            </script>
        <%}
        //session.setAttribute("PIN",rs.getString("PIN"));
        //response.sendRedirect("CustomerHomePage.jsp");
    }else{
        {%>
        <script language="javascript">
        confirm("NO ID FOUND..Redirecting to Homepage");
        window.location = '/AdminHomePage';
        </script>
    <%}
}
}
catch(ClassNotFoundException e)
{
    System.out.println("Driver Not Loaded");
}catch (SQLException e) {
}finally {
    if(conn!=null)
    {   try{
            conn.close();
        }catch(Exception e){}
    }
}
%>
</body>
</html>