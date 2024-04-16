<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<%@ include file="db.jsp" %>

<% 

try{
MultipartRequest m = new MultipartRequest(request, "C:\\Program Files (x86)\\Apache Software Foundation\\Tomcat 5.5\\webapps\\GFGC_Showrooms\\uploads");

String s1=m.getParameter("s1");
String s2=m.getParameter("s2");
String s3=m.getParameter("s2");
String s4=m.getOriginalFileName("s4");
String s5=m.getParameter("s5");



int x=stmt.executeUpdate("insert into preowned(vehiclename,price,model,image,description,cphone) values('"+s1 +"','"+s2 +"','"+s3 +"','"+s4 +"','"+s5+"','"+session.getAttribute("cphone")+"')");
if(x!=0){

%>
<script>

alert("successfully uploaded");

window.open("uploadvehicle.jsp","_self");
</script>
<%
}
}catch(Exception e){
out.print("this vehicle already exist"+e);

}
 %>




 
 
 
</body>
</html>
