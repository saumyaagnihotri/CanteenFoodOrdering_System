<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,700);

body {
  background: #326B9B;
  font-family: 'Open Sans', sans-serif;
}  

.login {
  width: 400px;
  margin: 16px auto;
  font-size: 16px;
}

/* Reset top and bottom margins from certain elements */
.login-header,
.login p {
  margin-top: 0;
  margin-bottom: 0;
}

/* The triangle form is achieved by a CSS hack */
.login-triangle {
  width: 0;
  margin-right: auto;
  margin-left: auto;
  border: 12px solid transparent;
  border-bottom-color: #28d;
}

.login-header {
  background: #28d;
  padding: 20px;
  font-size: 1.4em;
  font-weight: normal;
  text-align: center;
  text-transform: uppercase;
  color: #fff;
}

.login-container {
  background: #ebebeb;
  padding: 12px;
}

/* Every row inside .login-container is defined with p tags */
.login p {
  padding: 12px;
}

.login input {
  box-sizing: border-box;
  display: block;
  width: 100%;
  border-width: 1px;
  border-style: solid;
  padding: 16px;
  outline: 0;
  font-family: inherit;
  font-size: 0.95em;
}

.login input[type="email"],
.login input[type="password"] {
  background: #fff;
  border-color: #bbb;
  color: #555;
}

/* Text fields' focus effect */
.login input[type="email"]:focus,
.login input[type="password"]:focus {
  border-color: #888;
}

.login input[type="submit"] {
  background: #28d;
  border-color: transparent;
  color: #fff;
  cursor: pointer;
}

.login input[type="submit"]:hover {
  background: #17c;
}

/* Buttons' focus effect */
.login input[type="submit"]:focus {
  border-color: #05a;
}</style>
</head>
<body>
<center><img src = "https://preview.ibb.co/dxyiQA/logo.gif">
</center>

<div class="login" >
  <div class="login-triangle"></div>
  
  <h2 class="login-header">Log in</h2>

  <form name = "myForm" class="login-container" action="LoginDB.jsp" onsubmit="return validateForm()">
    <p><input type="text" name = "name" placeholder="Name"></p>
    <p><input type="password" name = "password" placeholder="Password"></p>
    <p><input type="submit" value="Log in"></p>
  </form>
</div>
<script type="text/javascript">

function validateForm() {
    var name = document.forms["myForm"]["name"].value;
    var password = document.forms["myForm"]["password"].value;
    if (name == "") {
        alert("Name must be filled out!");
        return false;
    }
    else if (name == "") {
        alert("Password must be filled out!");
        return false;
    }
}


</script>


</body>
</html>