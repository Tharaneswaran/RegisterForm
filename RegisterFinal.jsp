<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Successfully Registered!!</title>
</head>
<style>
.container {
  text-align : center;
  background-color: #f1f1f1;
  padding: 20px;
}
.field{
width:500px;
height:20px;
}
.colourfield{
width:200px;
height:20px;
background-color: #4CAF50;
color: white;
}

.table{
width: 10000; 
border-collapse: collapse;
border-style:solid ;
border-color: black;
margin-left: auto ;
margin-right: auto; "

}


.button {
font-size:16px;
margin-left: auto ;
margin-right: auto;
background-color: #008CBA;
} /* Blue */

.content {
  text-align: center
  
}
.center {
  
  margin-left:  auto;
  margin-right: auto;
  
}

</style>
<body>
 <%
String rollno = request.getAttribute("rollno").toString();
String strfname = request.getAttribute("first_name").toString();
String strlname = request.getAttribute("last_name").toString();
String strDOB = request.getAttribute("dob").toString();
String strUname = request.getAttribute("uname").toString();
String strPwd = request.getAttribute("pwd").toString();
String strCPwd = request.getAttribute("cpwd").toString();
%>
 	<div class="container">
 		<h1>
 			<i>Details has been Successfully Registered!</i>
 		</h1>
 		<br></br>


 		<h3>
 			<b>Please verify the details</b>
 		</h3>


 		<table border="1" class="table">
 			<tr>
 				<td class="colourfield">
 					<b>Roll No</b>
 				</td>
 				<td class="field">
 					<%=rollno%>
 				</td>
 			</tr>

 			<tr>
 				<td class="colourfield">
 					<b>First Name</b>
 				</td>
 				<td class="field">
 					<%=strfname%>
 				</td>
 			</tr>

 			<tr>
 				<td class="colourfield">
 					<b>Last Name</b>
 				</td>
 				<td class="field">
 					<%=strlname%>
 				</td>
 			</tr>

 			<tr>
 				<td class="colourfield">
 					<b>DOB</b>
 				</td>
 				<td class="field">
 					<%=strDOB%>
 				</td>
 			</tr>

 			<tr>
 				<td class="colourfield">
 					<b>Username</b>
 				</td>
 				<td class="field">
 					<%=strUname%>
 				</td>
 			</tr>

 			<tr>
 				<td class="colourfield">
 					<b>Password</b>
 				</td>
 				<td class="field">
 					<%=strPwd%>
 				</td>
 			</tr>

 			<tr>
 				<td class="colourfield">
 					<b>Confirm Password</b>
 				</td>
 				<td class="field">
 					<%=strCPwd%>
 				</td>
 			</tr>

 		</table>

 	</div>

</body>
</html>