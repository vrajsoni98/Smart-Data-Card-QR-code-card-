<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href='CSS.css' rel='stylesheet' type='text/css' >
<title>Ali'S DATA</title>
</head>
<body style=" background:#ecf0f1">
<%
String check=(String)session.getAttribute("allowme");

if(check==null)
{
	HttpSession hs=request.getSession();//used to read existing session
	hs.setAttribute("cid","Ali");
	request.getRequestDispatcher("/index.jsp").forward(request,response);
}
else
{
%>
<table border="1" width="100%" style="border-color:black; border-style:solid;">
	<tr>
		<td rowspan="12"><img src="Ali/Aadhar.jpg" name="mypic" width="930px" height="635px"></td>
		<td width="30%"><input type="button" name="b1" value="Adhar Card" onclick="document.mypic.src='Ali/Aadhar.jpg'" class="btn1"></td>
	</tr>
	<tr>
		<td width="30%"><input type="button" name="b2" value="Pan Card" onclick="document.mypic.src='Ali/pan.jpg'" class="btn1"></td>
	</tr>
	<tr>
		<td width="30%"><input type="button" name="b3" value="Passport" onclick="document.mypic.src='Ali/pass.jpg'" class="btn1"></td>
	</tr>
	<tr>
		<td width="30%"><input type="button" name="b4" value="Driving License" onclick="document.mypic.src='Ali/driving.jpg'" class="btn1"></td>
	</tr>
	<tr>
		<td width="30%"><input type="button" name="b5" value="Election Card" onclick="document.mypic.src='Ali/election.jpg'" class="btn1"></td>
	</tr>
	<tr>
		<td width="30%"><input type="button" name="b6" value="Electric Bill" onclick="document.mypic.src='Ali/Electric.jpg'" class="btn1"></td>
	</tr>
	<tr>
		<td width="30%"><input type="button" name="b7" value="Property Papers" onclick="document.mypic.src='Ali/property.jpg'" class="btn1"></td>
	</tr>
	<tr>
		<td width="30%"><input type="button" name="b8" value="Resume" onclick="document.mypic.src='Ali/resume.jpg'" class="btn1"> </td>
	</tr>
	<tr>
		<td width="30%"><input type="button" name="b9" value="R.C. Book" onclick="document.mypic.src='Ali/rc.jpg'" class="btn1"></td>
	</tr>
	<tr>
		<td width="30%"><input type="button" name="b10" value="Insurance Papers" onclick="document.mypic.src='Ali/insurance.jpg'" class="btn1"></td>
	</tr>
	<tr>
		<td width="30%"><input type="button" name="b11" value="Ration Card" onclick="document.mypic.src='Ali/ration.jpg'" class="btn1"></td>
	</tr>
	<tr>
		<td width="30%"><input type="button" name="b12" value="Results" onclick="document.mypic.src='Ali/marksheet.jpg'" class="btn1"></td>
	</tr>
	</table>
	<%
	}
	%>
</body>
</html>