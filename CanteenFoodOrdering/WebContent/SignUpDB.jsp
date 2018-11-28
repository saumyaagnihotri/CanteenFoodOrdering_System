<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
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
String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");
String contact = request.getParameter("contact");



try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sam","sam");
	Statement s = c.createStatement();
	PreparedStatement ps=c.prepareStatement("insert into customers values(?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,password);
	ps.setString(3,contact);
	ps.setString(4,email);
	
	String x = Integer.toString(ps.executeUpdate());
	System.out.println("+" +x);
		 if(x!=""){ %>
	<script>alert("Your account has been successfully created!");</script><%
}
    ps.close();
    c.close();
}catch(Exception e){
	
	%>
	<script type="text/javascript">
	alert("Account already exists!")
	</script>
	<%
	e.printStackTrace();}

RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
rd.include(request,response);

%>

</body>
</html>