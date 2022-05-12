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
//String uid = (String)session.getAttribute("userID");
//String cid = (String)session.getAttribute("CustomerID");
try{
    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection(url, username, password);
    String accountid =request.getParameter("accountid");
    session.setAttribute("From", request.getParameter("From_date"));
	session.setAttribute("To", request.getParameter("To_date"));
    stmt = conn.prepareStatement("Select balance,customerid from bank_transaction where customerid= '"+accountid+"'and transaction_type='create';");
    rs = stmt.executeQuery();
    while(rs.next()){
    session.setAttribute("balance",rs.getString("balance"));
    session.setAttribute("accountid",rs.getString("customerid"));
    }
}catch(ClassNotFoundException e) {
    System.out.println("Driver Not Loaded");
}catch (SQLException e) {
    System.out.println(e);
}finally {
    if(conn!=null)
    {   try{
            conn.close();
        }catch(Exception e){}
    }
}%>
<html lang="en">
<head>
	<title>Statment</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords">
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
	<link href="https://muskanpanjwani.github.io/HomePage/Style.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="https://muskanpanjwani.github.io/HomePage/styleheader.css">
	<link href="http://getbootstrap.com/2.3.2/assets/css/bootstrap-responsive.css" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body style="background: linear-gradient(to bottom, #0099ff 0%, #fff 100%);">
	

	<div class="clearfix"></div>
	<div class="inner_content agile_top_w3_grids">
		<div class="table-responsive">
			<table class="table" style="background-color: white">
				<thead>
					<tr>
						<th>#</th>
						<th>TransactionID</th>
						<th>CustomerID</th>
						<th>TransactionDate</th>
						<th>TransactionType</th>
						<th>TransactionAmount(In Rs)</th>
					</tr>
				</thead>
				<tbody id="listedClass"><tr></tr></tbody>
			</table>
			<h3 style="font-weight: bolder; margin-left: 35%; font-style: italic;">Your Total Balance : <%=session.getAttribute("balance")%> Rs</h3>
			<br>
			<button onclick="prevDay()" class="main_btn2" style="float: left;" ><b>Previous </b><i class="fa fa-caret-square-o-left"></i></button>
			<a href="javascript:printwindow()">
			<button class="main_btn2" style="float: left; margin: 0% 5%"><i class="fa fa-download" ></i><b> Download  PDF </b></button></a>
			<a href="/AdminHomePage">
			<button onclick="nextDay()" class="main_btn2" style="float: right;"><b>Next </b><i class="fa fa-caret-square-o-right"></i></button>
			<button class="main_btn2" style="float: right; margin: 0% 5%"><i class='fa fa-history'></i><b> HomePage </b></button></a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tilt.js/1.2.1/tilt.jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
		var d = new Date();
		var i = 0;
		
		$.ajax({
			type:"GET",
			url:"/statment",
			success:function(res){
				$("#listedClass").html(res);
			}
		});
		
	</script>
	<script type="text/javascript">
		  function printwindow() {
		  if (confirm("download MiniStatment ?")) 
		  {
		    window.print();
		  }
		}
   </script>
</body>
</html>