<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>
<%
String username = "root";
String password = "saurabh"; /*root user's password needs to be written here*/
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
String url = "jdbc:mysql://localhost:3307/AtmDatabase";
String custid = (String)session.getAttribute("custid");
try{
    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection(url, username, password);
    stmt = conn.createStatement();
    String changename =request.getParameter("changedname");
    System.out.println("--");
    //System.out.println("1"+changename);
    //System.out.println("->"+session.getAttribute("custid"));
    stmt.executeUpdate("update customer_account_details  SET full_name  = '"+changename+"' where customerid='"+custid+"';");
    rs = stmt.executeQuery("select * from customer_account_details  where customerid='"+custid+"';");
    //System.out.println("2"+changename);
    if(rs.next()){
        session.setAttribute("stringname",rs.getString("full_name"));
        {%>
            <script language="javascript">
            confirm("changename Successfull...Redirecting to Homepage");
            window.location = '/modifypage';
            </script>
        <%}
        //System.out.println("3"+session.getAttribute("stringname"));
        //response.sendRedirect("CustomerHomePage.jsp");
    }else
        response.sendRedirect("error.html");
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