<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>
<%
String username = "root";
String password = "saurabh"; /*root user's password needs to be written here*/
Connection conn = null;
PreparedStatement stmt = null;
Statement stmt2 = null;
PreparedStatement stmt3 = null;
ResultSet rs = null;
ResultSet rs2 = null;
String url = "jdbc:mysql://localhost:3307/AtmDatabase";
String uid = (String)session.getAttribute("userid");
String cid = (String)session.getAttribute("customerid");
try{
    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection(url, username, password);
    String withdraw =request.getParameter("withdrawmoney");
    String query = "insert into bank_transaction(transaction_type,transaction_amount,balance,customerid) values(?,?,?,?)";
    stmt = conn.prepareStatement(query);
    stmt2 = conn.createStatement();
    
    stmt3 = conn.prepareStatement("Select * from bank_transaction where customerid='"+cid+"';");
    rs2 = stmt3.executeQuery();
    if(rs2.next()){ 
    	String balancecheck = (String)session.getAttribute("balance");
    	int bal=Integer.parseInt(balancecheck);
    	int withdrawm=Integer.parseInt(withdraw);
    	System.out.println(withdrawm);
    	System.out.println(bal);
    	if(bal >= withdrawm){
    		stmt2.executeUpdate("update bank_transaction SET balance  = balance - '"+withdraw+"' where customerid='"+cid+"';");
    	    rs = stmt.executeQuery("select * from bank_transaction where customerid='"+cid+"';");
    	    if(rs.next()){
    	    	session.setAttribute("balance",rs.getString("balance"));
    	        String bal2 = (String)session.getAttribute("balance");
    	        stmt.setString(1,"withdraw");
    	        stmt.setString(2,withdraw);
    	        stmt.setString(3,bal2);
    	        stmt.setString(4,cid);
    	        int i = stmt.executeUpdate();
    	        if(i!=0)
    	        {%>
    	            <script>
    	            confirm("Withdraw Successfull...Redirecting to Homepage");
    	            window.location = '/CustomerHomePage';
    	            </script>
    	        <%}
    	        else
    	        {%>
    	            <script>
    	            confirm("sorry");
    	            window.location = '/CustomerHomePage';
    	            </script>
    	        <%}
    	    }else
    	        response.sendRedirect("/error");
    	}
    	else
    	{%>
        <script>
        confirm("INSUFFICIENT BALANCE TO WITHDRAW MONEY...Redirecting to Homepage");
        window.location = '/CustomerHomePage';
        </script>
        <%}
    	}
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