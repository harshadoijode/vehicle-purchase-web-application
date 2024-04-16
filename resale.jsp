<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-color: #4D8CCE;
}
.style1 {
	font-size: 16px;
	font-weight: bold;
}
-->
</style>


</head>

<body>
<%@ include file="customertabs.html" %>
<%@ include file="db.jsp" %>
<div align="center">resale vehicles  
</div>


<div class="row">
<% 

rst=stmt.executeQuery("select vehiclename,price,image,model,description,cphone from preowned ");
while(rst.next()){


 %>
  <div class="column">
    <div class="card" align="center"><center>
      <img  src="uploads/<%= rst.getString(3) %>" alt="Jane" width="300" height="300" style="width:50%"></center>
      <div class="container" align="center">
        <h3><%= rst.getString(1) %></h3>
		<h3><%= rst.getString(5) %></h3>
       
         <p>Model:<%= rst.getString(4) %></p>
        <h3>Rs.<%= rst.getString(2) %></h3>
        <p>
		<button class="button">To buy this vehicle Call<strong>:</strong>    <%= rst.getString(6) %></button></a>
		</p>
      </div>
    </div>
  </div>
  
  <% } 
 
  %>
  
  
</div>


