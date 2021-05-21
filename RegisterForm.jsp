<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>REGISTRATION PAGE</title>
</head>


<style>
.srbutton{
  width: 200px;
  font-size:16px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;

}
input[type=text], textarea {
  -webkit-transition: all 0.30s ease-in-out;
  -moz-transition: all 0.30s ease-in-out;
  -ms-transition: all 0.30s ease-in-out;
  -o-transition: all 0.30s ease-in-out;
  outline: none;
  width:500px;
  height:20px;
  padding: 3px 0px 3px 3px;
  margin: 1px 1px 1px 0px;
  border: 1px solid #DDDDDD;
}
input[type=text]:focus, textarea:focus {
  box-shadow: 0 0 5px rgba(81, 203, 238, 1);
  padding: 3px 0px 3px 3px;
  margin: 1px 1px 1px 0px;
  border: 1px solid rgba(81, 203, 238, 1);
}

input[type=password], textarea {
  -webkit-transition: all 0.30s ease-in-out;
  -moz-transition: all 0.30s ease-in-out;
  -ms-transition: all 0.30s ease-in-out;
  -o-transition: all 0.30s ease-in-out;
  outline: none;
  width:500px;
  height:20px;
  padding: 3px 0px 3px 3px;
  margin: 1px 1px 1px 0px;
  border: 1px solid #DDDDDD;
}
input[type=password]:focus, textarea:focus {
  box-shadow: 0 0 5px rgba(81, 203, 238, 1);
  padding: 3px 0px 3px 3px;
  margin: 1px 1px 1px 0px;
  border: 1px solid rgba(81, 203, 238, 1);
  
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
}

input[type=reset] {
  background-color: #FF0000;
  color: white;
}
/* Style the container for inputs */
.container {
  text-align : center;
  background-color: #f1f1f1;
  padding: 20px;

}
::placeholder {
  color: var( --c ,red);
  font-style: italic
}

:-ms-input-placeholder { /* Internet Explorer 10-11 */
 color: var( --c , red);
 font-style: italic
}

::-ms-input-placeholder { /* Microsoft Edge */
 color: var( --c , red);
 font-style: italic
}

/* The message box is shown when the user clicks on the password field */
#message {
  display:none;
  width:350px;
  height:270px;
  top: 20px;
  left : 350px;
  background: #f1f1f1;
  color: #000;
  position: relative;
  padding: 20px;
  margin-top: 10px;
  
}

#message p {
  padding: 10px 35px;
  font-size: 18px;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
  color: green;
}

.valid:before {
  position: relative;
  left: -35px;
  content :"\2714";
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
  color: red;
}

.invalid:before {
  position: relative;
  left: -35px;
  content: "\2718";
}
.colourfield{
background-color: #4CAF50;
width:150px;
color: white;
}

.table{
width: 10000; 
align : center;
border-collapse: collapse;
border-style:solid ;
border-color: black;
margin-left: auto ;
margin-right: auto; "

}

.button {
  background-color: #f1f1f1;
  padding: 20px;
}

.content {
  text-align: center
  
}
.center {
  
  margin-left:  auto;
  margin-right: auto;
  
}

</style>

<body>
<form name = "RegistrationForm" action = "<%= request.getContextPath() %>/reg" onsubmit="return ValidateForm()"  method = "post">
<div class = "container">
<h2 align = "center" ><i>REGISTRATION FORM</i></h2>
<br></br>

<h3 align = "center"><i>ENTER YOUR DETAILS HERE</i>

</h3>

			 <table border = "1" class = "table">
				<tr>
					<td class = "colourfield" >First Name</td>
					<td><input type="text" placeholder = "Enter Your First Name" id="first_name" name="first_name" 
					required oninvalid = "this.setCustomValidity('Please Enter Your First Name')"
					oninput = "setCustomValidity('')"/></td>
				</tr>
				
				<tr>
					<td class = "colourfield" >Last Name</td>
					<td><input type="text" placeholder = "Enter Your Last Name" id = "last_name" name="last_name" 
					required oninvalid = "this.setCustomValidity('Please Enter Your Last Name')" 
					oninput = "setCustomValidity('')"/></td>
				</tr>
				
				<tr>
					<td class = "colourfield" >Roll No</td>
					<td><input type="text"  placeholder = "Enter Your Roll No"  id = "rollno" name="rollno" 
					required oninvalid = "this.setCustomValidity('Please Enter Your Roll No')"
					oninput = "setCustomValidity('')" /></td>
				</tr>
				
				<tr>
					<td class = "colourfield" >DOB</td>
					<td><input type="text"  placeholder = "Enter Your Date Of Birth (dd-MM-yyyy)" id = "dob" name="dob" 
					required oninvalid = "this.setCustomValidity('Please Enter Your Date Of Birth')" 
					oninput = "setCustomValidity('')"/>
				</td>
				</tr>
				

					
				<tr>
					<td class = "colourfield" >UserName</td>
					<td><input type="text" placeholder = "Enter Your Username" placeholder = sample@gmail.com id = "uname" name="uname" 
					 required oninvalid = "this.setCustomValidity('Please Enter Your Username')" 
					 oninput = "setCustomValidity('')"/></td>
				</tr>
				
				<tr>
					<td class = "colourfield" >Password</td>
					<td><input type="password" placeholder = "Use 8 or more characters with a mix of letters, numbers &amp; symbols" class = "field" id = "pwd" name="pwd" 
					required oninvalid = "this.setCustomValidity('Please Enter Your Password')" 
					oninput = "setCustomValidity('')"/></td>
				</tr>
				
				<tr>
					<td class = "colourfield" >Confirm Password</td>
					<td><input type="password" placeholder = "Use 8 or more characters with a mix of letters, numbers &amp; symbols" class = "field" id = "cpwd" name="cpwd" 
					required oninvalid = "this.setCustomValidity('Please Enter Your Confirm Password')"
					oninput = "setCustomValidity('')" /></td>
				</tr>

     		</table>
     		<br></br>
     		
     		
     		
			<input class = "srbutton" type="submit"  id = "sub" name = "sub" value="Submit" />
			<input class = "srbutton" type="reset"  >
			</div>
			
			
		</form>

<div id="message">
  <h3>Password must contain the following:</h3>
  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
  <p id="number" class="invalid">Atleast one <b>number</b></p>
  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
</div>

<script>
var myInput = document.getElementById("pwd");
var myInput2 = document.getElementById("cpwd");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");



// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
	
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
  
  //password and confirm password check
  var password = document.getElementById("pwd");
  var confirm_password = document.getElementById("cpwd");
 
  function validatePassword(){
	   if(password.value != confirm_password.value) {
	 confirm_password.setCustomValidity("Passwords Don't Match");
	   } else {
	 confirm_password.setCustomValidity('');
	   }
	 }
	 
	 password.onchange = validatePassword;
	 confirm_password.onkeyup = validatePassword;
}
</script>
</body>
</html>