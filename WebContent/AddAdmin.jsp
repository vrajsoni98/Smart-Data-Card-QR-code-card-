<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href='CSS.css' rel='stylesheet' type='text/css' >
<title>Insert title here</title>
</head>
<body>
<form name="f1" action="AddAdmin" method="post">
<div class="box">
<h1>ADMIN SIGN-UP</h1>
<input type="text" name="name" class="password" placeholder="Name"> <br><br>
<input type="text" name="age" class="password" placeholder="Age"> <br><br>
<input type="text" name="mobile" class="password" placeholder="Mobile"> <br><br>
<input type="text" name="aid" class="email" placeholder="Admin Id"><br><br>
<input type="password" name="apwd" class="password" placeholder="Password"><br><br>

<input type="submit" name="sub" value="SUBMIT" class="btn">

</div> 

</form>
</body>
</html>