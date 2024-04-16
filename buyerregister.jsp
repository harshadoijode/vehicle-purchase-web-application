<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  padding-right:10px;
   padding-left:10px;
}
input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  padding-right:10px;
   padding-left:10px;
}

input[type=submit] {
  width: 60%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}


input[type=button] {
  width: 60%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=submit]:hover {
  background-color: #45a049;
}


body {
	background-color: #FF6600;
	background-image: url(images/texture2.png);
}
.style1 {color: #000000}
.style3 {font-weight: bold}
.style8 {color: #99FFFF}
.style9 {color: #99FFFF; font-weight: bold; }

-->
</style>
</head>

<body>
<%@ include file="hometabs.html"  %>
<%@ include file="db.jsp"  %>
<br />
<br />
<br />
<br />
<br />

<p align="center" class="style1"><strong>Buyer Registration Form</strong></p>

<form id="form1" name="form1" method="post" action="">
  <table bgcolor="#311432" width="317" height="272" border="0" align="center">
    <tr>
      <td><div align="right"><span class="style9">Name : </span></div></td>
      <td><div align="left"><span class="style3">
        <input type="text" name="s1" />
      </span></div></td>
    </tr>
    <tr>
      <td><div align="right"><span class="style9">phone : </span></div></td>
      <td><div align="left"><span class="style3">
        <input type="text" name="s2" />
      </span></div></td>
    </tr>
    <tr>
      <td><div align="right" class="style8"><span class="style3">email : </div>      </td>
      <td>
        
        <div align="left">
          <input type="text" name="s3" />
        </div></td>
    </tr>
    <tr>
      <td><p align="right" class="style9">password :</p></td>
      <td>        
        <div align="left">
          <input type="text" name="s4" />      
        </div></td>
    </tr>
    <tr>
      <td><div align="right"></div></td>
      <td>
        <div align="left">
          <input type="submit" name="Submit" value="Submit" />
          <input type="reset" name="Submit2" value="Reset" />
</div></td>
    </tr>
  </table>
</form>


<% 
if(request.getParameter("Submit")!=null){
try{
int x=stmt.executeUpdate("insert into buyer  value('"+request.getParameter("s1")+"','"+request.getParameter("s2")+"','"+request.getParameter("s3")+"','"+request.getParameter("s4")+"')");
if(x!=0){
out.print("buyer Registered successfully");
}
}catch(Exception e){
out.print("already registered "+e);
}
}


%>
</body>

</html>
