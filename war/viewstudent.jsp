<%@page import="com.google.appengine.api.datastore.FetchOptions"%>
<%@page import="com.google.appengine.api.datastore.Entity"%>
<%@page import="java.util.List"%>
<%@page import="com.google.appengine.api.datastore.Query"%>
<%@page import="com.google.appengine.api.datastore.DatastoreServiceFactory"%>
<%@page import="com.google.appengine.api.datastore.DatastoreService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
<meta content="en-us" http-equiv="Content-Language" />
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<% 

DatastoreService dataStore = DatastoreServiceFactory.getDatastoreService();
String studentId = request.getParameter("schoolEmail");
// Key studentKey = KeyFactory.createKey("EduTech", studentId);

Query query = new Query("Student").addSort("firstName");
List <Entity> student = dataStore.prepare(query).asList(FetchOptions.Builder.withLimit(5));
    %>
   
<title>Student</title>
<style type="text/css">
.auto-style1 {
	text-align: center;
	font-size: xx-large;
	background-color: #5A5C5D;
	margin-top: 15px;
}
.auto-style2 {
	background-color: #5A5C5D;
	color: #FFFFFF;
	font-family: "Agency FB";
}
.auto-style3 {
	background-color: #5A5C5D;
	color: #FFFFFF;
	font-family: "Agency FB";
	font-size: large;
	text-align: center;
}

.auto-style10{
	font-family: "Agency FB";
	font-size: large;
	text-align: center;
	color: #F59D3E;
}
.auto-style4 {
	font-family: "Agency FB";
	font-size: large;
}
.auto-style5 {
	text-align: center;
	background-color: #DDEAF1;
}
</style>

<script type="text/javascript">

function addStudent(add){
var div = document.getElementById('add');
add.style.visibility = visible;
}

</script>
</head>

<body>

<p class="auto-style1" style="height: 57px"><strong><span class="auto-style2">
Student Management Board &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong></p>
<table style="width: 100%">
	<tr>
		<td class="auto-style3" style="width: 216px"><strong>First name </strong></td>
		<td class="auto-style3" style="width: 232px"><strong>Last Name </strong>
		</td>
		<td class="auto-style3" style="width: 237px"><strong>School email</strong></td>
		<td class="auto-style3" style="width: 254px"><strong>Level</strong></td>
	</tr>
	<% for(Entity stud : student){ %>
                        <tr>
                        	<td width="216px" class="auto-style10"><%= stud.getProperty("lastName") %></td>
                            <td width="232px" class="auto-style10"><%= stud.getProperty("firstName")%></td>
                            <td width="254px" class="auto-style10"><%= stud.getProperty("schoolId") %></td>
                        </tr>
                    	<% } %>
</table>
		<img alt="" height="228" src="image.jpg" width="406" /></p>


	<fieldset name="Group1" style="width: 300px">
	<legend class="auto-style4"><strong>Student Operation</strong></legend>
	
	<button name="Abutton1" style="width: 172px" onclick= addStudent()>New student</button><br />
	
	<button name="Abutton2" style="width: 172px" onclick="alert('under construction')">Remove student </button><br />
	<button name="Abutton3" style="width: 172px" onclick="alert('under construction')">Update student </button></fieldset>
<form method="get" action="/insert">
<fieldset>
<legend class="auto-style3"><strong> Test add New student</strong></legend>
<div  id="add">
<table style="width: 100%">
	<tr>
		<td class="auto-style3" style="width: 216px"><strong>First name </strong></td>
		<td class="auto-style3" style="width: 232px"><strong>Last Name </strong>
		</td>
		<td class="auto-style3" style="width: 237px"><strong>School email</strong></td>
		<td class="auto-style3" style="width: 254px"><strong>Level</strong></td>
	</tr>
	<tr>
		<td style="width: 216px" class="auto-style5">
			<input name="firstNameStudent" style="width: 154px" type="text" />
		</td>
		<td style="width: 232px" class="auto-style5">
			<input name="lastNameStudent" type="text" />
		</td>
		<td style="width: 237px" class="auto-style5">
		<input name="schoolEmail" type="text" /></td>
		<td style="width: 254px" class="auto-style5">
		<input name="Text4" type="text" /></td>
	</tr>
	<tr>
		<td style="height: 10px;" class="auto-style5" colspan="4">
			<button name="Abutton4" style="width: 154px">Done</button>
		</td>
	</tr>
</table>

</div>
</fieldset>
</form><br><br><br><br><br>
Please fill all fields for this test!!!!!!!!!!!!!!!
</body>

</html>
