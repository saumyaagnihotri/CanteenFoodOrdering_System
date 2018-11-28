<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
//response.sendRedirect("WelcomeCustomer.jsp");
String name = request.getParameter("name");
String passwordEntered = request.getParameter("password");
PreparedStatement ps;
ResultSet rs;
Connection c;
Statement s;
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sam","sam");
	s = c.createStatement();
	if(name.equals("admin")){
		ps = c.prepareStatement("select key from admin where name = ?");
		ps.setString(1,name);
		rs = ps.executeQuery();
		 if(rs.next() && passwordEntered!=null && name!=null && passwordEntered!="" && name!= "" ) {
		       String passwordActual = rs.getString(1);
		       if(passwordEntered.equals(passwordActual))
		       {
		    	   response.sendRedirect("WelcomeAdmin.jsp");
		    	   session.setAttribute("user", name);
		       }
		       else
		       { %>
		    	   <script>alert("ACCESS DENIED!!!");</script>
		    	   
		    	   <% RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		    	   rd.include(request,response);
		    	   
		       }
		    }
		       else
		       { %>
		    	   <script>alert("Please enter correct username and password!");</script>
		    	   
		    	   <% RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		    	   rd.include(request,response);
		    	   
		       }
		    rs.close();
		    ps.close();
		    c.close();
			
			}
	else{
	ps=c.prepareStatement("select password from customers where name = ?");
	ps.setString(1,name);
	rs=ps.executeQuery();
    if(rs.next() && passwordEntered!=null && name!=null && passwordEntered!="" && name!= "" ) {
       String passwordActual = rs.getString(1);
       if(passwordEntered.equals(passwordActual))
       {
    	   response.sendRedirect("WelcomeCustomer.jsp");
    	   session.setAttribute("user", name);
       }
       else
       { %>
    	   <script>alert("Please enter correct username and password!");</script>
    	   
    	   <% RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
    	   rd.include(request,response);
    	   
       }
    }
       else
       { %>
    	   <script>alert("Please enter correct username and password!");</script>
    	   
    	   <% RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
    	   rd.include(request,response);
    	   
       }
    rs.close();
    ps.close();
    c.close();
	
	}
    

    
}catch(Exception e){e.printStackTrace();}

%>
</body>
</html>