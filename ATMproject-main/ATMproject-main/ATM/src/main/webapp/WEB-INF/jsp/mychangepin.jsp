<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>
<%
String username = "root";
String password = "saurabh"; /*root user's password needs to be written here*/
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
String url = "jdbc:mysql://localhost:3307/AtmDatabase";
String uid = (String)session.getAttribute("userid");
String cid = (String)session.getAttribute("customerid");
try{
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(url, username, password);
	stmt = conn.createStatement();
    String changepin =request.getParameter("change");
	stmt.executeUpdate("update customer_account_details SET pin  = "+changepin+" where customerid='"+cid+"';");
	rs = stmt.executeQuery("select * from customer_account_details where customerid='"+cid+"';");
	if(rs.next()){
		session.setAttribute("pin",rs.getString("pin"));
        //response.sendRedirect("CustomerHomePage.jsp");
        {%>
            <script language="javascript">
            confirm("changepin Successfull...Redirecting to Homepage");
            window.location = '/CustomerHomePage';
            </script>
        <%}
	}else
		response.sendRedirect("/error");
}
catch(ClassNotFoundException e)
{
    System.out.println("Driver Not Loaded");
}catch (SQLException e) {
}finally {
	if(conn!=null)
	{	try{
			conn.close();
		}catch(Exception e){}
	}
}
%>