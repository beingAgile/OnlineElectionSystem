<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Voter Panel</title>
<link rel="stylesheet" type="text/css" href="css/PanelDesign.css">
<style type="text/css">
  li {
    float: left;
    width: 24.9%;
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
  		Integer id = Integer.parseInt(userId);
     String password=(String)session.getAttribute("password"); 
     if(userId!=null && password!=null){
  %>
  <img src="images/democracy.jpg" height="400" width="70%">
  <ul>
    <li><a href="VoterPanel.jsp">View Candidates</a></li>
    <li><a href="ViewResults.jsp">View Results</a></li>
    <li><a class="active" href="VoterAccount.jsp">Manage Account</a></li>
    <li><a href="LoginFolder/VoterLogin.jsp?voterAction=voterLogout">Logout</a></li>
  </ul>
   </div>
   			<br><br>
   				<%
   			String changePassword = request.getParameter("changePassword");
   			if(changePassword!=null){
   				try{
   					String oldPassword = request.getParameter("oldPassword");
   					String newPassword = request.getParameter("newPassword");
   					Class.forName("oracle.jdbc.driver.OracleDriver");
   					Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","garima07");
   					Statement st = con.createStatement();
   					String sql = "select password from voters where id="+id;
   					ResultSet resultSet = st.executeQuery(sql);
   					if(resultSet.next()){
   						if(oldPassword.equals(resultSet.getString(1))){
   							int res=st.executeUpdate("update voters set password='"+newPassword+"' where ID='"+id+"'");
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
   				<form name="f1" onSubmit="return validate()" action="VoterAccount.jsp" method="post">
   					Old Password &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="oldPassword" value=""><br>
   					New Password &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="newPassword" value=""><br>
   					Confirm Password  <input type="password" name="confirmPassword" value=""><br>
   					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 					<input type ="submit" name="changePassword" value="Change Password">
   				</form>
   		
   	<%          
  }
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
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>
    <!-- REMINDER : WHENEVER THE LOGIN PAGE IS LOADED CHECK THAT SESSION ATTRIBUTE IS NOT NULL AND  -->
    <!-- WHENEVER LOGOUT TAKES PLACE SET SESSION ATTRIBUTE AS NULL. -->