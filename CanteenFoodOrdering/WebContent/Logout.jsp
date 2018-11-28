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
<% 

ArrayList<String> list = (ArrayList<String>) session.getAttribute("itemList");
if(list!=null)
{
if(list.isEmpty() || (list!=null))
	session.invalidate(); 
else{
list.clear();
session.invalidate(); }
}
else
	session.invalidate();



%>
<h4 align = "center">Successfully Logged out!</h4>
<% 
RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
rd.include(request,response);

%>

</body>
</html>