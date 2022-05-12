<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>
<% response.setContentType("text/html; charset=UTF-8");
String username = "root";
String password = "saurabh"; /*root user's password needs to be written here*/
Connection conn = null;
PreparedStatement stmt = null;
PreparedStatement stmt2 = null;
ResultSet rs = null;
String url = "jdbc:mysql://localhost:3307/AtmDatabase";
int i=1;
try{
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(url, username, password);
	String ChequeID = (String)session.getAttribute("chequeid");
	stmt = conn.prepareStatement("Select * from cheque where chequeid='"+ChequeID+"';");
	rs = stmt.executeQuery();
	while(rs.next()){%>
		<tr><td><%=i%></td>
			<td><%=rs.getString("chequeid")%></td>
			<td><%=rs.getString("cheque_amt")%></td>
			<td><%=rs.getString("cheque_date")%></td>
			<td><%=rs.getString("chequeto")%></td>
		 	<td><%=rs.getString("customerid")%></td>
		 	<td><%=rs.getString("customeridto")%></td>
		 	<td><%=rs.getBoolean("checkred")%></td></tr>
		<%i += 1;
		session.setAttribute("customeridcheck",rs.getString("customerid"));
	    session.setAttribute("customeridtocheck",rs.getString("customeridto"));
	    session.setAttribute("cheque_amtcheck",rs.getString("cheque_amt"));
	    session.setAttribute("checkred",rs.getBoolean("checkred"));
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