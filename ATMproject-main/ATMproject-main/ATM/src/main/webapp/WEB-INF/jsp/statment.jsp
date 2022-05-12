<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>
<% response.setContentType("text/html; charset=UTF-8");
String username = "root";
String password = "saurabh"; /*root user's password needs to be written here*/
Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;
String url = "jdbc:mysql://localhost:3307/AtmDatabase";
int i=1;
try{
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(url, username, password);
	String accountid = (String)session.getAttribute("accountid");
	String todate = (String)session.getAttribute("To");
	String to = todate+" 23:59:59";
	System.out.println(to);
	stmt = conn.prepareStatement("Select * from bank_transaction where customerid ='"+accountid+"' and transaction_date between '"+session.getAttribute("From")+"' and '"+to+"';");
	rs = stmt.executeQuery();
	while(rs.next()){%>
		<tr><td><%=i%></td>
			<td><%=rs.getString("transactionid")%></td>
			<td><%=rs.getString("customerid")%></td>
			<td><%=rs.getString("transaction_date")%></td>
		 	<td><%=rs.getString("transaction_type")%></td>
		 	<td><%=rs.getString("transaction_amount")%></td></tr>
		<%i += 1;
	}
}catch(ClassNotFoundException e) {
	System.out.println("Driver Not Loaded");
}catch (SQLException e) {
	System.out.println(e);
}finally {
	if(conn!=null)
	{	try{
			conn.close();
		}catch(Exception e){}
	}
}%>