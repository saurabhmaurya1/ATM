<%@page import="java.sql.Date"%>
<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*, java.util.Enumeration, java.util.Random,java.math.BigInteger"%> 
<%@ page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<body>
<%@page import="java.sql.*" %>
<%
String username = "root";
String password = "saurabh"; /*root user's password needs to be written here*/
Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;;
Statement stmt2 = null;
ResultSet rs2 = null;
String url = "jdbc:mysql://localhost:3307/AtmDatabase";
try{
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(url, username, password);
	
	String fullname = request.getParameter("fullname");
	String fathersName = request.getParameter("fathersName");
    String contact = request.getParameter("contact");
	String number = request.getParameter("Landline");
	String acctype = request.getParameter("acctype");
	//session.setAttribute("DOB", request.getParameter("DOBdate"));
	String dob = request.getParameter("DOBdate");
	SimpleDateFormat formater = new SimpleDateFormat("dd-MM-yyyy");
	java.util.Date dateOfBirth = formater.parse(dob);
	String gender = request.getParameter("gender");
	String pan = request.getParameter("pan");
    String bal = request.getParameter("bal");
    int openingbal=Integer.parseInt(bal);  
	String address = request.getParameter("address");
	String presentaddress = request.getParameter("presentaddress");
    String branchid = request.getParameter("branchid");
    String cb = request.getParameter("cb");
    Random r = new Random();
    String customerid = String.format("%5d", (Object) Integer.valueOf(r.nextInt(100001)));
    int accountnumbers = 1000000000 + (int)(r.nextDouble() * 999999999);
    int newcust=Integer.parseInt(customerid); 
    //System.out.println(dob);
    int prefix=55;
    long x = (long)(r.nextDouble()*100000000000000L);
    String cardno = String.valueOf(prefix)+String.format("%014d", x);
    //System.out.println(fullname);
	String query = "INSERT INTO customer_account_details (full_name,fathers_name,dob,gender,permanent_address,present_address,pannumber,mobile_number,landline,account_type, opening_balance ,customerid,acc_no,card_no,pin,check_book,branchid) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    stmt = conn.prepareStatement(query);
    stmt2 = conn.createStatement();
    stmt.setString(1,fullname);
    stmt.setString(2,fathersName);
    stmt.setDate(3,new java.sql.Date(dateOfBirth.getDate()));
    stmt.setString(4,gender);
    stmt.setString(5,address);
    stmt.setString(6,presentaddress);
    stmt.setString(7,pan);
    stmt.setString(8,contact);
    stmt.setString(9,number);
    stmt.setString(10,acctype);
    stmt.setInt(11,openingbal);
    stmt.setInt(12,newcust);
    stmt.setInt(13,accountnumbers);
    stmt.setString(14,cardno);
    stmt.setInt(15,0000);
    stmt.setString(16,cb);
    stmt.setString(17,branchid);
    session.setAttribute("newcustomer", newcust);
	session.setAttribute("newbalance", openingbal);
    int i = stmt.executeUpdate();
    if(i!=0){
    {%>
        <script language="javascript">
        window.location = '/bankinsert';
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
