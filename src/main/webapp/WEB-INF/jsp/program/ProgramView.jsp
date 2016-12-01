<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border="2">
		<tr>
			<th>Department</th>
			<th>Name</th>
			<th>Operation</th>
		</tr>
		<tr>

			<td>${prog.department.name}</td>
			<td>${prog.name}</td>
			<td><c:forEach var="eachBlock" items="${prog.blocks}">
					<table border="2">
					<tr>
						<td><c:out value="${eachBlock.name}" /></td>
						<td><c:out value="${eachBlock.description}" /></td>
						<td><c:out value="${eachBlock.requiredUnits}" /></td>
						<%-- <td><c:out value="${eachBlock.courses.code}" /></td>
						
						 --%><td>
						 
						 <c:forEach var="c1" items="${eachBlock.courses}">
						 <table border="2">
						 <tr>
						 <td><c:out value="${c1.code}" /></td>
						 <td><c:out value="${c1.name}" /></td>
						 
						 </tr>
						 </table>
						 </c:forEach></td>
						
					</tr>
					</table>
				</c:forEach></td>

		</tr>
	</table>
</body>
</html>