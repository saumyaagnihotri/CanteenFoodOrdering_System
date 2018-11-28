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
<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100);

body {
 
  font-family: "Roboto", helvetica, arial, sans-serif;
  font-size: 16px;
  font-weight: 400;
  text-rendering: optimizeLegibility;
}

div.table-title {
   display: block;
  margin: auto;
  max-width: 600px;
  padding:5px;
  width: 100%;
}

.table-title h3 {
   color: #fafafa;
   font-size: 30px;
   font-weight: 400;
   font-style:normal;
   font-family: "Roboto", helvetica, arial, sans-serif;
   text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
   text-transform:uppercase;
}


/*** Table Styles **/

.table-fill {
  background: white;
  border-radius:3px;
  border-collapse: collapse;
  height: 320px;
  margin: auto;
  max-width: 600px;
  padding:5px;
  width: 100%;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  animation: float 5s infinite;
}
 
th {
  color:#D5DDE5;;
  background:#1b1e24;
  border-bottom:4px solid #9ea7af;
  border-right: 1px solid #343a45;
  font-size:23px;
  font-weight: 100;
  padding:24px;
  text-align:left;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  vertical-align:middle;
}

th:first-child {
  border-top-left-radius:3px;
}
 
th:last-child {
  border-top-right-radius:3px;
  border-right:none;
}
  
tr {
  border-top: 1px solid #C1C3D1;
  border-bottom-: 1px solid #C1C3D1;
  color:#666B85;
  font-size:16px;
  font-weight:normal;
  text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
}
 
tr:hover td {
  background:#4E5066;
  color:#FFFFFF;
  border-top: 1px solid #22262e;
}
 
tr:first-child {
  border-top:none;
}

tr:last-child {
  border-bottom:none;
}
 
tr:nth-child(odd) td {
  background:#EBEBEB;
}
 
tr:nth-child(odd):hover td {
  background:#4E5066;
}

tr:last-child td:first-child {
  border-bottom-left-radius:3px;
}
 
tr:last-child td:last-child {
  border-bottom-right-radius:3px;
}
 
td {
  background:#FFFFFF;
  padding:20px;
  text-align:left;
  vertical-align:middle;
  font-weight:300;
  font-size:18px;
  text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
  border-right: 1px solid #C1C3D1;
}

td:last-child {
  border-right: 0px;
}

th.text-left {
  text-align: left;
}

th.text-center {
  text-align: center;
}

th.text-right {
  text-align: right;
}

td.text-left {
  text-align: left;
}

td.text-center {
  text-align: center;
}

td.text-right {
  text-align: right;
}
body {
		height: 100%;
		background: url(https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260) center center fixed;
		background-size: cover;
}

.shade {
		overflow: auto;
		position: absolute;
		top: 0;
		left: 0;
		bottom: 0;
		right: 0;
		background-image: linear-gradient( 150deg, rgba(0, 0, 0, 0.65), transparent);
}
</style>
<body>
<div class="shade">
<%@include file="header.jsp" %>
<% 
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sam","sam");
	Statement s = c.createStatement();
	PreparedStatement ps=c.prepareStatement("select * from orders");
	
	ResultSet rs=ps.executeQuery();
	%>
	<table width = "100%" border = "2pt" class="table-fill">
	<tr><th class="text-left" >Food Name</th><th class="text-left">Food Price</th><th class="text-left">Place Order</th></tr>
	<%
	
	while(rs.next())
	{
	
		String i1 = rs.getString(1);
		String i2 =Integer.toString(rs.getInt(2)); 
		
		
		%>
		<tr align = "center">
		<td class="text-left"><%=i1%></td><td class="text-left">Rs. <%=i2%></td> 
		<td> 
		<form action = "addIt_qty_addr.jsp">
		<input type = "hidden" value = "<%=i1%>" name ="itemName">
		<input type = "hidden" value = "<%=i2%>" name ="itemPrice">
		<input type = "submit" value = "Order" name ="w">
		</form>
		</td>
		</tr>
		

		
	<%}%>
	</table>
	
	<%
	

	 rs.close();
	    ps.close();
	    c.close();
	}catch(Exception e){e.printStackTrace();}

	%>
	
	<div id="Text">
   <span></span>
   <span></span>
   <span></span>
</div>
<div id="">
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</div>
<div id="road">
   <span class="r1"></span>
   <span class="r1"></span>
   <span class="r1"></span>
   <span class="r1"></span>
   <span class="r1"></span>
   <span class="r1"></span>
   <span class="r1"></span>
   <span class="r1"></span>
   <span class="r1"></span>
   <span class="r1"></span>
   <span class="r1"></span>
   <span class="r1"></span>
   <span class="r1"></span>
   <span class="r1"></span>
</div>
<div id="scooter">
   <span class="wheels1">....</span>
   <span class="wheels2"></span>
   <div id="stop">
      <div class="Sfront"></div>
      <div class="hlight"></div>
      <div class="handle"></div>
      <div class="Sback">
         <div class="seat">
            <small class="seatholder"></small>
         </div>
            <li class="seatbar"></li>
            <li class="seatbar2"></li>
      </div>
   </div>
   <div id="Man">
      <div class="legl"></div>
      <div class="body1"></div>
      <div class="head"></div>
   </div>
   <div id="smoke">
  <span class="s0"></span>
  <span class="s1"></span>
  <span class="s2"></span>
  <span class="s3"></span>
  <span class="s4"></span>
  <span class="s5"></span>
  <span class="s6"></span>
  <span class="s7"></span>
  <span class="s8"></span>
  <span class="s9"></span>
</div>
   <dv id="Pizza">
      <li class="P1"></li>
      <li class="P2"></li>
   </div>
</div>
<style>
body{
  
   overflow-x:hidden;
}
#Text{
   margin:0 auto;
   font-family: Tahoma, Geneva, sans-serif;
   font-weight: bold;
   text-align: center;
}
#Text span{
   display:block;
}
#Text span:nth-child(1){
   font-size:4em;
   color:#F0F0EE;
   text-shadow:0px 5px 0px #959691, 0px 7px 0px #959691,0px 12px 0px #858383;
   line-height:0.85;
}
#Text span:nth-child(2){
   font-family:Pacifico;
   color:red;
   text-shadow:0px 2px 0px white;
   font-size:20px;
   margin-left:150px;
   margin-top:-25px;
   transform:rotate(-15deg);
}
#backgroundhotel{
   background-image:url('http://images.clipartpanda.com/hotel-clipart-hotel5.png');
   background-repeat:no-repeat;
   background-size:300px;
   height:300px;
   background-position:center;
}
#road{
   background-color:black;
   width: 100%;
   height:70px;
   perspective: 150px;
   position:absolute;
   transform:rotateX(45deg);
}
#road span{
   display:inline-block;
   transform:rotateX(45deg);
}
.r1{
   background-color:white;
   width:70px;
   height:10px;
   border:10px solid black;
   margin-top:24px;
   margin-left:2px;
   transform:rotateX(45deg);
}
#scooter{
   width:250px;
   height:150px;
   z-index:12;
   margin-top:-160px;
   float:right;
   animation-name:movescooter;
   animation-duration:12s;
   animation-iteration-count:infinite;
}
#stop{   
   position:absolute;
}
#scooter>.wheels1, .wheels2{
   background-color:gray;
   width:23px;
   height:23px;
   border-radius:50%;
   position:absolute;
   margin-top:150px;
   margin-left:1px;
   border:9px solid black;
   box-shadow:0 2px 4px gray;
   animation-name:rotatewheels;
   animation-duration:1s;
   animation-iteration-count:infinite;
}
.wheels2{
   margin-left:110px;
}
.Sback{
   background-color: #C70039 ;
   width:80px;
   height:40px;
   border-top-left-radius: 110px;
   border-top-right-radius: 110px;
   border-bottom-right-radius:20px;
   z-index:5;
   position:absolute;
   margin-top:130px;
   margin-left:83px;
   box-shadow:inset 0 10px 0 #900C3F;
}
.Sback:before{
   content:"";
   background-color:#C70039;
   width:47px;
   height:10px;
   position:absolute;
   margin-left:-46px;
   margin-top:30px;
   box-shadow:inset 0 5px 0 #900C3F;
}
.Sback:after{
   content:"";
   background-color:red;
   width:10px;
   height:20px;
   position:absolute;
   z-index:-3;
   margin-left:75px;
   margin-top:18px;
   box-shadow:0 0 10px red;
}
.seat{
   background-color:black;
   width:50px;
   height:15px;
   border-radius:10px 10px 10px 10px;
   margin-top:-8px;
   position:absolute;
   margin-left:4px;
   box-shadow:inset 0 3px 0 #363B42;
}
.seat::after{
   content:"";
   background-color:black;
   width:35px;
   height:15px;
   position:absolute;
   border-radius:10px 10px 0px 10px;
   margin-left:50px;
   box-shadow:inset 0 3px 0 #363B42;
}
.seatholder{
   background-color:white;
   width:4px;
   height:19px;
   position:absolute;
   margin-left:75px;
   z-index:0;
   margin-top:10px;
   transform:rotate(45deg);
}
li{
   display:block;
}
.seatbar, .seatbar2{
   width:40px;
   height:4px;
   position:absolute;
   background-color:#900C3F;
   margin-top:20px;
   margin-left:25px;
}
.seatbar2{
   margin-top:27px;
}
.Sfront{
   background-color:#C70039;
   width:8px;
   height:57px;
   position:absolute;
   margin-top:105px;
   margin-left:43px;
   transform:rotate(15deg);
   box-shadow:inset 4px 0 0 #900C3F;
}
.Sfront::before{
   content:"";
   width:15px;
   height:65px;
   position:absolute;
   background-color:#C70039;
   margin-left:-10px;
   border-top-left-radius:110px;
   border-bottom-left-radius:110px;
}
.Sfront::after{
   content:"";
   background-color: #C70039 ;
   width:40px;
   height:19px;
   border-top-left-radius: 110px;
   border-top-right-radius: 110px;
   border-bottom-right-radius:20px;
   position:absolute;
   margin-left:-37px;
   margin-top:50px;
   transform:rotate(-10deg);
   box-shadow:inset 0 10px 0 #900C3F;  
}
.hlight{
   background-color:#C70039;
   width:20px;
   height:20px;
   border-top-right-radius:110px;
   border-bottom-right-radius:110px;
   position:absolute;
   margin-left:38px;
   margin-top:90px;
   box-shadow:inset 4px 0 0 #900C3F;  
}
.hlight:before{
   content:"";
   width:10px;
   height:20px;
   position:absolute;
   border-top-left-radius:110px;
   border-bottom-left-radius:110px;
   background-color:yellow;
   margin-left:-6px;
   box-shadow:0 0 10px yellow;
}
.hlight::after{
   content:"";
   background-color:yellow;
   width:6px;
   height:10px;
   position:absolute;
   margin-left:-6px;
   margin-top:42px;
   transform:skewX(-15deg);
   box-shadow:0 0 10px yellow;
}
.handle{
   position: absolute;
   width: 20px;
   height:1px;
   border: solid 2px #000;
   border-color: black transparent transparent transparent;
   border-radius: 50%;
   transform: rotate(300deg);
   margin-left: 47px;
   margin-top: 82px
}
.handle::after{
   content:"";
   background-color:#C70039;
   width:15px;
   height:10px;
   position:absolute;
   border-top-left-radius: 110px;
   border-top-right-radius: 110px;
   border-bottom-right-radius:20px;
   margin-top:-1px;
   margin-left:10px;
   transform:rotate(-20deg);
   box-shadow:inset 0 10px 0 #900C3F;
}
.legl{
   background-color:brown;
   width:43px;
   height:12px;
   border-top-left-radius:5px;
   border-bottom-right-radius:10px;
   margin-left:72px;
   margin-top:113px;
   position:absolute;
   z-index:12;
}
.legl:after{
   content:"";
   background-color:brown;
   width:12px;
   height:50px;
   position:absolute;
   transform:rotate(20deg);
   margin-top:4px;
   margin-left:-10px;
   border-top-left:10px;
}
.legl::before{
   content:"";
   background-color:yellow;
   width:20px;
   height:8px;
   position:absolute;
   margin-top:39px;
   margin-left:-25px;
   z-index:20;
   border-top-left-radius:100%;
   border-top-right-radius:10px;
}
.body1{
   background-color:#F76233;
   width:23px;
   height:45px;
   position:absolute;
   border-top-left-radius:50px;
   border-top-right-radius:50px;
   margin-top:70px;
   margin-left:90px;
   transform:rotate(-5deg);
}
.body1::after{
   content:"";
   background-color:#900C3F;
   width:15px;
   height:12px;
   position:absolute;
   border-top-right-radius:50%;
   border-bottom-right-radius:50%;
   margin-top:8px;
   margin-left:5px;
   transform:rotate(-10deg);
}
.body1::before{
   content:"";
   background-color:#FFD374;
   width:58px;
   height:10px;
   position:absolute;
   margin-top:14px;
   margin-left:-40px;
   border-top-left-radius:10px;
   transform:rotate(-10deg);
}
.head{
   background-color:#FFD374;
   width:25px;
   height:30px;
   border-radius:50%;
   position:absolute;
   margin-top:40px;
   margin-left:85px;
}
.head::before{
   content:"";
   background-color:#FFD374;
   width:30px;
   height:32px;
   border-radius:50%;
   box-shadow:0 -8px 0 red;
   position:absolute;
   margin-left:-2px;
   margin-top:;
}
.head::after{
   content:"";
   width:10px;
   height:10px;
   border-radius:50%;
   position:absolute;
   background-color:black;
   margin-left:-37px;
   margin-top:55px;
}
#smoke {
	position: absolute;
	z-index: 3;
	width: 1px; 
   height: 160px;
	margin-left:240px;
   margin-top:80px;
   transform:rotate(90deg);
}

#smoke span { 
   display: block;
   position: absolute;
   bottom: -35px; left: 50%; margin-left:-20px;
   height: 0px; width: 0px;
   border: 35px solid #4b4b4b;
   border-radius: 35px;
   left: -14px; opacity: 0;
   transform: scale(0.2);
}
#Pizza{
   background-color:#EEC05E;
   position:absolute;
   width:41px;
   height:60px;
   margin-left:120px;
   margin-top:65px;
}
#Pizza::before{
   content:"Pizza";
   text-align:center;
   color:red;
   text-size:100px;
   font-family:Pacifico;
   text-shadow:0 2px 0 white;
   background-color:transparent;
   width:15px;
   height:15px;
   border-radius:50%;
   border:2px solid black;
   position:absolute;
   margin-top:10px;
   margin-left:2px;
   box-shadow: 0 4px 0 grey, 0 6px 0 white;
}
.P1, .P2{
   background-color:red;
   position:absolute;
   width:10px;
   height:20px;
   margin-top:-18px;
   transform:skewX(3deg) skewY(3deg);
}
.P2{
   background-color:green;
   margin-left:9px;
}
@keyframes smokeL {
   0%   { 
      transform: scale(0.2) translate(0, 0) 
   }
   10%  { 
      opacity: 1; 
      transform: scale(0.2) translate(0, -5px) 
   }
   100% { 
      opacity: 0; 
      transform: scale(1) translate(-20px, -130px) 
   }
}

@keyframes smokeR {
	0%   { 
      transform: scale(0.2) translate(0, 0) 
   }
	10%  { 
      opacity: 1; 
      transform: scale(0.2) translate(0, -5px) 
   }
	100% { 
      opacity: 0; 
      transform: scale(1) translate(20px, -130px) 
   }
}

#smoke .s0 { animation: smokeL 4s 0s infinite }
#smoke .s1 { animation: smokeR 4s 1s infinite }
#smoke .s2 { animation: smokeL 4s 2s infinite }
#smoke .s3 { animation: smokeR 4s 3s infinite }
#smoke .s4 { animation: smokeL 4s 4s infinite }
#smoke .s5 { animation: smokeR 2s 5s infinite }
#smoke .s6 { animation: smokeL 2s 6s infinite }
#smoke .s7 { animation: smokeR 2s 7s infinite }
#smoke .s8 { animation: smokeL 2s 8s infinite }
#smoke .s9 { animation: smokeR 2s 9s infinite }
@keyframes movescooter{
   from{
      transform:translateX(1500px);
   }
   30%{
      transform:translateX(-350px);
   }
   40%{
      transform:translateX(-350px);
   }
   80%{
      transform:translateX(-350px);
   }
   to{
      transform:translateX(-1300px);
   }
}
@keyframes rotatewheels{
   0%{
      transform:rotate(360deg);
   }
}
</style>

</div>

</body>
</html>


