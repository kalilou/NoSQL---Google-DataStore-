<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.auto-style1 {
	text-align: center;
	font-size: xx-large;
	background-color: #00C9FF;
}
.auto-style2 {
	background-color: #00C9FF;
}
.auto-style4 {
	font-weight: bold;
	text-align: center;
}
.auto-style7 {
	font-size: large;
	color: #00C9FF;
	font-family: "Agency FB";
}
	
.auto-style10 {
	color: #F59D3E;
	font-weight: bold;
	font-family: "Agency FB";
	text-align: center;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script type="text/javascript"><
function validateForm()
{
var x=document.forms["studentForm"]["firstNameStudent"].value;
var y=document.forms["studentForm"]["lastNameStudent"].value;
var z=document.forms["studentForm"]["schoolEmail"].value;


if (x==null || x=="" || y== null || y=="" || z== null || z=="")
  {
  alert("Please fill in all fields");
  return false;
  }
}
</script>
</head>
<body>
<p class="auto-style1" style="height: 57px"><strong><span class="auto-style2"> EduTech AB</span></strong></p>

<table align="center">
<tr>
<td>
<form action="/insert" method="get" name="studentForm" onsubmit=" return validateForm()">
<div align="right">
<img alt=""  align="middle" src="student.jpg" style="width: 100px"><br>
<input type="text" name="firstNameStudent"> <br>
<input type="text" name="lastNameStudent"><br>
<input type="text" name="schoolEmail"><br>
<input type="submit" value="Done">
</div>
</form>
</td>
<td>
<form action="/insertteacher" method="get" name="teacherForm">
<div align="right">
<img alt=""  align="middle" src="teacher.png" style="width: 100px"><br>
<input type="text" name="firstNameTeacher"> <br>
<input type="text" name="lastNameTeacher"><br>
<input type="text" name="schoolEmailTeacher"><br>
<input type="submit" value="Done">
</div>
</form>
</td>
</tr>
<tr>
<td>
<form action="/insertCourse" method="get" name="teacherCourse">
<div align="right">
<table>
<tr><td></td>
<td> 
<img alt=""  align="left" src="course.png" style="width: 100px">
</td>
</tr>
<tr>
<td>Course name</td>
<td>
<input type="text" name="courseName"> 
</td>
</tr>
<tr>
<td>Course status</td>
<td>
<input type="text" name=courseStatus> 
</td>
</tr>
<tr>
<td>Course syllabus</td>
<td><textarea rows="5" cols="50" name=courseSyllabus> </textarea> </td>
</tr>
<tr>
<td>
<input align="left" type="submit" value="add Course">
</td>
</tr>
</table>
</div>
</form>
</td>
</tr>
</table>
</body>
</html>