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
<%! ArrayList<String> l = new ArrayList<>(); %>
<%		
	
	String checker3 = request.getParameter("Qty");
	String checker4 = request.getParameter("Address");
	String checker1 = (String)session.getAttribute("checker1");
	String checker2 = (String)session.getAttribute("checker2");
	
	
	
	l.add(checker1);
	l.add(checker2);
	l.add(checker3);
	l.add(checker4);
	

%>
<% if(session.getAttribute("user")!=null) {
	session.setAttribute("itemList", l);


%>

<%

//RequestDispatcher rd1 = request.getRequestDispatcher("Order.jsp");
//rd1.include(request,response);
response.sendRedirect("Order.jsp");

}
else
{ %>
	<script>alert("Please login first!");</script>
<% RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
rd.include(request,response);
}%>

	
</body>
</html>