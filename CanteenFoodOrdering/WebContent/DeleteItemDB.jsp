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
String iname = request.getParameter("nameItem");



try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sam","sam");
	Statement s = c.createStatement();
	PreparedStatement ps=c.prepareStatement("delete orders where item_name = ?");
	ps.setString(1,iname);
	ps.executeUpdate();   
    ps.close();
    c.close();
}catch(Exception e){
	
	
	%> <script>alert("Invalid item name!");</script><%
	e.printStackTrace();}
%>
<script>alert("Item has been deleted!");</script>
<%
RequestDispatcher rd = request.getRequestDispatcher("DeleteItem.jsp");
rd.include(request,response);

%>

</body>
</html>