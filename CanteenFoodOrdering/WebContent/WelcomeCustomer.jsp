<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


</head>
<body> 
<%@include file="header.jsp" %>
<%
String user = (String)session.getAttribute("user");
if(user!=null){ %>

<img class="mySlides" src="https://d3lvomkk855xw7.cloudfront.net/s3fs-public/tripleTreatUpdated.png">
<img class="mySlides" src="https://d3lvomkk855xw7.cloudfront.net/s3fs-public/KFC%204%204%201096x420.png">
<img class="mySlides" src="https://d3lvomkk855xw7.cloudfront.net/s3fs-public/02%20Website%20Landing%20Page%20Banner%201096x420.png">
<img class="mySlides" src="https://d3lvomkk855xw7.cloudfront.net/s3fs-public/Zinger%20Doubles%201096x420.png">

<script>
var slideIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none"; 
    }
    slideIndex++;
    if (slideIndex > x.length) {slideIndex = 1} 
    x[slideIndex-1].style.display = "block"; 
    setTimeout(carousel, 2000); // Change image every 2 seconds
}</script>
<center><h1><%= "Welcome " + user %></h1></center>
<%
}
else
{ %>
	<script>alert("Access denied!");</script>
<% }%>
<%@include file="footer.jsp" %>
</body>
</html>