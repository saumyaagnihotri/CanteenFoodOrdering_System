<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage = "CErrorPage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="header.jsp" %>
<%
ArrayList<String> list = (ArrayList<String>) session.getAttribute("itemList");
list.clear();%><br><br>
<center><img src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVbdnOqGKXUy_EBRa8ecBqMaLit6dTLvKBxFM08rtpzJIrY3BM">
</center>
</body>
</html>