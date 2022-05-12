<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>
<% 
response.setContentType("text/html; charset=UTF-8");
String username = "root";
String password = "saurabh"; /*root user's password needs to be written here*/
Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;
String url = "jdbc:mysql://localhost:3307/AtmDatabase";
String uid = (String)session.getAttribute("userid");
String cid = (String)session.getAttribute("customerid");
try{
    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection(url, username, password);
    stmt = conn.prepareStatement("Select balance from bank_transaction where customerid='"+cid+"';");
    rs = stmt.executeQuery();
    if(rs.next()){
    	session.setAttribute("balance",rs.getString("balance")); 
    	String balancecheck = (String)session.getAttribute("balance");
    	int bal=Integer.parseInt(balancecheck);  
    	System.out.println(bal);
    	if(bal <= 0)
    	{%>
    	<script>
        confirm("balance is less then zero cannot do transaction debit first");
        window.location = '/CustomerHomePage';
        </script>
        <%}
    	else
    	{%>
    	 <script>
        window.location = '/withdraw';
        </script>
        <%}
    }else
        response.sendRedirect("/CustomerHomePage");
}catch(ClassNotFoundException e) {
    System.out.println("Driver Not Loaded");
}catch (SQLException e) {
    System.out.println("Connection not established");
}finally {
    if(conn!=null)
    {   try{
            conn.close();
        }catch(Exception e){}
    }
}%>