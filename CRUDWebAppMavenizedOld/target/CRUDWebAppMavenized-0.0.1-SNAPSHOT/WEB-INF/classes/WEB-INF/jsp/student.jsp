<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" type="text/css" media="screen" href="/spring-jqgrid-integration/resources/css/jquery/ui-lightness/jquery-ui-1.8.6.custom.css" />
	<link rel="stylesheet" type="text/css" media="screen" href="/spring-jqgrid-integration/resources/css/jqgrid/ui.jqgrid.css" />

	<script type="text/javascript" src="/spring-jqgrid-integration/resources/js/jquery/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="/spring-jqgrid-integration/resources/js/jquery/jquery-ui-1.8.6.custom.min.js"></script> 
	<script type="text/javascript" src="/spring-jqgrid-integration/resources/js/jqgrid/grid.locale-en.js" ></script>
	<script type="text/javascript" src="/spring-jqgrid-integration/resources/js/jqgrid/jquery.jqGrid.min.js"></script>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	
<title>Simple Persitance Management</title>
</head>
<body>
<h1>Persitance Data</h1>
<form:form action="student.do" method="POST" commandName="student">
	<table>
		<tr>
			<td> ID</td>
			<td><form:input path="studentId" /></td>
		</tr>
		<tr>
			<td>First name</td>
			<td><form:input path="firstname" /></td>
		</tr>
		<tr>
			<td>Last name</td>
			<td><form:input path="lastname" /></td>
		</tr>
		<tr>
			<td>Year Level</td>
			<td><form:input path="yearLevel" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" name="action" value="Add" />
				<input type="submit" name="action" value="Edit" />
				<input type="submit" name="action" value="Delete" />
				<input type="submit" name="action" value="Search" />
			</td>
		</tr>
	</table>
</form:form>
<br>
<table border="1">
	<th>ID</th>
	<th>First name</th>
	<th>Last name</th>
	<th>Year level</th>
	<c:forEach items="${studentList}" var="student">
		<tr>
			<td>${student.studentId}</td>
			<td>${student.firstname}</td>
			<td>${student.lastname}</td>
			<td>${student.yearLevel}</td>
		</tr>
	</c:forEach>
</table>

</body>
</html>