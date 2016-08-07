<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Candidate Panel</title>
<link rel="stylesheet" type="text/css" href="css/PanelDesign.css">
<style type="text/css">
  li {
    float: left;
    width: 14.2%;
    border-right: 1.5px solid #FFFFFF;
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
    <li><a  href="ViewVoters.jsp">View Voters</a></li>
    <li><a href="Authorizecadidate.jsp">Authorize Candidates</a></li>
    <li><a href="ManageElection.jsp">Manage Election</a></li>
    <li><a class="active" href="ViewResults.jsp">View Results</a></li>
    <li><a href="AdminAccount.jsp">Manage Account</a></li>
    <li><a href="LoginFolder/AdminLogin.jsp?adminAction=adminLogout">Logout</a></li>
  </ul>
   </div>
   
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
    <!-- REMINDER : WHENEVER THE LOGIN PAGE IS LOADED CHECK THAT SESSION ATTRIBUTE IS NOT NULL AND  -->
    <!-- WHENEVER LOGOUT TAKES PLACE SET SESSION ATTRIBUTE AS NULL. -->