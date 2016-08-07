<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Candidate Information</title>
<style>
	
	html{
		margin-bottom:50px;
	}
	
	table {
	margin-top:5%;
	margin-left:3%;
    border-collapse: collapse;
    width: 90%;
    table-layout:fixed; 
  }
  
  table, td {
    border: 2px solid black;
	}
	
  td{
  	padding: 15px;
  	width: 50px;
  }
</style>
</head>
<body>
		<%
		  String id = request.getParameter("candidateId");
		  if(id!=null){
			  try{
				  Class.forName("oracle.jdbc.driver.OracleDriver");
				  Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","garima07");
				  Statement statement = con.createStatement();
				  String sql = "select * from candidate where id="+id;
				  ResultSet resultSet = statement.executeQuery(sql);
				  if(resultSet.next()){
		%>
					<table>
						<tr>
							<td style="width:12%;">Candidate Id</td>
							<td style="width:78%;"><%out.print(resultSet.getInt(1));%></td>
						</tr>
						<tr>
							<td style="width:12%;">First name</td>
							<td style="width:78%;"><%out.print(resultSet.getString(3));%></td>
						</tr>
						<tr>
							<td style="width:12%;">Last Name</td>
							<td style="width:78%;"><%out.print(resultSet.getString(4));%></td>
						</tr>
						<tr>
							<td style="width:12%;">Date Of birth</td>
							<td style="width:78%;"><%out.print(resultSet.getString(5));%></td>
						</tr>
						<tr>
							<td style="width:12%;">Gender</td>
							<td style="width:78%;"><%out.print(resultSet.getString(6));%></td>
						</tr>
						<tr>
							<td style="width:12%;">Residential Address</td>
							<td style="width:78%;"><%out.print(resultSet.getString(7));%></td>
						</tr>
						<tr>
							<td style="width:12%;">Work Address</td>
							<td style="width:78%;"><%out.print(resultSet.getString(8));%></td>
						</tr>
						<tr>
							<td style="width:12%;">Email</td>
							<td style="width:78%;"><%out.print(resultSet.getString(9));%></td>
						</tr>
						<tr>
							<td style="width:12%;">Mobile</td>
							<td style="width:78%;"><%out.print(resultSet.getLong(10));%></td>
						</tr>
						
						<tr>
							<td style="width:12%;">Adhaar Number</td>
							<td style="width:78%;"><%out.print(resultSet.getInt(11));%></td>
						</tr>
						<tr>
							<td style="width:12%;">Authorization Status</td>
							<td style="width:78%;"><%out.print(resultSet.getInt(14));%></td>
						</tr>
						<tr>
							<td style="width:12%;">Message for Voters</td>
							<td style="width:78%;"><% out.print(resultSet.getString(13));%></td>
						</tr>
					</table>
					
		<% 
				  }
				  else{
					  out.print("Error occured");
				  }
			  }catch(Exception e){
				  
			  }
		  }
		  else{
			  out.println("Error occured");
		  }
		%>
		
</body>
</html>

<%@ page import="java.sql.*"%>
<%@ page import="java.lang.*"%>