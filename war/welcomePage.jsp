  <%@page import="com.google.appengine.api.datastore.FetchOptions"%>
<%@page import="java.util.List"%>
<%@page import="com.google.appengine.api.datastore.Entity"%>
<%@page import="com.google.appengine.api.datastore.DatastoreServiceFactory"%>
<%@page import="com.google.appengine.api.datastore.DatastoreService"%>
<%@ page import="com.google.appengine.api.datastore.Key" %>
<%@page import="utilities.PMF"%>
<%@page import="schooloperation.client.Student"%>
<%@page import="com.google.appengine.api.datastore.KeyFactory"%>
<%@page import="com.google.appengine.api.datastore.Cursor"%>
<%@page import="org.datanucleus.store.appengine.query.JDOCursorHelper" %>
<%@page import = "com.google.appengine.api.datastore.Query" %>
<%@page import="javax.jdo.PersistenceManager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="sv" http-equiv="Content-Language" />
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Education</title>
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

<% 

//Open Datastore connection 
DatastoreService dataStore = DatastoreServiceFactory.getDatastoreService();
String studentId = request.getParameter("schoolEmail");
// Key studentKey = KeyFactory.createKey("EduTech", studentId);

Query query = new Query("Student").addSort("firstName");
List <Entity> student = dataStore.prepare(query).asList(FetchOptions.Builder.withLimit(5));
    %>
</head>
<body>
<p class="auto-style1" style="height: 57px"><strong><span class="auto-style2">
Education Operation Systems Management</span></strong></p>
<div align="right">
<form method="post">
	<fieldset name="Group1" style="width: 597px">
	<legend class="auto-style7"><strong>Teacher</strong></legend>
	
	 <table align="center" border="0" cellspacing="0" cellpadding="0">
                        <tr>

                            <td width="40px" class="auto-style4">N°</td>
                             <td width="120px" class="auto-style4">First Name</td>
                            <td width="120px" class="auto-style4">Last Name</td>
                            <td width="120px" class="auto-style4">School Id</td>
                             <td width="120px" class="auto-style4">Phone</td>
                       
                        </tr>
                       
                        <tr>
                        
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td bgcolor="white" align="center"></td>
                        </tr>
                    
          </table>
	</fieldset></form>

<form method="post">
	<fieldset name="Group1" style="width: 592px">
	<legend class="auto-style7"><strong>Student</strong></legend>
	 <table align="center" border="0" cellspacing="0" cellpadding="0">
                        <tr>

                            <td width="120px" class="auto-style4">First Name</td>
                            <td width="120px" class="auto-style4">Last Name</td>
                            <td width="120px" class="auto-style4">School Id</td>
                       
                        </tr>
                       <% for(Entity stud : student){ %>
                        <tr>
                        	<td width="120px" class="auto-style10"><%= stud.getProperty("lastName") %></td>
                            <td width="120px" class="auto-style10"><%= stud.getProperty("firstName")%></td>
                            <td width="120px" class="auto-style10"><%= stud.getProperty("schoolId") %></td>
                        </tr>
                    	<% } %>
          </table>

	</fieldset></form>
</div>
<form method="post">
	<fieldset name="Group1" style="width: 591px">
	<legend class="auto-style7"><strong>Course</strong></legend>
	 <table align="center" border="0" cellspacing="0" cellpadding="0">
                        <tr>

                            <td width="40px" class="auto-style4">N°</td>
                             <td width="120px" class="auto-style4">First Name</td>
                            <td width="120px" class="auto-style4">Last Name</td>
                            <td width="120px" class="auto-style4">School Id</td>
                             <td width="120px" class="auto-style4">Phone</td>
                       
                        </tr>
                       
                        <tr>
                        
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td bgcolor="white" align="center"></td>
                        </tr>
                    
          </table>

	</fieldset></form>
<form method="post">
	<fieldset name="Group1" style="width: 587px">
	<legend class="auto-style7"><strong>Document</strong></legend>
	 <table align="center" border="0" cellspacing="0" cellpadding="0">
                        <tr>

                            <td width="40px" class="auto-style4">N°</td>
                             <td width="120px" class="auto-style4">First Name</td>
                            <td width="120px" class="auto-style4">Last Name</td>
                            <td width="120px" class="auto-style4">School Id</td>
                             <td width="120px" class="auto-style4">Phone</td>
                       
                        </tr>
                       
                        <tr>
                        
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td bgcolor="white" align="center"></td>
                        </tr>
                    
          </table>

	</fieldset></form>
<fieldset style="width: 200px">
<legend class="auto-style7"> <strong>Operation</strong></legend>
<img alt="" src="admin.png"> <br>
<form action="/newstudent">
<input type="submit" value=" New Student">
</form>
<form action="/newTeacher">
<input type="submit" value=" New Teacher">
</form>
<form action="/newcourse">
<input type="submit" value=" New Course">
</form>
<form action="/newdocument">
<input type="submit" value=" New Document">
</form>
<form action="forum">
<input type="submit" value=" Manage Forum">
</form>
<img alt="" src="admin.png">
</fieldset>
<br><br>
<p class="auto-style1" style="height: 57px"><strong><span class="auto-style2"> EduTech AB</span></strong></p>
</body>

</html>
