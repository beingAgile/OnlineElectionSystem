<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>View Voters</title>
<link rel="stylesheet" type="text/css" href="css/PanelDesign.css">
<style type="text/css">
  li {
    float: left;
    width: 14.2%;
    border-right: 1.5px solid #FFFFFF;
  }
  table {
    border-collapse: collapse;
    width: 100%;
    table-layout:fixed;
  
  }

  table, td, th {
    border: 2px solid #8B4513;
	}
	
  td{
  	
  	width: 50px;
  }
</style>
</head>
<body>



<div class="nav">
  <% String userId  =(String)session.getAttribute("userId"); 
     String password=(String)session.getAttribute("password"); 
     if(userId!=null && password!=null){
  %>
  <img src="images/democracy.jpg" height="400" width="70%">
  <ul>
    <li><a href="AdminPanel.jsp">View Candidates</a></li>
    <li><a class="active" href="ViewVoters.jsp">View Voters</a></li>
    <li><a href="Authorizecadidate.jsp">Authorize Candidates</a></li>
    <li><a href="ManageElection.jsp">Manage Election</a></li>
    <li><a href="ViewResults.jsp">View Results</a></li>
    <li><a href="AdminAccount.jsp">Manage Account</a></li>
    <li><a href="LoginFolder/AdminLogin.jsp?adminAction=adminLogout">Logout</a></li>
  </ul>
   </div>
 		<%
 			try{
 				Class.forName("oracle.jdbc.driver.OracleDriver");
 				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","garima07");
 				Statement st = con.createStatement();
 				String sql = "select * from voters";
 				ResultSet resultSet = st.executeQuery(sql);
 				resultSet.next();
 				int count=1;
 				if(resultSet.next()){
 		%>			
 					<br>
 					<br>
 					<table>
 						<thead>
 							<tr>
 								<th style="width:5%;">S.No.</th>
 								<th style="width:10%;">ID</th>
 								<th style="width:15%;">First Name</th>
 								<th style="width:15%;">Last Name</th>
 								<th style="width:25%;">Email</th>
 								<th style="width:10%;">Adhaar Number</th>
 								<th style="width:10%;">Gender</th>
 								<th style="width:10%;">D.O.B</th>
 							</tr>
 						</thead>
 						<tbody>
 		<%
 							do{
 		%>
 							<tr>
 								<td style="width:5%;"><%out.print(count++); %></td>
 								<td style="width:10%;"><%out.print(resultSet.getInt(1)); %></td>
 								<td style="width:15%;"><%out.print(resultSet.getString(3)); %></td>
 								<td style="width:15%;"><%out.print(resultSet.getString(4)); %></td>
 								<td style="width:25%;"><%out.print(resultSet.getString(5)); %></td>
 								<td style="width:10%;"><%out.print(resultSet.getLong(6)); %></td>
 								<td style="width:10%;"><%out.print(resultSet.getString(7)); %></td>
 								<td style="width:10%;"><%out.print(resultSet.getString(8)); %></td>
 							</tr>
 		<% 					}while(resultSet.next());
 		%>
 						</tbody>
 					</table>
 		<% 
 				}
 				else{
 		%>
 				<br>
 				<br>
 				<br>
 				<h2>No Voter has registered Yet!</h2>
 		<% 
 				}
 		}catch(Exception e){
 			e.printStackTrace();
 		}
 		%>   		

  <% }
     else{
  %>
  	    Error! You are not logged in!
  <%
     }
  %>
 
 
<div style="margin-left:16%;padding:1px 16px;height:100px;">
</div>
</body>
</html>

<%@ page import="java.sql.*"  %>
    <!-- REMINDER : WHENEVER THE LOGIN PAGE IS LOADED CHECK THAT SESSION ATTRIBUTE IS NOT NULL AND  -->
    <!-- WHENEVER LOGOUT TAKES PLACE SET SESSION ATTRIBUTE AS NULL. -->