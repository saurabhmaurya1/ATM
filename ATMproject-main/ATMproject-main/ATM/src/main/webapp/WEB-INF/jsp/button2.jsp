<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>
<%
String username = "root";
String password = "saurabh"; /*root user's password needs to be written here*/
Connection conn = null;
PreparedStatement stmt = null;
Statement stmt2 = null;
Statement stmt3 = null;
ResultSet rs = null;
ResultSet rs2 = null;
String url = "jdbc:mysql://localhost:3307/AtmDatabase";
String ChequeID = (String)session.getAttribute("chequeid");
String customeridcheck = (String)session.getAttribute("customeridcheck");
String customeridtocheck = (String)session.getAttribute("customeridtocheck");
String cheque_amtcheck = (String)session.getAttribute("cheque_amtcheck");
try{
    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection(url, username, password);;
    String query = "insert into bank_transaction(transaction_type,transaction_amount,balance,customerid) values(?,?,?,?)";
    stmt = conn.prepareStatement(query);
    stmt2 = conn.createStatement();
    stmt2.executeUpdate("update bank_transaction SET balance  = balance + '"+cheque_amtcheck+"' where customerid='"+customeridtocheck+"';");
    rs = stmt.executeQuery("select * from bank_transaction where customerid='"+customeridtocheck+"';");
    if(rs.next()){
    	session.setAttribute("balance",rs.getString("balance"));
        String bal = (String)session.getAttribute("balance");
        stmt.setString(1,"Cheque Deposit");
        stmt.setString(2,cheque_amtcheck);
        stmt.setString(3,bal);
        stmt.setString(4,customeridtocheck);
        int i = stmt.executeUpdate();
        if(i!=0)
        {%>
            <script language="javascript">
            confirm("Redeem Successful!!!...Redirecting to Homepage");
            window.location = '/AdminHomePage';
            </script>
        <%}
        else
        {%>
            <script language="javascript">
            confirm("sorry!!!");
            window.location = '/AdminHomePage';
            </script>
        <%}
    }else
        response.sendRedirect("/error");
}
catch(ClassNotFoundException e)
{
    System.out.println("Driver Not Loaded");
}catch (SQLException e) {
    System.out.println(e);
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