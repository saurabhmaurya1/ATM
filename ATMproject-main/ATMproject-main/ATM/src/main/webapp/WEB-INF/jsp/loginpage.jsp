<%@page language='java' contentType='text/html'%>
<!DOCTYPE html>
<html>
<body>
<%@page import="java.sql.*" %>
<%
String username = "root";
String password = "saurabh"; /*root user's password needs to be written here*/
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
String url = "jdbc:mysql://localhost:3307/AtmDatabase";
try{
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(url, username, password);
	stmt = conn.createStatement(); 
	
	String ut = request.getParameter("ut");
	String uid = request.getParameter("uid");
	String pass = request.getParameter("pass");
	session.setAttribute("userType", ut);
	session.setAttribute("userID", uid);
	if(ut.equals("admin")){
		rs = stmt.executeQuery("Select * from login_credentials l,admintable c where l.customerid= c.customerid and l.userid='"+uid+"';");
		if((rs.next()) && pass.equals(rs.getString("password"))){
					session.setAttribute("customerid",rs.getString("customerid"));
					session.setAttribute("full_name",rs.getString("full_name"));
					session.setAttribute("opening_balance",rs.getString("opening_balance"));
					session.setAttribute("pin",rs.getInt("pin"));
					response.sendRedirect("/pincheckAdmin");
		}else{
			{%>
	            <script language="javascript">
	            confirm("You are not Admin...Redirecting to Login page");
	            window.location = '/';
	            </script>
        	<%}
			//response.sendRedirect("index.html");
		}

	}else
	if(ut.equals("Customer")){
		rs = stmt.executeQuery("Select * from login_credentials l,customer_account_details c where l.customerid= c.customerid and l.userid='"+uid+"';");
		if((rs.next()) && pass.equals(rs.getString("password"))){
					session.setAttribute("customerid",rs.getString("customerid"));
					session.setAttribute("full_name",rs.getString("full_name"));
					session.setAttribute("opening_balance",rs.getString("opening_balance"));
					session.setAttribute("pin",rs.getInt("pin"));
					response.sendRedirect("/pin");
		}else{
			{%>
	            <script language="javascript">
	            confirm("You are not Customer...Redirecting to Login page");
	            window.location = '/';
	            </script>
        	<%}
			//response.sendRedirect("index.html");
		}
	}else{
		response.sendRedirect("error.html");
	}
}
catch(ClassNotFoundException e)
{
    System.out.println("Driver Not Loaded");
}catch (SQLException e) {
    System.out.println("Connection not established");
}finally {
	if(conn!=null)
	{	try{
			conn.close();
		}catch(Exception e){}
	}
}
%>