<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Voter Signup Form</title>
   
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
	top: 30%;
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
    		
    		var db = validatedob();
    		if(db==true){
    			var fn = validateFirstName();
        		var ln = validateLastName();
        		var an = validateAdhaarNumber();
        		var gd = validateGender();
        		if(fn & ln & an & gd){
        			return true;
        		}
        		else{
        			alert(error_string);
        			return false;
        		}
    		}
    		else{
    			alert("You must be 18 years old to be a voter.");
    			return false;
    		}
    	}
    	
    	function validateGender(){
    		var gender = vSignup.gender.value.toUpperCase();
    		if(gender=="MALE" || gender=="FEMALE" || gender=="OTHER")
    			return true;
    		error_string+="Gender can only contain male,female or other\n";
    		return false;
    	}
    	
    	function validateFirstName(){
    		var firstName = vSignup.firstName.value;
    		if(firstName.length< 2 || firstName.length >25 || !isNaN(firstName)|| pattern.test(firstName)){
    			error_string+="First Name is not valid\n";
    			return false;
    		}
    		return true;
    	}
    	
    	function validatedob(){
    		
    		var today = new Date();
    		var td = today.getDate();
    		var tm = today.getMonth()+1; //January is 0!
    		var tyyy = today.getFullYear(); 
    		
    		var bdate= vSignup.dob.value;
    		bdate = bdate.split('/');
    		var dd = parseInt(bdate[0]);  
    		var mm  = parseInt(bdate[1]);  
    		var yyyy = parseInt(bdate[2]);
    	
    		var age = tyyy - yyyy;
    		if(tm < mm-1)
    			age--;
    		if(((mm-1)==tm) && (td < dd))
    			age--;
 				//alert(age);
			if(age>=18)
				return true;
			return false;
    	}
    	
    	function validateLastName(){
    		var lastName = vSignup.lastName.value;
    		if(lastName.length<2 || lastName.length >25 ||!isNaN(lastName) || pattern.test(lastName)){
    			error_string+="Last Name is not valid\n";
    			return false;
    		}
    		return true;
    	}
    	
    	function validateAdhaarNumber(){
    		var adhaarNumber = vSignup.adhaarNumber.value;
    		if(adhaarNumber.length != 12 || isNaN(adhaarNumber)){
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
		<%
		  String result = request.getParameter("result");
				System.out.println(result);
				if(result!=null){
					if(result.equals("0")){
						out.println("<p><center><font color='white'>Already registered Email or Adhaar Card Number !!</font></center></p>");
					}
					else if(result.equals("1")){
						Long userId= (Long) session.getAttribute("userId");
						String password = (String) session.getAttribute("password");
						out.println("<p><font color='white'><center>You have registered successfully!<br>Login Id &nbsp;:&nbsp;"+ userId +"<br>Password &nbsp;&nbsp;"+password+"<br><a href='VoterLogin.jsp'>Click Here to Login</a></center></font></p>");
						session.removeAttribute("userId");
						session.removeAttribute("password");
					}
					else if(result.equals("-1")){
						out.println("<p><font color='white'><center>Cannot register right now!<br> Try again later!</center></font></p>");
					}
				}
		%>
		
   	    <form method="post" onSubmit="return validate(this)" action="../VoterServlet" name="vSignup" >
    		<input type="text" name="firstName" placeholder="First Name" value="" required="required" />
  	        <input type="text" name="lastName" placeholder="Last Name" value=""  required="required" />
  	        <input type="text" name="dob" placeholder="Date of birth (DD/MM/YYYY)" value="" required="required" />
  	        <input type="text" name="gender" placeholder="Gender (Male/Female/Other)" value="" required="required" /> 
      	    <input type="email" name="email" placeholder="Email" value=""  required="required" />
       	    <input type="number" name="adhaarNumber" placeholder="Adhaar Card Number (Without space)" value=""  required="required" />
        	<button type="submit" name="voterSignup" value="voterSignup" class="btn btn-primary btn-block btn-large">Register me</button>
    	</form>
	</div>
    
        <script src="js/index.js"></script>
  </body>
</html>

