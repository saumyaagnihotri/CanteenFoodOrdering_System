<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
@font-face{
  font-family: california;
  font-weight: normal;
}
body{
  padding: 0;
  margin: 0;
  font-family: sans-serif;
}
.header{
  display: flex;
  flex-flow: column nowrap;
  justify-content: center;
  align-items: center;
  padding: 15px 0 15px 0;
  text-align: center;
  background: linear-gradient(to      bottom,#1e5799,#326B9B);
  box-shadow: 0 5px 5px 0 rgba(0,0,0,.25);
}
.header>h1{
  color: white;
}
.nav{
  width: auto;
}
.nav ul{
  padding: 0px;
  height: 50px;
  box-sizing: border-box;
  list-style: none;
  background-color: #326B9B;
  display: flex;
  flex-flow: row wrap;
  justify-content: center;
  align-items: center;
  box-shadow: 0 0 10px 0 rgba(0,0,0,.5);
  border-radius: 10px;
}
.nav a{
  outline: none;
  margin: 0 25px;
  margin-bottom: 0;
  padding: 10px 12px;
  width: auto;
  text-decoration: none;
  color: white;
}
.nav a:hover{
  background-color: #204E7B;
}
.nav li{
  flex: auto auto auto;
  padding: 0px;
  margin: 0px 0px;
  height: auto;
}
.nav li:first-child>a{
  border-bottom: 1px solid #FFD447;
}
</style>
</head>
<body>




<header class="header">
  <h1>Canteen Food Ordering System</h1>
  <nav class="nav">
    <ul>
      <li>
        <a href = "Order.jsp">Order</a> 
      </li>
      <li>
        <a href = "MyOrders.jsp">My Orders</a>
      </li>
      <li>
        <a href = "FeedBack.jsp">Feedback</a>
      </li>
      <li>
        <a href = "Logout.jsp">Logout</a>
      </li>
      
    </ul>
  </nav>
</header>

</body>
</html>