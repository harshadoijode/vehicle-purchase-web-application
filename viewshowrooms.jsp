<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <%@ include file="admintabs.html" %>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {font-weight: bold}
.style3 {font-weight: bold}


-->
</style>
</head>

<body>
  <%@ include file="db.jsp" %> 
  <br />
<br />

<p align="center"><strong>  Showroom details</strong></p>
  <table style="background:#666666; color:white; border-radius:10px;" width="auto" border="0" align="center">
  <tr bgcolor="#999999">
    <td ><strong>ID</strong></td>
    <td ><strong>showroom name </strong></td>
    <td ><strong>Address</strong></td>
    
    <td ><strong>phone </strong></td>
   
    <td ><strong>password</strong></td>
	  <td ><strong>Status</strong></td>
	
    <td >&nbsp;</td>
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from carowners");
  while(rst.next()){
  
   %>
  
  <form action="" method="get">
  <tr bgcolor="#330033">
    <td class="style3 style1"><input name="e1" type="text"  value="<%= rst.getString(1) %>" size="5" readonly="true"/></td>
    <td class="style3 style1"><input name="e2" type="text" value="<%= rst.getString(2) %>"/></td>
    <td class="style3 style1"><input name="e3" type="text" value="<%= rst.getString(3) %>"/></td>
    <td class="style3 style1"><input name="e4" type="text" value="<%= rst.getString(4) %>" size="10"/></td>
    <td class="style3 style1"><input name="e5" type="text"  value="<%= rst.getString(5) %>"/></td>
	 <td><input name="e7" type="text" value="<%= rst.getString(7) %>" size="10"/></td>
	 
	 <td><input name="Accept" type="submit" value="Accept" />
	 <input name="Reject" type="submit" value="Reject" />
   
    <input name="update" type="submit" id="update" value="Update" />
      <input type="submit" name="delete" value="Delete" /></td>
  </tr>
  </form>
  <% } %>
</table>


<% 
if(request.getParameter("update")!=null){
try{
int x=stmt.executeUpdate("update carowners set storename='"+request.getParameter("e2")+"',address='"+request.getParameter("e3")+"',storemobileno='"+request.getParameter("e4")+"',password='"+request.getParameter("e5")+"' where storeid='"+request.getParameter("e1")+"' ");
if(x!=0)
{
%>
<script>
alert("Date Updated");
window.open("viewshowrooms.jsp","_self");
</script>
<%
//response.sendRedirect("viewstores.jsp");


}

}catch(Exception e){
out.print("error"+e);
}
}




if(request.getParameter("delete")!=null){
try{
int x=stmt.executeUpdate("delete from carowners where storeid='"+request.getParameter("e1")+"'");
if(x!=0){
%>
<script>
alert("Date Deleted successfully");
window.open("viewshowrooms.jsp","_self");

</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}
 %>
 
 
 
<% 
if(request.getParameter("Accept")!=null){
try{
int x=stmt.executeUpdate("update carowners set status='Accept' where storeid='"+request.getParameter("e1")+"' ");
if(x!=0)
{
%>
<script>
alert("Date Updated");
window.open("viewshowrooms.jsp","_self");
</script>
<%
//response.sendRedirect("viewstores.jsp");


}

}catch(Exception e){
out.print("error"+e);
}
}
%>



<% 
if(request.getParameter("Reject")!=null){
try{
int x=stmt.executeUpdate("update carowners set status='Reject' where storeid='"+request.getParameter("e1")+"' ");
if(x!=0)
{
%>
<script>
alert("Date Updated");
window.open("viewshowrooms.jsp","_self");
</script>
<%
//response.sendRedirect("viewstores.jsp");


}

}catch(Exception e){
out.print("error"+e);
}
}
%>


</body>
</html>
