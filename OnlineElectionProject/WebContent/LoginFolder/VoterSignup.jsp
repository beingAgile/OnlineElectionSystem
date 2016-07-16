<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Login Form</title>
   
    <link rel="stylesheet" href="css/normalize.css">
   <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    

    
        <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      @import url(http://fonts.googleapis.com/css?family=Open+Sans);
.btn { display: inline-block; *display: inline; *zoom: 1; padding: 4px 10px 4px; margin-bottom: 0; font-size: 13px; line-height: 18px; color: #333333; text-align: center;text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75); vertical-align: middle; background-color: #f5f5f5; background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6); background-image: -ms-linear-gradient(top, #ffffff, #e6e6e6); background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6)); background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6); background-image: -o-linear-gradient(top, #ffffff, #e6e6e6); background-image: linear-gradient(top, #ffffff, #e6e6e6); background-repeat: repeat-x; filter: progid:dximagetransform.microsoft.gradient(startColorstr=#ffffff, endColorstr=#e6e6e6, GradientType=0); border-color: #e6e6e6 #e6e6e6 #e6e6e6; border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25); border: 1px solid #e6e6e6; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px; -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); cursor: pointer; *margin-left: .3em; }
.btn:hover, .btn:active, .btn.active, .btn.disabled, .btn[disabled] { background-color: #e6e6e6; }
.btn-large { padding: 9px 14px; font-size: 15px; line-height: normal; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px; }
.btn:hover { color: #333333; text-decoration: none; background-color: #e6e6e6; background-position: 0 -15px; -webkit-transition: background-position 0.1s linear; -moz-transition: background-position 0.1s linear; -ms-transition: background-position 0.1s linear; -o-transition: background-position 0.1s linear; transition: background-position 0.1s linear; }
.btn-primary, .btn-primary:hover { text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25); color: #ffffff; }
.btn-primary.active { color: rgba(255, 255, 255, 0.75); }
.btn-primary { background-color: #4a77d4; background-image: -moz-linear-gradient(top, #6eb6de, #4a77d4); background-image: -ms-linear-gradient(top, #6eb6de, #4a77d4); background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#6eb6de), to(#4a77d4)); background-image: -webkit-linear-gradient(top, #6eb6de, #4a77d4); background-image: -o-linear-gradient(top, #6eb6de, #4a77d4); background-image: linear-gradient(top, #6eb6de, #4a77d4); background-repeat: repeat-x; filter: progid:dximagetransform.microsoft.gradient(startColorstr=#6eb6de, endColorstr=#4a77d4, GradientType=0);  border: 1px solid #3762bc; text-shadow: 1px 1px 1px rgba(0,0,0,0.4); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.5); }
.btn-primary:hover, .btn-primary:active, .btn-primary.active, .btn-primary.disabled, .btn-primary[disabled] { filter: none; background-color: #4a77d4; }
.btn-block { width: 100%; display:block; }

* { -webkit-box-sizing:border-box; -moz-box-sizing:border-box; -ms-box-sizing:border-box; -o-box-sizing:border-box; box-sizing:border-box; }

html { width: 100%; height:100%; overflow:hidden; }

body { 
	width: 100%;
	height:100%;
	font-family: 'Open Sans', sans-serif;
	background: #092756;
	background: -moz-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%),-moz-linear-gradient(top,  rgba(57,173,219,.25) 0%, rgba(42,60,87,.4) 100%), -moz-linear-gradient(-45deg,  #670d10 0%, #092756 100%);
	background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -webkit-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -webkit-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
	background: -o-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -o-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -o-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
	background: -ms-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), -ms-linear-gradient(top,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), -ms-linear-gradient(-45deg,  #670d10 0%,#092756 100%);
	background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104,128,138,.4) 10%,rgba(138,114,76,0) 40%), linear-gradient(to bottom,  rgba(57,173,219,.25) 0%,rgba(42,60,87,.4) 100%), linear-gradient(135deg,  #670d10 0%,#092756 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#3E1D6D', endColorstr='#092756',GradientType=1 );
}
.login { 
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -150px 0 0 -150px;
	width:300px;
	height:300px;
}
.login h1 { color: #fff; text-shadow: 0 0 10px rgba(0,0,0,0.3); letter-spacing:1px; text-align:center; }

input { 
	width: 100%; 
	margin-bottom: 10px; 
	background: rgba(0,0,0,0.3);
	border: none;
	outline: none;
	padding: 10px;
	font-size: 13px;
	color: #fff;
	text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
	border: 1px solid rgba(0,0,0,0.3);
	border-radius: 4px;
	box-shadow: inset 0 -5px 45px rgba(100,100,100,0.2), 0 1px 1px rgba(255,255,255,0.2);
	-webkit-transition: box-shadow .5s ease;
	-moz-transition: box-shadow .5s ease;
	-o-transition: box-shadow .5s ease;
	-ms-transition: box-shadow .5s ease;
	transition: box-shadow .5s ease;
}
input:focus { box-shadow: inset 0 -5px 45px rgba(100,100,100,0.4), 0 1px 1px rgba(255,255,255,0.2); }

    </style>

    
        <script src="js/prefixfree.min.js"></script>
        <script>
    	
    	var error_string="";
    	var pattern = new RegExp(/[~`!#$%\^&*+=\-\[\]\\';,/{}|\\":<>\?]/);
    	function validate(vSignup){
    		//alert("Validate called");
    		
    		error_string="The SignUp cannot proceed due to following -:\n\n";
    		
    		var fn = validateFirstName();
    		var ln = validateLastName();
    		var an = validateAdhaarNumber();
    		
    		if(fn & ln & an){
    			return true;
    		}
    		else{
    			alert(error_string);
    			return false;
    		}
    	}
    	
    	function validateFirstName(){
    		var firstName = vSignup.firstName.value;
    		if(firstName.length< 2 | firstName.length >25 | !isNaN(firstName)| pattern.test(firstName)){
    			error_string+="First Name is not valid\n";
    			return false;
    		}
    		return true;
    	}
    	
    	function validateLastName(){
    		var lastName = vSignup.lastName.value;
    		if(lastName.length<2 | lastName.length >25 |!isNaN(lastName)|pattern.test(lastName)){
    			error_string+="Last Name is not valid\n";
    			return false;
    		}
    		return true;
    	}
    	
    	function validateAdhaarNumber(){
    		var adhaarNumber = vSignup.adhaarNumber.value;
    		if(adhaarNumber.length != 12 | isNaN(adhaarNumber)){
    			error_string+="Adhaar Number is not valid\n";
    			return false;
    		}
    		return true;
    	}
    </script>

    
  </head>

  <body link="white" alink="white" vlink="white">
  	<br>
	&nbsp; &nbsp; &nbsp; &nbsp;
  		<a href="/OnlineElectionProject/index.html"><i class="fa fa-home" style="font-size:60px;color:white;"></i></a>
    <div class="login">
		<h1>SignUp</h1>
   	    <form method="post" onSubmit="return validate(this)" action="VoterSignup.jsp" name="vSignup" >
    		<input type="text" name="firstName" placeholder="First Name" value="" required="required" />
  	        <input type="text" name="lastName" placeholder="Last Name" value=""  required="required" />
      	    <input type="email" name="email" placeholder="Email" value=""  required="required" />
       	    <input type="number" name="adhaarNumber" placeholder="Adhaar Card Number (Without space)" value=""  required="required" />
        	<button type="submit" name="voterSignup" value="voterSignup" class="btn btn-primary btn-block btn-large">Let me in.</button>
    	</form>
    	
    	<%  
    	   try{
    		   Class.forName("oracle.jdbc.driver.OracleDriver");
			   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "garima07");
			   
			   String submit= request.getParameter("voterSignup");
			   if(submit!=null && submit.equals("voterSignup")){
				   
				   //out.print("in submit");
				   
				   String firstName = request.getParameter("firstName");
				   //out.print(firstName);
				   String lastName = request.getParameter("lastName");
				   //out.print(lastName);
				   String email = request.getParameter("email") ;
				   //out.print(email);
				   String adhaarNumber =request.getParameter("adhaarNumber");
				   long adhaar_number = Long.parseLong(adhaarNumber);
				   //out.print(adhaar_number);
				   //out.print("got parameters");
				   
				   Statement statement = con.createStatement();
				   String sql = "select * from VOTERS";
				   ResultSet resultSet = statement.executeQuery(sql);
				   
				  // out.print("got resultset");
				   
				   int flag=0;
				   long userId=99999;
				   
				   while(resultSet.next()){
					   userId = resultSet.getLong(1);
					   if(email.equals(resultSet.getString(5))|| adhaar_number == resultSet.getLong(6) ){
						   out.print("<p><center><font color='white'>Already registered Email or Adhaar Card Number !!</font></center></p>");
						   flag=1;
						   break;
					   }
				   }
				   
				   if(flag==0){
					   
					  // out.print("flag remained 0");
				
					  userId=userId+1;	   
					   String password = firstName.substring(0,1)+email.substring(3,5)+lastName.substring(0,1)+adhaarNumber.substring(7,8)+firstName.substring(1,2)+lastName.substring(0,1)+
							   adhaarNumber.substring(3,4);
					  // out.print(password);
					  
					   sql = "insert into VOTERS values(id_seq.nextval,?,?,?,?,?)";
					   PreparedStatement preparedStatement = con.prepareStatement(sql);
					  
					   preparedStatement.setString(1,password);
					   preparedStatement.setString(2,firstName);
					   preparedStatement.setString(3,lastName);
					   preparedStatement.setString(4,email);
					   preparedStatement.setLong(5,adhaar_number);
					  
					   //out.print("Before Update");
					   int i =preparedStatement.executeUpdate();
					   out.print("<p><font color='white'><center>You have registered successfully!<br>Login Id &nbsp;:&nbsp;"+ userId +"<br>Password &nbsp;&nbsp;"+password+"<br><a href='VoterLogin.jsp'>Click Here to Login</center></font></p>");
					   
				   }
			   }
    	   }catch(Exception e){
    		   System.out.println("Exception in VoterSignup");
    		   e.printStackTrace();
    	   }
    	%>
	</div>
    
        <script src="js/index.js"></script>
  </body>
</html>

<%@ page import="java.lang.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.math.*" %>
