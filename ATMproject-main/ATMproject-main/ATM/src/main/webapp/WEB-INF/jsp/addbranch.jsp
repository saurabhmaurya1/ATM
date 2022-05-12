<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>
<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>ADD BRANCH</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
    <form method="POST">
        <div style="background: linear-gradient(to bottom, #0099ff 0%, #fff 100%); margin-top: 150px; padding:50px; border: 2px solid;"class="container body-content">WELCOME!! <%=session.getAttribute("full_name")%><br><br/>
            <div class="container" style="text-align: center;"><h4 style="text-align: center; font-size: 25px;color: #000;text-transform: uppercase;font-weight: bold;border-radius: 5px;"> ADD BRANCH</h4>
            <div class="row justify-content-start" style="padding-top:10px; text-align: center;">
                <div class="col" style="padding-top:10px; padding-right: 100px; padding-bottom: 10px;">BranchState:
                    <label><input type="text" style="width: 150%;" class="form-control" name="branchstate" id="branchstate"></input></label>
                </div>
            </div>
            <div class="row justify-content-start" style="padding-top:10px; text-align: center;">
                <div class="col" style="padding-top:10px; padding-right: 100px; padding-bottom: 10px;">BranchName:
                    <label><input type="text" style="width: 150%;" class="form-control" name="branchname" id="branchname" ></input></label>
                </div>
            </div>
            <div class="row justify-content-center" style="padding-top:10px;">
                <input type="submit" class="btn btn-primary" name="btn" id="btn" onclick="getInputValue();" value="ADD BRANCH">
            </div>
            <div class="row justify-content-center" style="padding-top:10px;">
                <a href="/AdminHomePage">GO BACK
            </div>
        </div>
        </div>
    </form>
    <script>
        function getInputValue(){
            var branchstate = document.getElementById("branchstate").value;
            var branchname = document.getElementById("branchname").value;
            alert("BranchName: "+branchname+" BranchState: "+branchstate);
        }
    </script>
<%
String username = "root";
String password = "saurabh"; /*root user's password needs to be written here*/
Connection conn = null;
PreparedStatement stmt = null;
//Statement stmt2 = null;
ResultSet rs = null;
ResultSet rs2 = null;
String url = "jdbc:mysql://localhost:3307/AtmDatabase";
String uid = (String)session.getAttribute("userid");
String cid = (String)session.getAttribute("customerid");
try{
    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection(url, username, password);
    String branchstate = request.getParameter("branchstate");
    String branchname = request.getParameter("branchname");

    String query = "insert into branch_details(branch_name,state) values(?,?)";
    stmt = conn.prepareStatement(query);
    stmt.setString(1,branchname);
    stmt.setString(2,branchstate);
    int i = stmt.executeUpdate();
        if(i!=0)
        {%>
            <script>
            confirm("Branch Added Successfull...Redirecting to Homepage");
            window.location = '/AdminHomePage';
            </script>
        <%}
        else
        {%>
            <script>
            confirm("sorry!!!");
            window.location = '/AdminHomePage';
            </script>
        <%}
    rs = stmt.executeQuery("select * from branch_details");
    if(rs.next()){
    }else
        response.sendRedirect("/error");
}
catch(ClassNotFoundException e)
{
    System.out.println("Driver Not Loaded");
}catch (SQLException e) {
}finally {
    if(conn!=null)
    {   try{
            conn.close();
        }catch(Exception e){}
    }
}
%>
</body>
</html>	