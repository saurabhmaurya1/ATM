<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>
<%
String username = "root";
String password = "saurabh"; /*root user's password needs to be written here*/
Connection conn = null;
PreparedStatement stmt = null;
Statement stmt2 = null;
ResultSet rs = null;
ResultSet rs2 = null;
String url = "jdbc:mysql://localhost:3307/AtmDatabase";
int newcustomerid = (int)session.getAttribute("newcustomer");
int newbalance = (int)session.getAttribute("newbalance");
try{
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(url, username, password);
	String query = "INSERT INTO bank_transaction (transaction_type,transaction_amount,balance,customerid) VALUES(?,?,?,?)";
    stmt = conn.prepareStatement(query);
    stmt2 = conn.createStatement();
    stmt.setString(1,"create");
    stmt.setInt(2,newbalance);
    stmt.setInt(3,newbalance);
    stmt.setInt(4,newcustomerid);
    int i = stmt.executeUpdate();
    if(i!=0){
    {%>
        <script language="javascript">
        window.location = '/logininsert';
        </script>
    <%}
}else{
    {%>
        <script language="javascript">
        confirm("sorry");
        //window.location = 'CustomerHomePage.jsp';
        </script>
    <%}
    }
    System.out.println("Rows affected: " + i);
    //stmt2.executeUpdate("update BankTransaction SET Balance  = Balance -'"+withdraw+"' where CustomerID='"+cid+"';");
    //rs = stmt.executeQuery("select * from BankTransaction where CustomerID='"+cid+"';");
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