<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EduTech</title>

</head>
<body>
<hr>
<p align="left"> EDUTECH ADMIN BORD</p>
<hr>
<br/><br/><br/><br/>
<form action="/login"  >
<table align="center" >
<tr> <td><input type="text" name="login"> </td> </tr>
<tr> <td><input type="password" name="password" > </td> </tr>
<tr> <td align="right"><input type="submit"  value="Sign in"> </td> </tr>
</table>
</form>
<%= request.getAttribute("error") %>
</body>
</html>