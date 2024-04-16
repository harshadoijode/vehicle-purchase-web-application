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


<script>
function validateCat(){
var x=document.forms["form3"]["category"].value;

if(x==""){
alert("category name  cannot be blank");
return false;
}else{
return true;
}

}


function validateAdd(){
var x=document.forms["form2"]["productname"].value;
var y=document.forms["form2"]["productprice"].value;
var z=document.forms["form2"]["quantity"].value;
var a=document.forms["form2"]["desc"].value;

if(x==""){
alert("product name  cannot be blank");
return false;
}if(y==""){
alert("Product Price  cannot be blank");
return false;
}if(z==""){
alert("Quantity  cannot be blank");
return false;
}if(a==""){
alert("Description  cannot be blank");
return false;
}else{
return true;
}

}

</script>
</head>

<body>
<%@ include file="customertabs.html" %>
<%@ include file="db.jsp" %>
<div align="center">Add old Vehcile to sale  
</div>

<form  method="post" action="uploadvehiclecode.jsp" name="form2" id="form2" enctype="multipart/form-data">
  <table width="850" border="1" align="center">
    
    <tr>
      <td width="170"><div align="right">Enter  Vehicle Name </div></td>
      <td width="364"><input type="text" name="s1" /></td>
    </tr>
    <tr>
      <td><div align="right">Enter Vehicle Cost </div></td>
      <td><input type="text" name="s2" /></td>
    </tr>
	 <tr>
      <td><div align="right">Model of year</div></td>
      <td><input type="text" name="s3" /></td>
    </tr>
    <tr>
      <td><div align="right">Add Vehicle Image </div></td>
      <td><input type="file" name="s4" /></td>
    </tr>
    <tr>
      <td><div align="right">Description</div></td>
      <td><textarea name="s5" cols="50" rows="5" id="desc"></textarea></td>
    </tr>
   
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Add"  onclick="return validateAdd()"/>
        <input type="reset" name="Submit2" value="Reset" /></td>
    </tr>
  </table>
  <div align="center"></div>
</form>


 
</body>
</html>
