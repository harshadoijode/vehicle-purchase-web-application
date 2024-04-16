<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage=""  %><%@ include file="hometabs.html" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>FASTER - Logistics Company Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
<br>
<br>
<br>
<br>

    <!-- Topbar Start -->
  


    <!-- About Start -->
   <table width="1185" height="258" border="0" align="center">
<tr>
  <td width="596"><div align="justify">
   
      <p>&nbsp;</p>
      <p style="padding-left:10px; padding-right:10px;">This application describes the complete process of selling a vehicles to a customer from the dealers showroom. Before selling, the vehicle belongs to the fixed asset of the dealers showroom posting the vehicle from a fixed asset to a current asset. While executing the process, the dealer can manually maintain the vehicles business transaction type, which means, the vehicles can be set as a new or used vehicle to sell to the customer. </p>
   
  </div></td>
  <td width="490">

	  <div class="w3-content w3-section" style="max-width:500px"  >   
        <img class="mySlides w3-animate-top" src="images/1.jpg" style="width:100%">
        <img class="mySlides w3-animate-bottom" src="images/2.jpg" style="width:100%">
    <img class="mySlides w3-animate-top" src="images/3.jpg" style="width:100%">	  </div></td>
</tr>
</table>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2500);    
}
</script>

  
</body>

</html>