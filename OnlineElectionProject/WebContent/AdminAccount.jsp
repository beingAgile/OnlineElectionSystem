<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Panel</title>
<link rel="stylesheet" type="text/css" href="css/PanelDesign.css">
<style type="text/css">
  li {
    float: left;
    width: 14.2%;
    border-right: 1.5px solid #FFFFFF;
  }
  
  input{
    width: 30%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
  }
  
  form{
  	margin-left : 30%;
  }
  
  h2{
  	margin-left :37%;
  }
  
  h4{
  	margin-left :35%;
  }
  
</style>
<script>
		function validate(){
			var oldPassword = f1.oldPassword.value;
			var newPassword = f1.newPassword.value;
			var confirmPassword = f1.confirmPassword.value;
//			alert("hola");
			if(oldPassword==newPassword){
					alert("New Password cannot be same as Old Password");
					return false;
				}
			if(newPassword!=confirmPassword){
					alert("New Password and Confirm Password must match");
					return false;
			}
			return true;
		}
</script>
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
    <li><a  href="ViewVoters.jsp">View Voters</a></li>
    <li><a href="Authorizecadidate.jsp">Authorize Candidates</a></li>
    <li><a href="ManageElection.jsp">Manage Election</a></li>
    <li><a href="ViewResults.jsp">View Results</a></li>
    <li><a class="active" href="AdminAccount.jsp">Manage Account</a></li>
    <li><a href="LoginFolder/AdminLogin.jsp?adminAction=adminLogout">Logout</a></li>
  </ul>
   </div><br><br>
   				<%
   			String changePassword = request.getParameter("changePassword");
   			if(changePassword!=null){
   				try{
   					String oldPassword = request.getParameter("oldPassword");
   					String newPassword = request.getParameter("newPassword");
   					Class.forName("oracle.jdbc.driver.OracleDriver");
   					Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","garima07");
   					Statement st = con.createStatement();
   					String sql = "select adminpassword from adminDetails";
   					ResultSet resultSet = st.executeQuery(sql);
   					if(resultSet.next()){
   						if(oldPassword.equals(resultSet.getString(1))){
   							int res= st.executeUpdate("update voters set password='"+newPassword+"' where password='"+oldPassword+"'");
   							if(res>=1){
   								con.commit();
   								System.out.println("Changed Password");
    %>
    						<h4>Password Changed Successfully</h4>
    <% 
   							}
   							con.close();
   						}
   						else{
   	%>
   						<h4>Old Password Entered Incorrectly!</h4>
   	<% 
   						}
   					}
   				}catch(Exception e){
   					e.printStackTrace();
   				}
   			}	
    %>
   				<h2>Change Password</h2>
   				<form name="f1" onSubmit="return validate()" action="AdminAccount.jsp" method="post">
   					Old Password &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="oldPassword" value=""><br>
   					New Password &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="newPassword" value=""><br>
   					Confirm Password  <input type="password" name="confirmPassword" value=""><br>
   					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 					<input type ="submit" name="changePassword" value="Change Password">
   				</form>
   		
   	<%
     }
     else{
    	 out.print("Error! You are not logged in! ");
     }
    %>
  
  <div style="margin-left:16%;padding:1px 16px;height:50px;">
</div>
</body>
</html>

<%@ page import="java.lang.*" %>
<%@ page import ="java.sql.*" %>

    <!-- REMINDER : WHENEVER THE LOGIN PAGE IS LOADED CHECK THAT SESSION ATTRIBUTE IS NOT NULL AND  -->
    <!-- WHENEVER LOGOUT TAKES PLACE SET SESSION ATTRIBUTE AS NULL. -->