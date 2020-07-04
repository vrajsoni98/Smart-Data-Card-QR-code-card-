<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href='CSS.css' rel='stylesheet' type='text/css' >
<title>ADMIN LOG-IN</title>
</head>
<body>
<%
String n=(String)session.getAttribute("cid");
	HttpSession hs=request.getSession();//used to read existing session
	hs.setAttribute("cid",n);
%>
<form name="f1" action="forlogin" method="post">
<div class="box">
<h1>ADMIN LOG-IN</h1>
<input type="text" name="tus" class="email" placeholder="ID"> <br><br>
<input type="password" name="tpa" class="password" placeholder="Password"><br><br>

<input type="submit" name="sub" value="LOGIN" class="btn">
<input type="submit" name="sub" value="SIGNIN" id="btn2">

</div> 

</form>

</body>
</html>