<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="hometabs.html" %>
<%@ include file="db.jsp" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login Page in HTML with CSS Code Example</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">


<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"><link rel="stylesheet" href="./style.css">

</head>
<body><br>
<br>


<!-- partial:index.partial.html -->
<div class="box-form">
	<div class="left">
		<div class="overlay">
		<h3>Login Form of Showroom owners</h3>
			<p><img src="images/3.jpg" width="644" height="483" /></p>
		
		</div>
	</div>
	
	
		<div class="right">
		<h3>Showroom Login</h3>
		  <form action="" method="post">
		<div class="inputs">
			<input type="text" name="username" placeholder="user name">
			<br>
			<input type="password"  name="password" placeholder="password">
		</div>
			
			
			
		
			
			<br>
		
			<button type="submit" name="Submit">Showroom Login</button>
			<a href="addshowroom.jsp">Register for new showroom</a>
			<br>
			<a href="fergott.jsp">fergot password</a>
			</form><br>

<br>

	<p>Showroom  Login page for the admin users of the System</p>
	</div>
	
</div>
<!-- partial -->
  <%
if(request.getParameter("Submit")!=null){
try
{

String un=request.getParameter("username");
String pw=request.getParameter("password");


rst=stmt.executeQuery("select * from showroom where email='"+un+"' and password='"+pw+"' and status='accept' ");
if(rst.next()){
session.setAttribute("user",un);
session.setAttribute("sname",rst.getString(2));

%>	
					<script>
					
						alert("login success");
						window.open("addProduct.jsp","_self");
					</script>	
			<%			

	}else{
				
				%>	
					<script>
					
						alert("login failured");
					</script>	
						
	<%
	
	}	

}catch(Exception e){
out.println(e);
}
}
%>
</body>
</html>
